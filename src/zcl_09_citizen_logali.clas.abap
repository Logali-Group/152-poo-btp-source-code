class zcl_09_citizen_logali definition
  public
*  final
  create private
  global friends zcl_10_eu_citizen_logali.

  public section.

    methods set_id final importing iv_id type i.

    methods get_instance returning value(ro) type ref to zcl_09_citizen_logali.
  protected section.
  private section.
    class-data product type string.
ENDCLASS.



CLASS ZCL_09_CITIZEN_LOGALI IMPLEMENTATION.


  method set_id.
    data(lo_citizen) = new zcl_09_citizen_logali(  ).
  endmethod.


  method get_instance.
    ro = new zcl_09_citizen_logali(  ).
  endmethod.
ENDCLASS.
