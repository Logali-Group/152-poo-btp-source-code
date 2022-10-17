class zcl_13_ny_plant_logali definition inheriting from zcl_11_plant_logali
  public
  final
  create public .

  public section.

    methods get_products_sl.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_13_NY_PLANT_LOGALI IMPLEMENTATION.


  method get_products_sl.
    data(lo_storage_location) = new zcl_12_storage_location_logali(  ).
    lo_storage_location->product = 'PC'.
  endmethod.
ENDCLASS.
