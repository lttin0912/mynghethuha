<?php
class ControllerCommonFooter extends Controller {
	public function index() {

		$data['name'] = $this->config->get('config_name');

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}
		$data['base'] = $server;
		$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		$data['home'] = $this->url->link('common/home');

		$this->load->language('common/footer');
;
				$data['block7'] = $this->load->controller('common/block7');
				$data['block8'] = $this->load->controller('common/block8');
				$data['block6'] = $this->load->controller('common/block6');
				$data['block4'] = $this->load->controller('common/block4');
				$data['block5'] = $this->load->controller('common/block5');
			

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');

				$data['text_address'] = $this->language->get('text_address');
				$data['text_telephone'] = $this->language->get('text_telephone');
				$data['text_fax'] = $this->language->get('text_fax');
				$data['text_email'] = $this->language->get('text_email');
				$data['text_login'] = $this->language->get('text_login');
				$data['text_checkout'] = $this->language->get('text_checkout');
				$data['text_voucher'] = $this->language->get('text_voucher');
				$data['text_blog'] = $this->language->get('text_blog');
				$data['text_search'] = $this->language->get('text_search');
				$data['text_viewcart'] = $this->language->get('text_viewcart');
				$data['text_reward'] = $this->language->get('text_reward');
				$data['open_time'] = $this->language->get('open_time');
				$data['text_open'] = $this->language->get('text_open');
				$data['address'] = $this->config->get('config_address');
				$data['telephone'] = $this->config->get('config_telephone');
			    $data['email'] = $this->config->get('config_email');
			    $data['fax'] = $this->config->get('config_fax');
			    $data['open'] = nl2br($this->config->get('config_open'));
			
		$data['f_desc'] = $this->language->get('f_desc');
		$data['text_tweets'] = $this->language->get('text_tweets');
		$data['text_instagram'] = $this->language->get('text_instagram');

		$this->load->model('catalog/information');

				$data['blog'] = array(
					'title' => $this->config->get('ocblog_meta_title'),
					'href'  => $this->url->link('blog/blog')
				);
			

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])

				,
					'short-des-footer' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 70),
			
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', true);
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', true);
		$data['affiliate'] = $this->url->link('affiliate/account', '', true);
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);

				$data['login'] = $this->url->link('account/login', '', 'SSL');
				$data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
				$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
				$data['blog'] = $this->url->link('blog/blog', '', 'SSL');
				$data['search'] = $this->url->link('product/search');
				$data['viewcart'] = $this->url->link('checkout/cart', '', 'SSL');
				$data['reward'] = $this->url->link('account/reward', '', 'SSL');
			

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		return $this->load->view('common/footer', $data);
	}
}
