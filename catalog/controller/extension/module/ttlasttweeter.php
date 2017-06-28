<?php
class ControllerExtensionModuleTtlasttweeter extends Controller {
	public function index() {
		$this->language->load('extension/module/ttlasttweeter');
		$data['heading_title'] = $this->language->get('heading_title');

		$data['ttlasttweeter_id'] = $this->config->get('ttlasttweeter_id');
		$data['ttlasttweeter_width'] = $this->config->get('ttlasttweeter_width');
		$data['ttlasttweeter_height'] = $this->config->get('ttlasttweeter_height');

		return $this->load->view('extension/module/ttlasttweeter.tpl',$data);
	}
}