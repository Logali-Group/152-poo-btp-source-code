class zcl_23_passenger_plane_logali definition inheriting from zcl_21_airlplane_logali
  public
  final
  create public .

  public section.
    methods airplane_type redefinition.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_23_PASSENGER_PLANE_LOGALI IMPLEMENTATION.


  method airplane_type.
     rv_airplane_type = 'Passenger plane'.
  endmethod.
ENDCLASS.
