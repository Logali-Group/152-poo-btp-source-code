class zcl_04_company_logali definition
  public
  create public .

  public section.

    methods: set_company_code importing iv_company_code type string,
      get_company_code exporting ev_company_code type string,

      set_currency importing iv_currency type string,
      get_currency exporting ev_currency type string.

    methods constructor importing iv_quotation type string.

    data quotation type string read-only.


  protected section.
    data company_code type c length 4.
    data currency     type c length 3.
  private section.
    data company_atr type string.
ENDCLASS.



CLASS ZCL_04_COMPANY_LOGALI IMPLEMENTATION.


  method get_company_code.
    ev_company_code = me->company_code.
  endmethod.


  method get_currency.
    ev_currency = me->currency.
  endmethod.


  method set_company_code.
    me->company_code = iv_company_code.
  endmethod.


  method set_currency.
    me->currency = iv_currency.
  endmethod.


  method constructor.
    me->quotation = iv_quotation.
  endmethod.
ENDCLASS.
