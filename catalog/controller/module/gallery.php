<?php
class ControllerModuleGallery extends Controller {
	public function index($setting) {
    
    $this->document->addStyle('/catalog/view/javascript/gallery/blueimp-gallery.min.css');
    $this->document->addStyle('/catalog/view/javascript/gallery/bootstrap-image-gallery.css');
    $this->document->addScript('/catalog/view/javascript/gallery/jquery.blueimp-gallery.min.js');
    $this->document->addScript('/catalog/view/javascript/gallery/bootstrap-image-gallery.js');
		
    static $module = 0;
    
		$this->load->model('design/banner');
    $this->load->model('tool/image');
    
		$data['images'] = array();
    
		if(!isset($setting['filter_banner_id'])) $setting['filter_banner_id'] =9;
		$results = $this->model_design_banner->getBanner($setting['filter_banner_id']);
    
		foreach ($results as $result) {
			
    			if (is_file(DIR_IMAGE . $result['image'])) {
    				$data['images'][] = array(
    					'title' => $result['title'],
    					'link'  => $result['link'],
    					'thumb' => $this->model_tool_image->resize($result['image'], 150, 150),
						'image' => (true ? $this->model_tool_image->resize($result['image'], 800, 800) : $this->realname($result['image']))
    				);
    			}
		}
    
    if (isset($setting['module_description'][$this->config->get('config_language_id')])) {
			$data['heading_title'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
    }
    
		$data['thumb_title'] = 'Gallery';//$setting['thumb_title'];    
		$data['module'] = $module++;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/module/gallery.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/module/gallery.tpl', $data);
		} else {
			return $this->load->view('module/gallery.tpl', $data);
		}
	}
  
  private function realname($filename) {
    if ($this->request->server['HTTPS']) {
			return $this->config->get('config_ssl') . 'image/' . $filename;
		} else {
			return $this->config->get('config_url') . 'image/' . $filename;
		}
  }
  
}