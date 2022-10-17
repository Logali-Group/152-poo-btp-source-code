class zcl_17_bp_logali definition
  public
  final
  create public .

  public section.
    interfaces zif_07_company_logali.

    aliases set_company_type for zif_07_company_logali~set_company_type.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_17_BP_LOGALI IMPLEMENTATION.


  method set_company_type.

  endmethod.


  method zif_07_company_logali~group.

  endmethod.
ENDCLASS.
