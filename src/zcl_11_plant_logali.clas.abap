class zcl_11_plant_logali definition
  public
*  final
  create public .

  public section.

    methods get_product returning value(rv_product) type string.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_11_PLANT_LOGALI IMPLEMENTATION.


  method get_product.
    data(lo_storage_location) = new zcl_12_storage_location_logali(  ).
    lo_storage_location->product = 'PC'.
    lo_storage_location->set_product( iv_product = 'Laptop' ).
  endmethod.
ENDCLASS.
