<?php
class ControllerCheckoutStock extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));
		$this->load->model('checkout/stock');

		$stock = $this->model_checkout_stock->getProducts($this->session->data['customer_id']);
		// var_dump($stock);

		foreach ($stock as $product) {
			// Display prices
			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$unit_price = $this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax'));
				
				$price = $this->currency->format($unit_price, $this->session->data['currency']);
			} else {
				$price = false;
			}

			$this->load->model('tool/image');
			$this->load->model('tool/upload');

			if ($product['image']) {
				$image = $this->model_tool_image->resize($product['image'], $this->config->get('theme_' . $this->config->get('config_theme') . '_image_cart_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_cart_height'));
			} else {
				$image = '';
			}

			$stock_quantite = $this->model_checkout_stock->getStock($this->session->data['customer_id'], $product['product_id']);

			$data['products'][] = array(
				'product_id'   => $product['product_id'],
				'thumb'     => $image,
				'name'      => $product['name'],
				'stock_client'  => $stock_quantite['stock_client'],
				'stock_reference'  => $stock_quantite['stock_reference'],
				'stock'     => $product['quantity'],
				'price'     => $price,
				'href'      => $this->url->link('product/product', 'product_id=' . $product['product_id'])
			);

		}

		$data['update'] = $this->url->link('checkout/stock/update', '', true);
		$data['continue'] = $this->url->link('common/home');
		$data['checkout'] = $this->url->link('checkout/checkout/stock', '', true);

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		// var_dump($data['action']);
		$this->response->setOutput($this->load->view('checkout/stock', $data));
	}

	public function migrate(){
		$this->load->model('checkout/stock');

		$this->model_checkout_stock->migration();

		$this->response->redirect($this->url->link('checkout/stock'));
		
	}

	public function update(){
		$this->load->model('checkout/stock');

		$json = array();

		// Update
		if (!empty($this->request->post['quantity'])) {
			foreach ($this->request->post['quantity'] as $product_id => $quantity) {
				$this->model_checkout_stock->updateStockClient($this->session->data['customer_id'], $product_id, $quantity);
			}
			$this->response->redirect($this->url->link('checkout/stock'));
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function command(){
		$this->load->model('checkout/stock');

		$json = array();
		// var_dump($this->request->post);

		// Update
		if (!empty($this->request->post['quantity'])) {
			foreach ($this->request->post['quantity'] as $product_id => $quantity) {
				$this->model_checkout_stock->updateStock($this->session->data['customer_id'], $product_id, $quantity);
			}
			// $this->response->redirect($this->url->link('checkout/stock'));
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
	
}