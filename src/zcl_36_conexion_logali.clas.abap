class zcl_36_conexion_logali definition
  public
  final
  create public .

  public section.

     data hour type zsyst_uzeit.
     data sender_user type string.

     methods on_time_out for event time_out of zcl_35_timer_logali
                         importing ev_hour
                                   sender.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_36_CONEXION_LOGALI IMPLEMENTATION.


  method on_time_out.
     me->hour = ev_hour.
     me->sender_user = sender->user.
  endmethod.
ENDCLASS.
