<?php
class ControllerModuleGallery extends Controller {
	public function index() {
		static $module = 0;


        $this->document->setTitle($this->config->get('config_meta_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));
        $this->document->setKeywords($this->config->get('config_meta_keyword'));

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$data['banners'] = array();

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');


		$results = $this->model_design_banner->getBanner(11);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], 1920, 500)
				);
			}
		}

		$data['module'] = $module++;
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/gallery.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/module/gallery.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/module/gallery.tpl', $data));
        }
	}
}
