class zcl_25_company_usa_logali definition
  public
  final
  create public .

  public section.

    interfaces zif_08_co_company_logali .
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_25_COMPANY_USA_LOGALI IMPLEMENTATION.


  method zif_08_co_company_logali~define_company.
    rv_company = 'Company USA....'.
  endmethod.
ENDCLASS.
