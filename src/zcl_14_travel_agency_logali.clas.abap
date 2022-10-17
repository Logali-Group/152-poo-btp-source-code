class zcl_14_travel_agency_logali definition
  public
  final
  create public .

  public section.
    interfaces zif_01_agency_logali.

  protected section.
  private section.

    data agency_type type string.

ENDCLASS.



CLASS ZCL_14_TRAVEL_AGENCY_LOGALI IMPLEMENTATION.


  method zif_01_agency_logali~set_address.
    zif_01_agency_logali~agency_address = iv_address.
  endmethod.


  method zif_01_agency_logali~get_name.
    rv_type = me->agency_type.
  endmethod.


  method zif_01_agency_logali~set_name.
    me->agency_type = iv_type.
  endmethod.
ENDCLASS.
