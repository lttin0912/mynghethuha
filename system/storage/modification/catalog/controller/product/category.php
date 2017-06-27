<?php
class ControllerProductCategory extends Controller {
	public function index() {
		$this->load->language('product/category');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = $this->config->get($this->config->get('config_theme') . '_product_limit');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['path'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path . $url)
					);
				}
			}
		} else {
			$category_id = 0;
		}

		$category_info = $this->model_catalog_category->getCategory($category_id);

		if ($category_info) {
			$this->document->setTitle($category_info['meta_title']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

			$data['heading_title'] = $category_info['name'];

			$data['text_refine'] = $this->language->get('text_refine');
			$data['text_empty'] = $this->language->get('text_empty');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_price'] = $this->language->get('text_price');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['text_sort'] = $this->language->get('text_sort');
			$data['text_limit'] = $this->language->get('text_limit');

				$data['text_sale'] = $this->language->get('text_sale');
            	$data['text_new'] = $this->language->get('text_new');

            	$data['button_quickview'] = $this->language->get('button_quickview');
	            $data['tooltip_cart'] = $this->language->get('tooltip_cart');
	            $data['tooltip_wishlist'] = $this->language->get('tooltip_wishlist');
	            $data['tooltip_compare'] = $this->language->get('tooltip_compare');
	            $data['tooltip_quickview'] = $this->language->get('tooltip_quickview');
	            $data['data_btn_cart'] = $this->language->get('data_btn_cart');
	            $data['data_btn_wishlist'] = $this->language->get('data_btn_wishlist');
	            $data['data_btn_compare'] = $this->language->get('data_btn_compare');
	            $data['data_btn_quickview'] = $this->language->get('data_btn_quickview');
			

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['button_list'] = $this->language->get('button_list');
			$data['button_grid'] = $this->language->get('button_grid');

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $category_info['name'],
				'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'])
			);

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get($this->config->get('config_theme') . '_image_category_width'), $this->config->get($this->config->get('config_theme') . '_image_category_height'));
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$data['compare'] = $this->url->link('product/compare');

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['categories'] = array();

			$results = $this->model_catalog_category->getCategories($category_id);

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);

				$data['categories'][] = array(
					'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $result['category_id'] . $url
				);
			}

			$data['products'] = array();

			$filter_data = array(
				'filter_category_id' => $category_id,
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);

			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				// Product Rotator /
                $product_rotator_status = (int) $this->config->get('ocproductrotator_status');
                if($product_rotator_status == 1) {
                    $this->load->model('catalog/ocproductrotator');
                    $this->load->model('tool/image');

                    $product_id = $result['product_id'];
                    $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);

                    if($product_rotator_image) {
                        $rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height')); 
                    } else {
                        $rotator_image = false;
                    } 
                } else {
                    $rotator_image = false;    
                }
                // End Product Rotator /
                
                // Get new product /
                $this->load->model('catalog/product');

                $data['new_products'] = array();

                $filter_data = array(
                    'sort'  => 'p.date_added',
                    'order' => 'DESC',
                    'start' => 0,
                    'limit' => 10
                );

                $new_results = $this->model_catalog_product->getProducts($filter_data);
                // End /
                $is_new = false;
                if ($new_results) {
                    foreach($new_results as $new_r) {
                        if($result['product_id'] == $new_r['product_id']) {
                            $is_new = true;
                        }
                    }
                }

                if ((float)$result['special']) {
                    $price2 = $this->tax->calculate($result['price'],$result['tax_class_id'], $this->config->get('config_tax'));
                    $special2 = $this->tax->calculate($result['special'],$result['tax_class_id'], $this->config->get('config_tax'));
                } else {
                    $price2 = false;
                    $special2 = false;
                }

                //adding text stock
                $this->load->language('product/product');
 
                if ($result['quantity'] <= 0) {
                    $result['stock'] = $result['stock_status'];
                    if($result['stock'] == 'Out Of Stock') {
                        $result['stock_color'] = "#8b0707";
                    } elseif ($result['stock'] == 'Pre-Order') {
                        $result['stock_color'] = "#ff9900";
                    } elseif ($result['stock'] == '2-3 Days') {
                        $result['stock_color'] = "#e89f23";
                    } elseif ($result['stock'] == 'Available Soon') {
                        $result['stock_color'] = "#fb5323";
                    } elseif ($result['stock'] == 'In Stock') {
                        $result['stock_color'] = "#c5cc1d";
                    } else {
                        $result['stock_color'] = "#ff0000";
                    }
     
                } elseif ($this->config->get('config_stock_display')) {
                    $result['stock'] = $result['quantity'];
                    $result['stock_color'] = "#66aa00";
                } else {
                    $result['stock'] = $this->language->get('text_instock');
 
                    $result['stock_color'] = "#66aa00";
                }
                //end adding text stock

                $data['text_sale'] = $this->language->get('text_sale');
                $data['text_new'] = $this->language->get('text_new');


				// Product Rotator /
				$product_rotator_status = (int) $this->config->get('ocproductrotator_status');
				if($product_rotator_status == 1) {
					$this->load->model('catalog/ocproductrotator');
					$this->load->model('tool/image');

					$product_id = $result['product_id'];
					$product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);

					if($product_rotator_image) {
						$rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height')); 
					} else {
						$rotator_image = false;
					} 
				} else {
					$rotator_image = false;    
				}
				// End Product Rotator /
				// Get new product /
				$this->load->model('catalog/product');

				$data['new_products'] = array();

				$filter_data = array(
					'sort'  => 'p.date_added',
					'order' => 'DESC',
					'start' => 0,
					'limit' => 10
				);

				$new_results = $this->model_catalog_product->getProducts($filter_data);
				// End /
				$is_new = false;
					if ($new_results) { 
						foreach($new_results as $new_r) {
							if($result['product_id'] == $new_r['product_id']) {
								$is_new = true;
							}
						}
					}
      			//adding text stock
				$this->load->language('product/product');

				if ($result['quantity'] <= 0) {
	                $result['stock'] = $result['stock_status'];
	                if($result['stock'] == 'Out Of Stock') {
	                    $result['stock_color'] = "#8b0707";
	                } elseif ($result['stock'] == 'Pre-Order') {
	                    $result['stock_color'] = "#ff9900";
	                } elseif ($result['stock'] == '2-3 Days') {
	                    $result['stock_color'] = "#e89f23";
	                } elseif ($result['stock'] == 'Available Soon') {
	                    $result['stock_color'] = "#fb5323";
	                } elseif ($result['stock'] == 'In Stock') {
	                    $result['stock_color'] = "#c5cc1d";
	                } else {
	                    $result['stock_color'] = "#ff0000";
	                }
	 
	            } elseif ($this->config->get('config_stock_display')) {
	                $result['stock'] = $result['quantity'];
	                $result['stock_color'] = "#66aa00";
	            } else {
	                $result['stock'] = $this->language->get('text_instock');

	                $result['stock_color'] = "#66aa00";
	            }
		        //end adding text stock
			
				$data['products'][] = array(

					'quantity' => $result['quantity'],
	                'stock' => $result['stock'],
	                'stock_color' => $result['stock_color'],
	                'is_new'        => $is_new,
                    'rotator_image' => $rotator_image,
			
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'is_new'        => $is_new,
                    'rotator_image' => $rotator_image,
                    'quantity' => $result['quantity'],
	                'stock' => $result['stock'],
	                'stock_color' => $result['stock_color'],
                    'price2'     => $price2,
                    'special2'     => $special2,
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=p.sort_order&order=ASC' . $url
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=pd.name&order=ASC' . $url
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=pd.name&order=DESC' . $url
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=p.price&order=ASC' . $url
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=p.price&order=DESC' . $url
			);

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=rating&order=DESC' . $url
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=rating&order=ASC' . $url
				);
			}

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=p.model&order=ASC' . $url
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . '&sort=p.model&order=DESC' . $url
			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get($this->config->get('config_theme') . '_product_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->config->get('config_url') . 'index.php?route=product/category&path=' . $category_id . $url . '&limit=' . $value
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->config->get('config_url') . 'index.php?route=extension/module/oclayerednavigation/category&path=' . $category_id . $url . '&page={page}';

			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], true), 'canonical');
			} elseif ($page == 2) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], true), 'prev');
			} else {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page - 1), true), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1), true), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			
				/* Edit for Layered Navigation Ajax Module by OCMod */
				$module_status = $this->config->get('oclayerednavigation_status');
				if($module_status) {
					$data['oclayerednavigation_loader_img'] = $this->config->get('config_url') . 'image/' . $this->config->get('oclayerednavigation_loader_img');
                    $this->response->setOutput($this->load->view('extension/module/oclayerednavigation/occategory.tpl', $data));
				} else {
                    $this->response->setOutput($this->load->view('product/category', $data));
                }
			
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/category', $url)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}
}