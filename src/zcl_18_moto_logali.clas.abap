class zcl_18_moto_logali definition abstract
  public
*  final
  create public .

  public section.

    methods set_hp importing ib_hp type i.

  protected section.

    methods set_max_speeed abstract importing iv_max_speed type i.

  private section.
    data hp type i.
ENDCLASS.



CLASS ZCL_18_MOTO_LOGALI IMPLEMENTATION.


  method set_hp.

  endmethod.
ENDCLASS.
