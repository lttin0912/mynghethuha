<?php
class ControllerExtensionModuleFacebookpageplugin extends Controller {
	// Main Variables
	private $moduleName;
	private $modulePath;
	private $moduleNameSmall;
	private $moduleData_module = 'facebookpageplugin_module';
	private $moduleModel;
	private $extensionLink;
	private $version;
	private $error = array();

	 public function __construct($registry) {
	 	parent::__construct($registry);

	 	$this->config->load('isenselabs/facebookpageplugin');

	 	$this->moduleName = $this->config->get('facebookpageplugin_name');
	 	$this->moduleNameSmall = $this->config->get('facebookpageplugin_name');
	 	$this->modulePath = $this->config->get('facebookpageplugin_path');

	 	$this->version = $this->config->get('facebookpageplugin_version');
	 	
	 	$this->moduleModel = $this->config->get('facebookpageplugin_model');

	 	$this->extensionLink = $this->url->link($this->config->get('facebookpageplugin_extensionLink'), 'token=' . $this->session->data['token'].$this->config->get('facebookpageplugin_extensionLink_type'), 'SSL');



	 }
	
    public function index() { 
		// Main Variables
		$data['moduleName'] = $this->moduleName;
		$data['moduleNameSmall'] = $this->moduleNameSmall;
		$data['moduleData_module'] = $this->moduleData_module;
		$data['modulePath'] = $this->modulePath;
		$data['moduleModel'] = $this->moduleModel;
	 	// Load language files
        $this->load->language($this->modulePath);
		// Load models
        $this->load->model($this->modulePath); //load the model file
        $this->load->model('setting/store'); // load the store setting model
        $this->load->model('localisation/language');//load the language model for mutilingual functionality
        $this->load->model('design/layout'); //load the design layouts models
		
 		// Load script & stylesheets
        $this->document->addStyle('view/stylesheet/'.$this->moduleNameSmall.'/'.$this->moduleNameSmall.'.css');//add the stylesheet 
        // Set main title
		$this->document->setTitle($this->language->get('heading_title'));
		
		 $catalogURL = $this->getCatalogURL();//assign the  store url value to the catalogURL varibale
		 
		//Check for set store_id
        if(!isset($this->request->get['store_id'])) {
           $this->request->get['store_id'] = 0; 
        }
		// Get store info
        $store = $this->getCurrentStore($this->request->get['store_id']);
		
		// Save module settings
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) { 	
            
        	$this->{$this->moduleModel}->editSetting($this->moduleNameSmall, $this->request->post, $this->request->post['store_id']);// Parse all the coming data to Setting Model to save it in database.
            $this->session->data['success'] = $this->language->get('text_success');//to display the success text on data save
			
            $this->response->redirect($this->url->link($this->modulePath, 'store_id='.$this->request->post['store_id'] . '&token=' . $this->session->data['token'], 'SSL')); // redirect to the module 
        }
		
		// Get success message
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		// Get error/warning message
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		if (isset($this->error['error_facebook_url'])) {
			$data['error_facebook_url'] = $this->error['error_facebook_url'];
		} else {
			$data['error_facebook_url'] = '';
		}
		
		// Breadcrumb data
        $data['breadcrumbs']   = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL'),
        );
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->extensionLink,
        );
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link($this->modulePath, 'token=' . $this->session->data['token'], 'SSL'),
        );
		
		//language variables assigning
        $languageVariables = array(
		    // Main
			'heading_title',
			'error_permission',
			'text_success',
			'text_enabled',
			'text_disabled',
			'button_cancel',
			'save_changes',
			'text_default',
			'text_module',
			// Control panel
            'entry_code',
			'entry_code_help',
			// Module depending
			'text_facebookpageplugin_url',
			'text_facebookpageplugin_url_help',
			'text_module_dimensions',
			'text_module_dimensions_help',
			'text_pixels',
			'text_panel_name',
			'text_panel_name_help',
			'text_hide_cover_photo',
			'text_hide_cover_photo_help',
			'text_show_fiends_faces',
			'text_show_fiends_faces_help',
			'text_show_posts',
			'text_show_posts_help',
			'text_use_small_header',
			'text_use_small_header_help',
			'custom_css',
			'custom_css_help',
			'custom_css_placeholder'
        );
       
        foreach ($languageVariables as $languageVariable) {
            $data[$languageVariable] = $this->language->get($languageVariable);
        }
 		$data['heading_title'] = $data['heading_title'].' '.$this->version;
		// Data for the template files
        $data['stores'] = array_merge(array(0 => array('store_id' => '0', 'name' => $this->config->get('config_name') . ' (' . $data['text_default'].')', 'url' => HTTP_SERVER, 'ssl' => HTTPS_SERVER)), $this->model_setting_store->getStores());
        $data['languages']              = $this->model_localisation_language->getLanguages();
        //2.2.0.0 language flag image fix
		foreach ($data['languages'] as $key => $value) {
			if(version_compare(VERSION, '2.2.0.0', "<")) {
				$data['languages'][$key]['flag_url'] = 'view/image/flags/'.$data['languages'][$key]['image'];
			} else {
				$data['languages'][$key]['flag_url'] = 'language/'.$data['languages'][$key]['code'].'/'.$data['languages'][$key]['code'].'.png"';
			}
		}
        $data['store']                  = $store;
        $data['token']                  = $this->session->data['token'];
        $data['action']                 = $this->url->link($this->modulePath, 'token=' . $this->session->data['token'], 'SSL');//when the save button is pressed the form is submited
        $data['cancel']                 = $this->extensionLink;
        $data['moduleSettings']			= $this->{$this->moduleModel}->getSetting($this->moduleNameSmall, $store['store_id']);
		
		$data['moduleData']				= isset($data['moduleSettings'][$this->moduleNameSmall]) ? $data['moduleSettings'][$this->moduleNameSmall] : array ();
		$data['catalog_url']			= $catalogURL;//the store url is saved
		
	
		$data['facebookpageplugin_modules'] = array();
		if (isset($data['moduleSettings']['facebookpageplugin_module'])) {
			foreach ($data['moduleSettings']['facebookpageplugin_module'] as $key => $module) {
				$data['facebookpageplugin_modules'][] = array(
					'key'    => $key,
					'limit'  => $module['limit'],
					'width'  => $module['width'],
					'height' => $module['height'],
					'hide_cover' => $module['hide_cover'],
					'show_faces' => $module['show_faces'],
					'show_posts' => $module['show_posts'],
					'small_header' => $module['small_header']
				);
			}
		}
		if($this->config->has('facebookpageplugin_url'))
			$data['facebookpageplugin_url'] = $this->config->get('facebookpageplugin_url');
		else
			$data['facebookpageplugin_url'] = '';
		
		// Get the the main OpenCart admin styles & design	
		$data['header']					= $this->load->controller('common/header');
		$data['column_left']			= $this->load->controller('common/column_left');
		$data['footer']					= $this->load->controller('common/footer');
		
		// Outputs the data from the function
		$this->response->setOutput($this->load->view($this->modulePath.'.tpl', $data));
    }
	
	// Check for permissions
	protected function validateForm() {
		if (!$this->user->hasPermission('modify', $this->modulePath)) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}

	// Gets the front-end URL
    private function getCatalogURL() {
        if (isset($_SERVER['HTTPS']) && (($_SERVER['HTTPS'] == 'on') || ($_SERVER['HTTPS'] == '1'))) {
            $storeURL = HTTPS_CATALOG;
        } else {
            $storeURL = HTTP_CATALOG;
        } 
        return $storeURL;
    }
   
    // Get the data about a given store
    private function getCurrentStore($store_id) {    
        if($store_id && $store_id != 0) {
            $store = $this->model_setting_store->getStore($store_id);
        } else {
            $store['store_id'] = 0;
            $store['name'] = $this->config->get('config_name');
            $store['url'] = $this->getCatalogURL(); 
        }
        return $store;
    }
	
    // Module installation
    public function install() {
	    $this->load->model($this->modulePath);
	    $this->{$this->moduleModel}->install();
    }
    
	// Module uninstallation
    public function uninstall() {
    	$this->load->model('setting/setting');
		
		$this->load->model('setting/store');
		$this->model_setting_setting->deleteSetting($this->moduleData_module,0);
		$stores=$this->model_setting_store->getStores();
		foreach ($stores as $store) {
			$this->model_setting_setting->deleteSetting($this->moduleData_module, $store['store_id']);
		}
		
        $this->load->model($this->modulePath);
        $this->{$this->moduleModel}->uninstall();
    }
}