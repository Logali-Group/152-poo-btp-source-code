class zcl_08_lion_logali definition inheriting from zcl_07_animal_logali
  public
  final
  create public .

  public section.

   methods walk redefinition.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_08_LION_LOGALI IMPLEMENTATION.


  method walk.
     rv_walk = 'The lion walks'.
  endmethod.
ENDCLASS.
