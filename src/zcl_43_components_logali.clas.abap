class zcl_43_components_logali definition
  public
  final
  create public
  global friends zcl_44_comp_friends_logali.

  public section.

     methods get_first exporting ev_first type string.

  protected section.
  private section.

    data ms_second type ty_first.

    data mo_helper type ref to lcl_helper.

ENDCLASS.



CLASS ZCL_43_COMPONENTS_LOGALI IMPLEMENTATION.


  method get_first.
     data ls_first type ty_first.
     ev_first = me->ms_second-comp1.

     data lo_helper type ref to lcl_helper2.
     data ls_second type ty_first2.

  endmethod.
ENDCLASS.
