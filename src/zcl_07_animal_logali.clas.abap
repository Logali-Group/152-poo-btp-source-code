class zcl_07_animal_logali definition
  public
  create public .

  public section.

   methods walk returning value(rv_walk) type string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_07_ANIMAL_LOGALI IMPLEMENTATION.


  method walk.
      rv_walk = 'The animal walks'.
  endmethod.
ENDCLASS.
