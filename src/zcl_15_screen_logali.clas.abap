class zcl_15_screen_logali definition
  public
  final
  create public .

  public section.
     interfaces: zif_02_eu_unit_logali,
                 zif_03_en_unit_logali.

   methods constructor importing iv_en_unit type zfloat.
  protected section.
  private section.
    data en_unit type zfloat.
ENDCLASS.



CLASS ZCL_15_SCREEN_LOGALI IMPLEMENTATION.


  method zif_02_eu_unit_logali~dimensions_centimeters.
    rv_unit = me->en_unit * '2.54'.
  endmethod.


  method zif_03_en_unit_logali~dimensions_inches.
    rv_unit = me->en_unit.
  endmethod.


  method constructor.
    me->en_unit = iv_en_unit.
  endmethod.
ENDCLASS.
