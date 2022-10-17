class zcl_24_company_eu_logali definition
  public
  final
  create public .

  public section.

    interfaces zif_08_co_company_logali .
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_24_COMPANY_EU_LOGALI IMPLEMENTATION.


  method zif_08_co_company_logali~define_company.
     rv_company = 'Company Europe.....'.
  endmethod.
ENDCLASS.
