<?php
$viewdefs ['Contacts'] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'hidden' => 
        array (
          0 => '<input type="hidden" name="opportunity_id" value="{$smarty.request.opportunity_id}">',
          1 => '<input type="hidden" name="case_id" value="{$smarty.request.case_id}">',
          2 => '<input type="hidden" name="bug_id" value="{$smarty.request.bug_id}">',
          3 => '<input type="hidden" name="email_id" value="{$smarty.request.email_id}">',
          4 => '<input type="hidden" name="inbound_email_id" value="{$smarty.request.inbound_email_id}">',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL3' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL4' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL5' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL6' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL7' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL8' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_contact_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'first_name',
            'customCode' => '{html_options name="salutation" id="salutation" options=$fields.salutation.options selected=$fields.salutation.value}&nbsp;<input name="first_name"  id="first_name" size="25" maxlength="25" type="text" value="{$fields.first_name.value}">',
          ),
          1 => 
          array (
            'name' => 'last_name',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'phone_work',
            'comment' => 'Work phone number of the contact',
            'label' => 'LBL_OFFICE_PHONE',
          ),
          1 => 
          array (
            'name' => 'phone_mobile',
            'comment' => 'Mobile phone number of the contact',
            'label' => 'LBL_MOBILE_PHONE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'account_name',
            'displayParams' => 
            array (
              'key' => 'billing',
              'copy' => 'primary',
              'billingKey' => 'primary',
              'additionalFields' => 
              array (
                'phone_office' => 'phone_work',
              ),
            ),
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'email1',
            'studio' => 'false',
            'label' => 'LBL_EMAIL_ADDRESS',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'direccion_c',
            'label' => 'LBL_DIRECCION',
          ),
          1 => 
          array (
            'name' => 'ciudad_c',
            'label' => 'LBL_CIUDAD',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'location_c',
            'label' => 'LBL_LOCATION',
          ),
          1 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO_NAME',
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'lead_source',
            'comment' => 'How did the contact come about',
            'label' => 'LBL_LEAD_SOURCE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'report_to_name',
            'label' => 'LBL_REPORTS_TO',
          ),
          1 => 'campaign_name',
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'marca_c',
            'label' => 'LBL_MARCA',
          ),
          1 => 
          array (
            'name' => 'linea_c',
            'label' => 'LBL_LINEA',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'placa_c',
            'label' => 'LBL_PLACA',
          ),
          1 => 
          array (
            'name' => 'modelo_c',
            'label' => 'LBL_MODELO',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'kilometraje_c',
            'label' => 'LBL_KILOMETRAJE',
          ),
          1 => 
          array (
            'name' => 'color_c',
            'label' => 'LBL_COLOR',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'soat_c',
            'label' => 'LBL_SOAT',
          ),
          1 => 
          array (
            'name' => 'tecnomecanica_c',
            'label' => 'LBL_TECNOMECANICA',
          ),
        ),
      ),
      'lbl_editview_panel4' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'marca_alternativa_1_c',
            'label' => 'LBL_MARCA_ALTERNATIVA_1',
          ),
          1 => 
          array (
            'name' => 'linea_alternativa_1_c',
            'label' => 'LBL_LINEA_ALTERNATIVA_1',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'placa_alternativa_1_c',
            'label' => 'LBL_PLACA_ALTERNATIVA_1',
          ),
          1 => 
          array (
            'name' => 'modelo_alternativo_1_c',
            'label' => 'LBL_MODELO_ALTERNATIVO_1',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'kilometraje_alternativo_1_c',
            'label' => 'LBL_KILOMETRAJE_ALTERNATIVO_1',
          ),
          1 => 
          array (
            'name' => 'color_alternativo_1_c',
            'label' => 'LBL_COLOR_ALTERNATIVO_1',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'soat_alternativo_1_c',
            'label' => 'LBL_SOAT_ALTERNATIVO_1',
          ),
          1 => 
          array (
            'name' => 'tecnomecanica_alternativa_1_c',
            'label' => 'LBL_TECNOMECANICA_ALTERNATIVA_1',
          ),
        ),
      ),
      'lbl_editview_panel5' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'marca_alternativa_2_c',
            'label' => 'LBL_MARCA_ALTERNATIVA_2',
          ),
          1 => 
          array (
            'name' => 'linea_alternativa_2_c',
            'label' => 'LBL_LINEA_ALTERNATIVA_2',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'placa_alternativa_2_c',
            'label' => 'LBL_PLACA_ALTERNATIVA_2',
          ),
          1 => 
          array (
            'name' => 'modelo_alternativo_2_c',
            'label' => 'LBL_MODELO_ALTERNATIVO_2',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'kilometraje_alternativo_2_c',
            'label' => 'LBL_KILOMETRAJE_ALTERNATIVO_2',
          ),
          1 => 
          array (
            'name' => 'color_alternativo_2_c',
            'label' => 'LBL_COLOR_ALTERNATIVO_2',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'soat_alternativo_2_c',
            'label' => 'LBL_SOAT_ALTERNATIVO_2',
          ),
          1 => 
          array (
            'name' => 'tecnomecanica_alternativa_2_c',
            'label' => 'LBL_TECNOMECANICA_ALTERNATIVA_2',
          ),
        ),
      ),
      'lbl_editview_panel6' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'marca_alternativa_3_c',
            'label' => 'LBL_MARCA_ALTERNATIVA_3',
          ),
          1 => 
          array (
            'name' => 'linea_alternativa_3_c',
            'label' => 'LBL_LINEA_ALTERNATIVA_3',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'placa_alternativa_3_c',
            'label' => 'LBL_PLACA_ALTERNATIVA_3',
          ),
          1 => 
          array (
            'name' => 'modelo_alternativo_3_c',
            'label' => 'LBL_MODELO_ALTERNATIVO_3',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'kilometraje_alternativo_3_c',
            'label' => 'LBL_KILOMETRAJE_ALTERNATIVO_3',
          ),
          1 => 
          array (
            'name' => 'color_alternativo_3_c',
            'label' => 'LBL_COLOR_ALTERNATIVO_3',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'soat_alternativo_3_c',
            'label' => 'LBL_SOAT_ALTERNATIVO_3',
          ),
          1 => 
          array (
            'name' => 'tecnomecanica_alternativa_3_c',
            'label' => 'LBL_TECNOMECANICA_ALTERNATIVA_3',
          ),
        ),
      ),
      'lbl_editview_panel7' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'marca_alternativa_4_c',
            'label' => 'LBL_MARCA_ALTERNATIVA_4',
          ),
          1 => 
          array (
            'name' => 'linea_alternativa_4_c',
            'label' => 'LBL_LINEA_ALTERNATIVA_4',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'placa_alternativa_4_c',
            'label' => 'LBL_PLACA_ALTERNATIVA_4',
          ),
          1 => 
          array (
            'name' => 'modelo_alternativo_4_c',
            'label' => 'LBL_MODELO_ALTERNATIVO_4',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'kilometraje_alternativo_4_c',
            'label' => 'LBL_KILOMETRAJE_ALTERNATIVO_4',
          ),
          1 => 
          array (
            'name' => 'color_alternativo_4_c',
            'label' => 'LBL_COLOR_ALTERNATIVO_4',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'soat_alternativo_4_c',
            'label' => 'LBL_SOAT_ALTERNATIVO_4',
          ),
          1 => 
          array (
            'name' => 'tecnomecanica_alternativa_4_c',
            'label' => 'LBL_TECNOMECANICA_ALTERNATIVA_4',
          ),
        ),
      ),
      'lbl_editview_panel8' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'marca_alternativa_5_c',
            'label' => 'LBL_MARCA_ALTERNATIVA_5',
          ),
          1 => 
          array (
            'name' => 'linea_alternativa_5_c',
            'label' => 'LBL_LINEA_ALTERNATIVA_5',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'placa_alternativa_5_c',
            'label' => 'LBL_PLACA_ALTERNATIVA_5',
          ),
          1 => 
          array (
            'name' => 'modelo_alternativo_5_c',
            'label' => 'LBL_MODELO_ALTERNATIVO_5',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'kilometraje_alternativo_5_c',
            'label' => 'LBL_KILOMETRAJE_ALTERNATIVO_5',
          ),
          1 => 
          array (
            'name' => 'color_alternativo_5_c',
            'label' => 'LBL_COLOR_ALTERNATIVO_5',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'soat_alternativo_5_c',
            'label' => 'LBL_SOAT_ALTERNATIVO_5',
          ),
          1 => 
          array (
            'name' => 'tecnomecanica_alternativa_5_c',
            'label' => 'LBL_TECNOMECANICA_ALTERNATIVA_5',
          ),
        ),
      ),
    ),
  ),
);
?>
