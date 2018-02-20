<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		
		$data['current_language_id'] = $this->config->get('config_language_id');
		$data['current_language'] = $this->config->get('config_language');
	
		$this->load->language('common/home');
		$data['text_a_place_where'] = $this->language->get('text_a_place_where');
		$data['text_everything_is_free_except_time'] = $this->language->get('text_everything_is_free_except_time');
		$data['text_rates'] = $this->language->get('text_rates');
		$data['text_nik'] = $this->language->get('text_nik');
		$data['text_per_hour'] = $this->language->get('text_per_hour');
		$data['text_discounst_and_membership'] = $this->language->get('text_discounst_and_membership');
		$data['text_details'] = $this->language->get('text_details');
		$data['text_hire'] = $this->language->get('text_hire');
		$data['text_we_are_located_in'] = $this->language->get('text_we_are_located_in');
		$data['text_time_club'] = $this->language->get('text_time_club');
		$data['text_coworcing'] = $this->language->get('text_coworcing');
		$data['text_creative_space'] = $this->language->get('text_creative_space');
		$data['text_co_working_mode'] = $this->language->get('text_co_working_mode');
		$data['text_child_mode'] = $this->language->get('text_child_mode');
		$data['text_join_us_on'] = $this->language->get('text_join_us_on');
		$data['text_whichever'] = $this->language->get('text_whichever');
		$data['text_tea'] = $this->language->get('text_tea');
		$data['text_snacks'] = $this->language->get('text_snacks');
		$data['text_coffee'] = $this->language->get('text_coffee');
		$data['text_lemonade'] = $this->language->get('text_lemonade');
		$data['text_printer'] = $this->language->get('text_printer');
		$data['text_chargers'] = $this->language->get('text_chargers');
		$data['text_scanner'] = $this->language->get('text_scanner');
		$data['text_wifi'] = $this->language->get('text_wifi');
		$data['text_board_games'] = $this->language->get('text_board_games');
		$data['text_books'] = $this->language->get('text_books');
		$data['text_projector'] = $this->language->get('text_projector');
		$data['text_playstation'] = $this->language->get('text_playstation');
		
	
	
		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
