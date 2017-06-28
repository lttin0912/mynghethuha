<?php 
class ModelExtensionModuleFacebookpageplugin extends Model {

	public function getSetting($code, $store_id = 0) {
	    $this->load->model('setting/setting');
		return $this->model_setting_setting->getSetting($code,$store_id);
	}
  
  	public function editSetting($code, $data, $store_id = 0) {
	    $this->load->model('setting/setting');
		$this->model_setting_setting->editSetting($code,$data,$store_id);
	}
	// Install function, called from the controller
  	public function install() {
  	} 
  // Unstall function, called from the controller
  	public function uninstall() {
	
  	}
	
  }