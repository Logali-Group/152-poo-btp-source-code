class zcl_02_contract_logali definition
  public
  final
  create private.

  public section.

    types: begin of ty_address,
             country     type string,
             city        type string,
             postal_code type string,
             region      type string,
             street      type string,
             number      type string,
           end of ty_address,
           tty_adrress type table of ty_address.

    constants: begin of cs_currency,
                 usd type c length 3 value 'USD',
                 eur type c length 3 value 'EUR',
               end of cs_currency.

    class-data currency type c length 3.
    data region type string.

    methods set_client importing value(iv_client)   type string
                                 value(iv_location) type string optional
                       exporting value(ev_status)   type string
                       changing  value(cv_process)  type string optional.

    methods get_client exporting ev_client type string.

    class-methods: set_cntr_type importing iv_cntr_type type string,
                   get_cntr_type exporting ev_cntr_type type string.

    methods get_client_name importing iv_client_id          type string
                            returning value(rv_client_name) type string.

    methods set_address importing it_adress type tty_adrress.

    class-data company type string read-only.

    methods set_sales_org importing sales_org type string.
    methods get_sales_org exporting sales_org type string.

    class-methods get_instance exporting er_instance type ref to zcl_02_contract_logali.

  protected section.
    data creation_date type sydate.

  private section.
    data client type string.
    class-data cntr_type type string.
    data sales_org type string.
    data due_date type sydate.

ENDCLASS.



CLASS ZCL_02_CONTRACT_LOGALI IMPLEMENTATION.


  method set_client.

    client = iv_client.
    ev_status = 'OK'.

    if iv_location is supplied.
      cv_process = 'Started'.
    else.
      cv_process = 'NOT Started'.
    endif.

    company = 'Logali Group'.

  endmethod.


  method get_client.

    ev_client = client.

  endmethod.


  method get_cntr_type.
    ev_cntr_type = cntr_type.
  endmethod.


  method set_cntr_type.
    cntr_type = iv_cntr_type.
  endmethod.


  method get_client_name.

    case iv_client_id.
      when '01'.
        rv_client_name = 'Client Name 01'.
      when '02'.
        rv_client_name = 'Client Name 02'.
    endcase.

  endmethod.


  method set_address.

  endmethod.


  method get_sales_org.
    sales_org = me->sales_org.
  endmethod.


  method set_sales_org.
    me->sales_org = sales_org.
    me->set_address( it_adress = value #( ( country = 'ES' ) ) ).
  endmethod.


  method get_instance.
    er_instance = new zcl_02_contract_logali( ).
  endmethod.
ENDCLASS.
