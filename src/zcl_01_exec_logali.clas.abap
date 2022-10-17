    class zcl_01_exec_logali definition
  public
  final
  create public .

      public section.

        interfaces if_oo_adt_classrun.

      protected section.
      private section.
    endclass.


    class zcl_01_exec_logali implementation.

      method if_oo_adt_classrun~main.

        data lv_name type string value 'John Smith'.
        data lv_role type string value 'Developer'.

        data(go_model) = new zcl_70_emp_model_logali( iv_name = lv_name
                                                      iv_role = lv_role ).

        data(go_view) = new zcl_71_emp_view_logali(  ).

        data(go_controller) = new zcl_72_emp_controller_logali(  ).

        go_controller->set_model( go_model ).
        go_controller->set_view( go_view ).

        go_controller->get_view(  )->display_employee( exporting iv_name = go_model->get_name(  )
                                                                 iv_role = go_model->get_role(  )
                                                                 io_out  = out ).














*       data(go_processes) = new zcl_66_processes_logali(  ).
*       data(go_sales_dep) = new zcl_68_sales_dep_logali(  ).
*       data(go_billing_dep) = new zcl_69_billing_dep_logali(  ).
*
*
*       set handler go_sales_dep->on_modified_state for go_processes.
*       set handler go_billing_dep->on_modified_state for go_processes.
*
**      Set new state
*       go_processes->set_state( iv_state = 'NEWSALES01 - Product 12345 - Laptop HP sold' ).
*       out->write( go_processes->get_state(  ) ).
*       out->write( go_sales_dep->state ).
*       out->write( go_billing_dep->state ).
*
**      Set new state
*       go_processes->set_state( iv_state = 'NEWSALES02 - Product 67890 - Laptop Dell sold' ).
*       out->write( go_processes->get_state(  ) ).
*       out->write( go_sales_dep->state ).
*       out->write( go_billing_dep->state ).


*         data: go_shape   type ref to zif_11_geometric_figure_logali,
*               go_factory type ref to zcl_62_factory_logali.
*
*         go_factory = new #(  ).
*         go_shape = go_factory->get_shape( 'Triangle' ).
*         out->write( go_shape->draw_shape(  ) ).


*        data: go_singleton_1 type ref to zcl_58_singleton_logali,
*              go_singleton_2 type ref to zcl_58_singleton_logali.
*
*        go_singleton_1 = zcl_58_singleton_logali=>get_instance(  ).
*        wait up to 2 seconds.
*        go_singleton_2 = zcl_58_singleton_logali=>get_instance(  ).
*
*        out->write( go_singleton_1->mv_time ).
*        out->write( go_singleton_2->mv_time ).
*
*        go_singleton_1->mv_time = cl_abap_context_info=>get_system_time(  ).
*
*        out->write( cl_abap_char_utilities=>newline ).
*
*        out->write( go_singleton_1->mv_time ).
*        out->write( go_singleton_2->mv_time ).



*        data(lo_cut) = new zcl_57_test_inj_logali(  ).
*
*        lo_cut->get_customer( importing es_customer = data(ls_customer) ).
*
*        out->write( |{ ls_customer-customer_id }-{ ls_customer-country_code }| ).

*         data(lo_business_pr) = new zcl_55_business_pr_logali(  ).
*
*         lo_business_pr->get_factorial( exporting iv_number = 5
*                                        importing ev_factorial = data(lv_factorial) ).
*
*         out->write( lv_factorial ).


*        data(lo_execution) = new zcx_54_excecution_logali(  ).
*
*        try.
*            try.
*                try.
*
*                    lo_execution->raise_exception_1(  ).
*
*                  catch zcx_51_exception1_logali into data(lx_exception_1).
*                    lo_execution->raise_exception_2( io_previous = lx_exception_1 ).
*
*                endtry.
*
*              catch zcx_52_exception2_logali into data(lx_exception_2).
*                lo_execution->raise_exception_3( io_previous = lx_exception_2 ).
*            endtry.
*
*          catch zcx_53_exception3_logali into data(lx_exception_3).
*
*            out->write( |{ lx_exception_3->get_text(  ) }{ cl_abap_char_utilities=>newline }| ).
*
*            if lx_exception_3->previous is bound.
*              out->write( |{ lx_exception_3->previous->get_text(  ) }\n| ).
*            endif.
*
*            if lx_exception_3->previous->previous is bound.
*              out->write( |{ lx_exception_3->previous->previous->get_text(  ) }\n| ).
*            endif.
*
*            if lx_exception_3->previous->previous->previous is bound.
*              out->write( |{ lx_exception_3->previous->previous->previous->get_text(  ) }\n| ).
*            endif.
*
*
*        endtry.





*    data(lo_atm) = new zcl_50_atm_logali(  ).
*
** 1. Expired Credit Card
*     out->write( 'Use Case: 1. Expired Credit Card' ).
*     out->write( lo_atm->withdraw_money(
*                   exporting
*                     iv_card     = '1111 2222 3333 4444'
*                     iv_amount   = 30 ) ).
*
** 2. Insufficient balance in the current account
*     out->write( 'Use Case: 2. Insufficient balance in the current account' ).
*     out->write( lo_atm->withdraw_money(
*                   exporting
*                     iv_card     = '1111 2222 3333 5555'
*                     iv_amount   = 100 ) ).
*
** 3. Withdraw money from the savings account
*     out->write( 'Use Case: 3. Withdraw money from the savings account' ).
*     out->write( lo_atm->withdraw_money(
*                   exporting
*                     iv_card            = '1111 2222 3333 5555'
*                     iv_amount          = 100
*                     iv_savings_account = abap_true ) ).

*        data(lo_manage_cntr) = new zcl_46_manage_cntr_logali(  ).
*
*        data: lv_result type i,
*              lv_num1   type i value 10,
*              lv_num2   type i.
*
*        try.
*            try.
*
*                lv_result = lv_num1 + lv_num2.
*                lv_result = lv_num1 / lv_num2.
*                lv_result = lv_num1 - lv_num2.
*
*              catch zcx_45_auth_logali into data(lx_auth).
*                out->write( lx_auth->get_text(  ) ).
*              catch cx_a4c_bc_exception.
*              cleanup.
*                 out->write( |Cleanup 1....Result: { lv_result }| ).
*
*            endtry.
*
*          catch cx_sy_zerodivide into data(lx_zerodivide).
*            out->write( lx_zerodivide->get_text(  ) ).
*            lv_num2 = 2.
*            retry.
*          cleanup.
*            out->write( |Cleanup 2....| ).
*
*        endtry.
*
*        out->write( |FINISH: { lv_result }|  ).




*        try.
*
**            lo_manage_cntr->check_user( sy-uname ).
*
*            lv_result = lv_num1 / lv_num2.
*
*          catch zcx_45_auth_logali into data(lx_auth).
*            out->write( lx_auth->get_text(  ) ).
*
*          catch cx_sy_zerodivide into data(lx_zerodivide).
*            out->write( lx_zerodivide->get_text(  ) ).
*            lv_num2 = 2.
*            retry.
*
*          catch cx_static_check into data(lx_static).
*
*
*          catch cx_root into data(lx_root).
*            out->write( 'Root' ).
*
*        endtry.
*
*        out->write( |FINISH: { lv_result }|  ).


*         data(go_components) = new zcl_43_components_logali( ).
*         go_components->get_first( importing ev_first = data(gv_first) ).

*        data(go_north_building) = new zcl_41_building_logali(  ).
*        data(go_south_building) = new zcl_41_building_logali(  ).
*        data(go_east_building) = new zcl_41_building_logali(  ).
*        data(go_west_building) = new zcl_41_building_logali(  ).
*
*        data(go_access) = new zcl_42_access_logali(  ).
*
**        set handler go_access->on_blocked_entrance for go_north_building.
**        set handler go_access->on_blocked_entrance for go_south_building.
**        set handler go_access->on_blocked_entrance for go_east_building.
**        set handler go_access->on_blocked_entrance for go_west_building.
*
**        set handler go_access->on_blocked_entrance for all instances.
*
*        go_north_building->entry = 'NORTH'.
*        go_north_building->close_entry(  ).
*
*        go_south_building->entry = 'SOUTH'.
*        go_south_building->close_entry(  ).
*
*        go_east_building->entry = 'EAST'.
*        go_east_building->close_entry(  ).
*
*        go_west_building->entry = 'WEAST'.
*        go_west_building->close_entry(  ).
*
*        out->write( zcl_42_access_logali=>table_blocked_entries ).

**        data(go_smtp) = new zcl_40_smtp_logali(  ).
*        set handler zcl_40_smtp_logali=>on_new_mail.
*
*        do 3 times.
*          wait up to 1 seconds.
*          zcl_39_mail_logali=>compose_mail(  ).
*        enddo.
*
*        out->write( zcl_40_smtp_logali=>table_inbox ).

*        data(go_americanbank) = new zcl_37_americanbank_logali(  ).
*        data(go_bankclient) = new zcl_38_bankclient_logali(  ).
*
*        set handler go_bankclient->on_new_transfer for go_americanbank activation abap_true.
*
*        do 5 times.
*          wait up to 1 seconds.
*          out->write( go_americanbank->create_notification(  ) ).
*          out->write( go_bankclient->notification ).
*          if sy-index eq 3.
*            set handler go_bankclient->on_new_transfer for go_americanbank activation abap_false.
*            go_bankclient->notification = 'No handler for event new transfer'.
*          endif.
*        enddo.



*       data(go_timer) = new zcl_35_timer_logali(  ).
*       data(go_conexion) = new zcl_36_conexion_logali(  ).
*
*       set handler go_conexion->on_time_out for go_timer.
*
*       do.
*
*         wait up to 1 seconds.
*         go_timer->increment_counter( 1 ).
*
*         if go_conexion->hour is initial.
*           out->write( |Event not yet executed: { cl_abap_context_info=>get_system_time(  ) }| ).
*         else.
*           out->write( |Event was raised at: { go_conexion->hour }-{ go_conexion->sender_user }| ).
*           exit.
*         endif.
*
*       enddo.


*     data go_object type ref to object.
*
*     go_object = new zcl_34_product_logali(  ).
*
*     data(lv_method_name) = 'RETURN_CATEGORY'.
*
*     data lv_category type string.
*
*     call method go_object->(lv_method_name) receiving rv_category = lv_category.
*
*     out->write( lv_category ).

*    data go_contrato type ref to zif_09_contract_logali.
*
*    go_contrato = new zcl_32_constr_cntr_logali(  ).
*    create object go_contrato type zcl_32_constr_cntr_logali.
*
*    data go_constr_contract type ref to zcl_32_constr_cntr_logali.
*
*    go_constr_contract = new zcl_33_record_logali(  ).
*    create object go_constr_contract type zcl_33_record_logali.
*
*    go_contrato = new zcl_33_record_logali(  ).
*    create object go_contrato type zcl_33_record_logali.

*    data: lo_vat_indicator_1 type ref to zcl_31_vat_indicator_logali,
*          lo_vat_indicator_2 type ref to zcl_31_vat_indicator_logali,
*          lo_vat_indicator_3 type ref to zcl_31_vat_indicator_logali.
*
**    create object: lo_vat_indicator_1,
**                   lo_vat_indicator_2,
**                   lo_vat_indicator_3.
*
*    lo_vat_indicator_1 = new #(  ).
*    lo_vat_indicator_2 = new #(  ).
*    lo_vat_indicator_3 = new #(  ).
*
*    lo_vat_indicator_2 = lo_vat_indicator_1.
*    lo_vat_indicator_3 = lo_vat_indicator_1.
*
**    lo_vat_indicator_1->vat_ind = 'A1'.
*    lo_vat_indicator_2->vat_ind = 'A2'.
**    lo_vat_indicator_3->vat_ind = 'A3'.
*
*    out->write( lo_vat_indicator_1->vat_ind ).
*    out->write( lo_vat_indicator_2->vat_ind ).
*    out->write( lo_vat_indicator_3->vat_ind ).

*    data(lo_keyboard) = new zcl_29_keyboard_logali(  ).
*    data(lo_laptop) = new zcl_30_laptop_logali( lo_keyboard  ).
*
*    lo_keyboard->keyboard_type = 'ES'.
*    out->write( lo_laptop->keyboard->keyboard_type ).

*      data(lo_credit_card) = new zcl_27_credit_card_logali(  ).
*      data(lo_client) = new zcl_28_client_logali(  ).
*
*      lo_credit_card->set_card_num( '1111 2222 3333 4444' ).
*
*      lo_client->set_credit_card( lo_credit_card ).
*
*      out->write( lo_client->get_credit_card(  )->get_card_num(  ) ).

*    data: gt_co_companies type standard table of ref to zif_08_co_company_logali,
*          go_co_company   type ref to zif_08_co_company_logali,
*          go_company_eu   type ref to zcl_24_company_eu_logali,
*          go_company_usa  type ref to zcl_25_company_usa_logali,
*          go_plant        type ref to zcl_26_plant_logali.
*
*    go_company_eu = new #(  ).
*    append go_company_eu to gt_co_companies.
*
*    go_company_usa = new #(  ).
*    append go_company_usa to gt_co_companies.
*
*    go_plant = new #(  ).
*
*    loop at gt_co_companies into go_co_company.
*       out->write( go_co_company->define_company(  ) ).
*       out->write( go_plant->assign_company( go_co_company ) ).
*    endloop.

*    data: gt_airplanes       type standard table of ref to zcl_21_airlplane_logali,
*          go_airplane        type ref to zcl_21_airlplane_logali,
*          go_cargo_plane     type ref to zcl_22_cargo_plane_logali,
*          go_passenger_plane type ref to zcl_23_passenger_plane_logali.
*
*    go_cargo_plane = new #(  ).
*    append go_cargo_plane to gt_airplanes.
*
*    go_passenger_plane = new #(  ).
*    append go_passenger_plane to gt_airplanes.
*
*    loop at gt_airplanes into go_airplane.
*        out->write( go_airplane->airplane_type(  ) ).
*    endloop.


*    data(lo_bp) = new zcl_17_bp_logali(  ).
*    lo_bp->set_company_type(  ).
*    lo_bp->zif_07_company_logali~set_company_type(  ).

*      data(lo_sales_department) = new zcl_16_sales_department_logali(  ).
*      lo_sales_department->zif_04_document_logali~set_sales_doc( '123D' ).
*      lo_sales_department->zif_05_sales_order_logali~create_order( '123O' ).

*     data(lo_screen) = new zcl_15_screen_logali( 22 ).
*     out->write( lo_screen->zif_02_eu_unit_logali~dimensions_centimeters(  ) ).
*     out->write( lo_screen->zif_03_en_unit_logali~dimensions_inches(  ) ).

*    data(lo_travel_agency) = new zcl_14_travel_agency_logali(  ).
*
*    lo_travel_agency->zif_01_agency_logali~set_name( 'Gate2Fly.com' ).
*    out->write( lo_travel_agency->zif_01_agency_logali~get_name(  ) ).
*
*    zcl_14_travel_agency_logali=>zif_01_agency_logali~set_address( 'Madrid, Spain' ).

*    data(lo_animal) = new zcl_07_animal_logali(  ).
*    data(lo_lion) = new zcl_08_lion_logali(  ).
*
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
*    lo_animal = lo_lion.
*    out->write( 'Narrowing Casting (Up Cast)' ).
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
*
*    try.
*        lo_lion ?= lo_animal.
*      catch cx_sy_move_cast_error.
*      out->write( 'Casting error' ).
*      return.
*    endtry.
*
*    out->write( 'Widening Casting (Down Cast)' ).
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).


*    data(lo_company)          = new zcl_04_company_logali( iv_quotation = 'Q1' ).
*    data(lo_plant)            = new zcl_05_plant_logali( iv_quotation = 'Q2' iv_products = 'P2').
*    data(lo_storage_location) = new zcl_06_storage_logali( iv_quotation = 'Q3' iv_products = 'P3').
*
*    lo_company->set_company_code( '1234' ).
*    lo_company->set_currency( 'USD' ).
*
*    lo_company->get_company_code( importing ev_company_code = data(lv_company_code) ).
*    lo_company->get_currency( importing ev_currency = data(lv_currency) ).
*
*    out->write( |Company { lv_company_code }-{ lv_currency }| ).
*
*    lo_plant->set_company_code( '5678' ).
*    lo_plant->set_currency( 'EUR' ).
*
*    lo_plant->get_company_code( importing ev_company_code = lv_company_code ).
*    lo_plant->get_currency( importing ev_currency = lv_currency ).
*
*    out->write( |Plant { lv_company_code }-{ lv_currency }| ).
*
*    lo_storage_location->set_company_code( '0123' ).
*    lo_storage_location->set_currency( 'AED' ).
*
*    lo_storage_location->get_company_code( importing ev_company_code = lv_company_code ).
*    lo_storage_location->get_currency( importing ev_currency = lv_currency ).
*
*    out->write( |Storage Location { lv_company_code }-{ lv_currency }| ).


*     out->write( zcl_03_employee_logali=>log ).
*
*     data(lo_employee1) = new zcl_03_employee_logali( iv_employee_id = '01' ).
**     out->write( lo_employee1->get_employee_id(  ) ).
*     out->write( zcl_03_employee_logali=>log ).
*
*     data(lo_employee2) = new zcl_03_employee_logali( iv_employee_id = '02' ).
**     out->write( lo_employee2->get_employee_id(  ) ).
**
**     out->write( zcl_03_employee_logali=>company ).
*     out->write( zcl_03_employee_logali=>log ).



**    data lo_contract type ref to zcl_02_contract_logali.
**
**    create object lo_contract.
**
**    lo_contract = new #(  ).
*
**    data(lo_contract) = new zcl_02_contract_logali(  ).
**    data(lo_contract2) = new zcl_02_contract_logali(  ).
*
*    zcl_02_contract_logali=>get_instance( importing er_instance = data(lo_contract) ).
*
*    data lv_process type string.
*
*    data: lt_address type zcl_02_contract_logali=>tty_adrress,
*          ls_address type zcl_02_contract_logali=>ty_address.
*
*    if lo_contract is bound.
*
*      lo_contract->set_client(
*        exporting
*          iv_client   = 'Logali'
**          iv_location = space
*        importing
*          ev_status   = data(lv_status)
*        changing
*          cv_process  = lv_process ).
*
*      lo_contract->get_client( importing ev_client = data(lv_client) ).
*
*      lo_contract->region = 'EU'.
*
*      data(lv_client_name) = lo_contract->get_client_name( iv_client_id   = '01').
*
*      if not lo_contract->get_client_name( iv_client_id   = '01') is initial.
*        out->write( lo_contract->get_client_name( iv_client_id   = '01') ).
*      endif.
*
*    endif.
*
*    zcl_02_contract_logali=>set_cntr_type( 'Construction' ).
*
*    zcl_02_contract_logali=>get_cntr_type(
*      importing
*        ev_cntr_type = data(lv_cntr_type)
*    ).
*
*    zcl_02_contract_logali=>currency = zcl_02_contract_logali=>cs_currency-usd.
*
*    out->write( zcl_02_contract_logali=>currency ).
*
*    out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region }| ).
*
*    out->write( lv_cntr_type ).
*
*    out->write( zcl_02_contract_logali=>company ).

      endmethod.
    endclass.
