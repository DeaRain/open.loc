<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/header');
		$this->load->language('common/footer');
        $this->load->language('common/search');

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
        $data['text_search'] = $this->language->get('text_search');
        $data['text_copyRight'] = $this->language->get('text_copyRight');
        $data['text_menu_special'] = $this->language->get('menu_special');

        $data['text_call'] = $this->language->get('text_call');
		$data['text_name'] = $this->language->get('text_name');
		$data['text_phone'] = $this->language->get('text_phone');
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_phone'] = $this->language->get('entry_phone');
		$data['button_continue'] = $this->language->get('button_continue');
		$data['text_loading'] = $this->language->get('text_loading');

        $data['telephone'] = $this->config->get('config_telephone');


                
                    $data['text_gallery'] = $this->language->get('text_gallery');
                    $data['gallery'] = $this->url->link('information/gallery', '', 'SSL');
                
            
		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');

		$this->language->load('module/news');
		$data['blog_url'] = $this->url->link('news/ncategory');
		$data['blog_name'] = $this->language->get('text_blogpage');
		
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));



        $data['user_name'] = $this->customer->getFirstName();
        $data['user_phone'] = $this->customer->getTelephone();

        $data['search'] = $this->load->controller('common/search');
        $data['language'] = $this->load->controller('common/language');
        $data['lt_newsletter'] = $this->load->controller('module/lt_newsletter');

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

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}
