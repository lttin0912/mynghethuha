<?php
class ControllerExtensionModuleFacebookpageplugin extends Controller {
	// Main Variables
	private $moduleName;
	private $moduleNameSmall;
	private $moduleData_module = 'facebookpageplugin_module';
	private $moduleModel;
	private $modulePath;

	public function __construct($registry) {
	 	parent::__construct($registry);

	 	$this->config->load('isenselabs/facebookpageplugin');

	 	$this->moduleName = $this->config->get('facebookpageplugin_name');
	 	$this->moduleNameSmall = $this->config->get('facebookpageplugin_name');
	 	$this->modulePath = $this->config->get('facebookpageplugin_path');
	 	$this->moduleModel = $this->config->get('facebookpageplugin_model');

	 }
	
    public function index() { 
		//Load model
        $this->load->model($this->modulePath);
		$data['url'] = $this->config->get('facebookpageplugin_url');	
		
		//Language variables assigning
		$languageVariables= array('heading_title');

        foreach ($languageVariables as $variable) {
            $data[$variable] = $this->language->get($variable);
        }
		
		$moduleSetting = $this->{$this->moduleModel}->getSetting($this->moduleNameSmall, $this->config->get('config_store_id'));
        $data['moduleData'] = isset($moduleSetting[$this->moduleNameSmall]) ? $moduleSetting[$this->moduleNameSmall] : array();
		
		if(!isset($data['moduleData']['PanelName'][$this->config->get('config_language')])){
			$data['PanelName'] = $data['heading_title'];
		} else {
			$data['PanelName'] = $data['moduleData']['PanelName'][$this->config->get('config_language')];
		}
		
		
		$data['width'] = isset($data['moduleData']['Width']) ? $data['moduleData']['Width'] : '100';
		$data['height'] = isset($data['moduleData']['Height']) ? $data['moduleData']['Height'] : '100';
		$data['Hide_cover'] = $data['moduleData']['hide_cover'];
		$data['Show_faces'] = $data['moduleData']['show_faces'];
		$data['Show_posts'] = $data['moduleData']['show_posts'];
		$data['Small_header'] = $data['moduleData']['small_header'];
	
		if(version_compare(VERSION, '2.2.0.0', "<")) {
		    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/'.$this->modulePath.'.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/'.$this->modulePath.'.tpl', $data);
			} else {
				return $this->load->view('default/template/'.$this->modulePath.'.tpl', $data);
			}
		} else {
		       return $this->load->view($this->modulePath, $data);
		}

	
}
	
}
?>