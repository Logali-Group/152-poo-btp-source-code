class zcl_30_laptop_logali definition
  public
  final
  create public .

  public section.
    data keyboard type ref to zcl_29_keyboard_logali.
    methods constructor importing io_keyboard type ref to zcl_29_keyboard_logali.
  protected section.
  private section.

ENDCLASS.



CLASS ZCL_30_LAPTOP_LOGALI IMPLEMENTATION.


  method constructor.
    me->keyboard = io_keyboard.
  endmethod.
ENDCLASS.
