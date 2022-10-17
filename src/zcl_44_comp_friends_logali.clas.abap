class zcl_44_comp_friends_logali definition
  public
  final
  create public .

  public section.

    methods get_helper.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_44_COMP_FRIENDS_LOGALI IMPLEMENTATION.


  method get_helper.

    data(lo_components) = new zcl_43_components_logali(  ).

    clear lo_components->mo_helper->ms_first_cl.
    data(ls_first) = lo_components->mo_helper->get_first( ).

    lo_components->get_first( importing ev_first = data(lv_first) ).

  endmethod.
ENDCLASS.
