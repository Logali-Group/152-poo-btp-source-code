class zcl_05_plant_logali definition inheriting from zcl_04_company_logali
  public
  create public .

  public section.

    methods constructor importing iv_quotation type string
                                  iv_products  type string.

    data products type string read-only.
    data company_atr type string.

    methods set_company_code redefinition.



  protected section.
  private section.
ENDCLASS.



CLASS ZCL_05_PLANT_LOGALI IMPLEMENTATION.


  method constructor.

    super->constructor( iv_quotation = iv_quotation ).
    me->products = iv_products.

  endmethod.


  method set_company_code.
    super->set_company_code( iv_company_code = iv_company_code ).
    me->company_code = 'ABCD'.
  endmethod.
ENDCLASS.
