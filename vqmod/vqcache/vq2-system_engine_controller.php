<?php 
 	/**
	* @property string $id
	* @property string $template
	* @property array $children
	* @property array $data
	* @property string $output
	* @property Loader $load
	* @property User $user
	* @property Url $url
	* @property Log $log
	* @property Request $request
	* @property Response $response
	* @property Cache $cache
	* @property Session $session
	* @property Language $language
	* @property Document $document
	* @property Customer $customer
	* @property Affiliate $affiliate
	* @property Currency $currency
	* @property Tax $tax
	* @property Weight $weight
	* @property Length $length
	* @property Cart $cart
	* @property Encryption $encryption
	* @property Openbay $openbay
	* @property Event $event
	* @property ModelAccountActivity $model_account_activity
	* @property ModelAccountAddress $model_account_address
	* @property ModelAccountApi $model_account_api
	* @property ModelAccountCustomField $model_account_custom_field
	* @property ModelAccountCustomer $model_account_customer
	* @property ModelAccountCustomerGroup $model_account_customer_group
	* @property ModelAccountDownload $model_account_download
	* @property ModelAccountOrder $model_account_order
	* @property ModelAccountQuicksignup $model_account_quicksignup
	* @property ModelAccountRecurring $model_account_recurring
	* @property ModelAccountReturn $model_account_return
	* @property ModelAccountReward $model_account_reward
	* @property ModelAccountTransaction $model_account_transaction
	* @property ModelAccountWishlist $model_account_wishlist
	* @property ModelAffiliateActivity $model_affiliate_activity
	* @property ModelAffiliateAffiliate $model_affiliate_affiliate
	* @property ModelAffiliateTransaction $model_affiliate_transaction
	* @property ModelCatalogCategory $model_catalog_category
	* @property ModelCatalogEducationEvent $model_catalog_education_event
	* @property ModelCatalogInformation $model_catalog_information
	* @property ModelCatalogManufacturer $model_catalog_manufacturer
	* @property ModelCatalogNcategory $model_catalog_ncategory
	* @property ModelCatalogNcomments $model_catalog_ncomments
	* @property ModelCatalogNews $model_catalog_news
	* @property ModelCatalogProduct $model_catalog_product
	* @property ModelCatalogReview $model_catalog_review
	* @property ModelCheckoutMarketing $model_checkout_marketing
	* @property ModelCheckoutOrder $model_checkout_order
	* @property ModelCheckoutRecurring $model_checkout_recurring
	* @property ModelDesignBanner $model_design_banner
	* @property ModelDesignGallery $model_design_gallery
	* @property ModelDesignLayout $model_design_layout
	* @property ModelExtensionExtension $model_extension_extension
	* @property ModelExtensionModule $model_extension_module
	* @property ModelFeedGoogleBase $model_feed_google_base
	* @property ModelFraudFraudlabspro $model_fraud_fraudlabspro
	* @property ModelFraudIp $model_fraud_ip
	* @property ModelFraudMaxmind $model_fraud_maxmind
	* @property ModelLocalisationCountry $model_localisation_country
	* @property ModelLocalisationCurrency $model_localisation_currency
	* @property ModelLocalisationLanguage $model_localisation_language
	* @property ModelLocalisationLocation $model_localisation_location
	* @property ModelLocalisationReturnReason $model_localisation_return_reason
	* @property ModelLocalisationZone $model_localisation_zone
	* @property ModelModuleLtNewsletter $model_module_lt_newsletter
	* @property ModelModuleMainLanguageBanner $model_module_main_language_banner
	* @property ModelModuleMegaFilter $model_module_mega_filter
	* @property ModelModulePpLogin $model_module_pp_login
	* @property ModelModuleRevslideropencart $model_module_revslideropencart
	* @property ModelModuleSeoPage $model_module_seo_page
	* @property ModelOpenbayAmazonListing $model_openbay_amazon_listing
	* @property ModelOpenbayAmazonOrder $model_openbay_amazon_order
	* @property ModelOpenbayAmazonProduct $model_openbay_amazon_product
	* @property ModelOpenbayAmazonusListing $model_openbay_amazonus_listing
	* @property ModelOpenbayAmazonusOrder $model_openbay_amazonus_order
	* @property ModelOpenbayAmazonusProduct $model_openbay_amazonus_product
	* @property ModelOpenbayEbayOpenbay $model_openbay_ebay_openbay
	* @property ModelOpenbayEbayOrder $model_openbay_ebay_order
	* @property ModelOpenbayEbayProduct $model_openbay_ebay_product
	* @property ModelOpenbayEtsyOrder $model_openbay_etsy_order
	* @property ModelOpenbayEtsyProduct $model_openbay_etsy_product
	* @property ModelPaymentAmazonLoginPay $model_payment_amazon_login_pay
	* @property ModelPaymentAuthorizenetAim $model_payment_authorizenet_aim
	* @property ModelPaymentAuthorizenetSim $model_payment_authorizenet_sim
	* @property ModelPaymentBankTransfer $model_payment_bank_transfer
	* @property ModelPaymentBluepayHosted $model_payment_bluepay_hosted
	* @property ModelPaymentBluepayRedirect $model_payment_bluepay_redirect
	* @property ModelPaymentCheque $model_payment_cheque
	* @property ModelPaymentCod $model_payment_cod
	* @property ModelPaymentCoda $model_payment_coda
	* @property ModelPaymentCodb $model_payment_codb
	* @property ModelPaymentCodc $model_payment_codc
	* @property ModelPaymentCodd $model_payment_codd
	* @property ModelPaymentCode $model_payment_code
	* @property ModelPaymentFirstdata $model_payment_firstdata
	* @property ModelPaymentFirstdataRemote $model_payment_firstdata_remote
	* @property ModelPaymentFreeCheckout $model_payment_free_checkout
	* @property ModelPaymentG2apay $model_payment_g2apay
	* @property ModelPaymentGlobalpay $model_payment_globalpay
	* @property ModelPaymentGlobalpayRemote $model_payment_globalpay_remote
	* @property ModelPaymentKlarnaAccount $model_payment_klarna_account
	* @property ModelPaymentKlarnaInvoice $model_payment_klarna_invoice
	* @property ModelPaymentLiqpay $model_payment_liqpay
	* @property ModelPaymentNochex $model_payment_nochex
	* @property ModelPaymentPaymate $model_payment_paymate
	* @property ModelPaymentPaypoint $model_payment_paypoint
	* @property ModelPaymentPayza $model_payment_payza
	* @property ModelPaymentPerpetualPayments $model_payment_perpetual_payments
	* @property ModelPaymentPpExpress $model_payment_pp_express
	* @property ModelPaymentPpPayflow $model_payment_pp_payflow
	* @property ModelPaymentPpPayflowIframe $model_payment_pp_payflow_iframe
	* @property ModelPaymentPpPro $model_payment_pp_pro
	* @property ModelPaymentPpProIframe $model_payment_pp_pro_iframe
	* @property ModelPaymentPpStandard $model_payment_pp_standard
	* @property ModelPaymentQiwiRest $model_payment_qiwi_rest
	* @property ModelPaymentRealex $model_payment_realex
	* @property ModelPaymentRealexRemote $model_payment_realex_remote
	* @property ModelPaymentSagepayDirect $model_payment_sagepay_direct
	* @property ModelPaymentSagepayServer $model_payment_sagepay_server
	* @property ModelPaymentSagepayUs $model_payment_sagepay_us
	* @property ModelPaymentSberbankTransfer $model_payment_sberbank_transfer
	* @property ModelPaymentSecuretradingPp $model_payment_securetrading_pp
	* @property ModelPaymentSecuretradingWs $model_payment_securetrading_ws
	* @property ModelPaymentSkrill $model_payment_skrill
	* @property ModelPaymentTwocheckout $model_payment_twocheckout
	* @property ModelPaymentWebPaymentSoftware $model_payment_web_payment_software
	* @property ModelPaymentWorldpay $model_payment_worldpay
	* @property ModelSettingApi $model_setting_api
	* @property ModelSettingSetting $model_setting_setting
	* @property ModelSettingStore $model_setting_store
	* @property ModelShippingAuspost $model_shipping_auspost
	* @property ModelShippingByTotal $model_shipping_by_total
	* @property ModelShippingCitylink $model_shipping_citylink
	* @property ModelShippingFedex $model_shipping_fedex
	* @property ModelShippingFlat $model_shipping_flat
	* @property ModelShippingFree $model_shipping_free
	* @property ModelShippingItem $model_shipping_item
	* @property ModelShippingParcelforce48 $model_shipping_parcelforce_48
	* @property ModelShippingPickup $model_shipping_pickup
	* @property ModelShippingPickupa $model_shipping_pickupa
	* @property ModelShippingPickupb $model_shipping_pickupb
	* @property ModelShippingPickupc $model_shipping_pickupc
	* @property ModelShippingPickupd $model_shipping_pickupd
	* @property ModelShippingPickupe $model_shipping_pickupe
	* @property ModelShippingPickupf $model_shipping_pickupf
	* @property ModelShippingRoyalMail $model_shipping_royal_mail
	* @property ModelShippingUps $model_shipping_ups
	* @property ModelShippingUsps $model_shipping_usps
	* @property ModelShippingWeight $model_shipping_weight
	* @property ModelToolImage $model_tool_image
	* @property ModelToolOnline $model_tool_online
	* @property ModelToolSimpleapicustom $model_tool_simpleapicustom
	* @property ModelToolSimpleapimain $model_tool_simpleapimain
	* @property ModelToolSimplecustom $model_tool_simplecustom
	* @property ModelToolSimplegeo $model_tool_simplegeo
	* @property ModelToolUpload $model_tool_upload
	* @property ModelTotalCoupon $model_total_coupon
	* @property ModelTotalCredit $model_total_credit
	* @property ModelTotalHandling $model_total_handling
	* @property ModelTotalKlarnaFee $model_total_klarna_fee
	* @property ModelTotalLowOrderFee $model_total_low_order_fee
	* @property ModelTotalReward $model_total_reward
	* @property ModelTotalShipping $model_total_shipping
	* @property ModelTotalSubTotal $model_total_sub_total
	* @property ModelTotalTax $model_total_tax
	* @property ModelTotalTotal $model_total_total
	* @property ModelTotalVoucher $model_total_voucher
	* @property ModelTotalVoucherTheme $model_total_voucher_theme
	* @property ModelCatalogAttribute $model_catalog_attribute
	* @property ModelCatalogAttributeGroup $model_catalog_attribute_group
	* @property ModelCatalogConsultation $model_catalog_consultation
	* @property ModelCatalogDownload $model_catalog_download
	* @property ModelCatalogFilter $model_catalog_filter
	* @property ModelCatalogNauthor $model_catalog_nauthor
	* @property ModelCatalogOption $model_catalog_option
	* @property ModelCatalogRecurring $model_catalog_recurring
	* @property ModelCatalogUrlAlias $model_catalog_url_alias
	* @property ModelCommonNewsletter $model_common_newsletter
	* @property ModelCsvprice_proAppCategory $model_csvprice_pro_app_category
	* @property ModelCsvprice_proAppCrontab $model_csvprice_pro_app_crontab
	* @property ModelCsvprice_proAppCustomer $model_csvprice_pro_app_customer
	* @property ModelCsvprice_proAppManufacturer $model_csvprice_pro_app_manufacturer
	* @property ModelCsvprice_proAppOrder $model_csvprice_pro_app_order
	* @property ModelCsvprice_proAppProduct $model_csvprice_pro_app_product
	* @property ModelCsvprice_proAppSetting $model_csvprice_pro_app_setting
	* @property ModelCsvprice_proAppSetup $model_csvprice_pro_app_setup
	* @property ModelCsvprice_proLibFilters $model_csvprice_pro_lib_filters
	* @property ModelCustomerCustomField $model_customer_custom_field
	* @property ModelCustomerCustomer $model_customer_customer
	* @property ModelCustomerCustomerGroup $model_customer_customer_group
	* @property ModelDesignMainBanner $model_design_main_banner
	* @property ModelExtensionEvent $model_extension_event
	* @property ModelExtensionModification $model_extension_modification
	* @property ModelLocalisationGeoZone $model_localisation_geo_zone
	* @property ModelLocalisationLengthClass $model_localisation_length_class
	* @property ModelLocalisationOrderStatus $model_localisation_order_status
	* @property ModelLocalisationReturnAction $model_localisation_return_action
	* @property ModelLocalisationReturnStatus $model_localisation_return_status
	* @property ModelLocalisationStockStatus $model_localisation_stock_status
	* @property ModelLocalisationTaxClass $model_localisation_tax_class
	* @property ModelLocalisationTaxRate $model_localisation_tax_rate
	* @property ModelLocalisationWeightClass $model_localisation_weight_class
	* @property ModelMarketingAffiliate $model_marketing_affiliate
	* @property ModelMarketingCoupon $model_marketing_coupon
	* @property ModelMarketingLtNewsletter $model_marketing_lt_newsletter
	* @property ModelMarketingMarketing $model_marketing_marketing
	* @property ModelModuleDEventManager $model_module_d_event_manager
	* @property ModelModuleDTwigManager $model_module_d_twig_manager
	* @property ModelModuleMetaTagsCreated $model_module_meta_tags_created
	* @property ModelModuleRevslideroutput $model_module_revslideroutput
	* @property ModelModuleSimple $model_module_simple
	* @property ModelModuleSimplecustom $model_module_simplecustom
	* @property ModelModuleWatermark $model_module_watermark
	* @property ModelOcteam_toolsSeoManager $model_octeam_tools_seo_manager
	* @property ModelOpenbayAmazon $model_openbay_amazon
	* @property ModelOpenbayAmazonus $model_openbay_amazonus
	* @property ModelOpenbayEbay $model_openbay_ebay
	* @property ModelOpenbayEbayProfile $model_openbay_ebay_profile
	* @property ModelOpenbayEbayTemplate $model_openbay_ebay_template
	* @property ModelOpenbayEtsy $model_openbay_etsy
	* @property ModelOpenbayOpenbay $model_openbay_openbay
	* @property ModelOpenbayOrder $model_openbay_order
	* @property ModelOpenbayVersion $model_openbay_version
	* @property ModelReportActivity $model_report_activity
	* @property ModelReportAffiliate $model_report_affiliate
	* @property ModelReportCoupon $model_report_coupon
	* @property ModelReportCustomer $model_report_customer
	* @property ModelReportMarketing $model_report_marketing
	* @property ModelReportProduct $model_report_product
	* @property ModelReportReturn $model_report_return
	* @property ModelReportSale $model_report_sale
	* @property ModelSaleOrder $model_sale_order
	* @property ModelSaleRecurring $model_sale_recurring
	* @property ModelSaleReturn $model_sale_return
	* @property ModelSaleVoucher $model_sale_voucher
	* @property ModelSaleVoucherTheme $model_sale_voucher_theme
	* @property ModelToolAlias $model_tool_alias
	* @property ModelToolBackup $model_tool_backup
	* @property ModelToolMetatagsCreate $model_tool_metatags_create
	* @property ModelUserApi $model_user_api
	* @property ModelUserUser $model_user_user
	* @property ModelUserUserGroup $model_user_user_group
	**/
abstract class Controller {
	protected $registry;

	public function __construct($registry) {
		$this->registry = $registry;
				
				if( ! empty( $this->request->get['mfp'] ) ) {
					preg_match( '/path\[([^]]*)\]/', $this->request->get['mfp'], $mf_matches );

					if( ! empty( $mf_matches[1] ) ) {
						if( empty( $this->request->get['mfilterAjax'] ) && ! empty( $this->request->get['path'] ) && $this->request->get['path'] != $mf_matches[1] ) {
							$this->request->get['mfp_org_path'] = $this->request->get['path'];
				
							if( 0 === ( $mf_strpos = strpos( $this->request->get['mfp_org_path'], $mf_matches[1] . '_' ) ) ) {
								$this->request->get['mfp_org_path'] = substr( $this->request->get['mfp_org_path'], $mf_strpos+strlen($mf_matches[1])+1 );
							}
						}
				
						//$this->request->get['path'] = $mf_matches[1];
						$this->request->get['mfp_path'] = $mf_matches[1];

						if( isset( $this->request->get['category_id'] ) || ( isset( $this->request->get['route'] ) && in_array( $this->request->get['route'], array( 'product/search', 'product/special', 'product/manufacturer/info' ) ) ) ) {
							$mf_matches = explode( '_', $mf_matches[1] );
							$this->request->get['category_id'] = end( $mf_matches );
						}
					}
				
					unset( $mf_matches );
				}
			
	}

	public function __get($key) {
		return $this->registry->get($key);
	}

	public function __set($key, $value) {
		$this->registry->set($key, $value);
	}
}