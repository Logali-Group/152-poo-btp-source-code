class zcl_39_mail_logali definition
  public
  final
  create public .

  public section.

     class-events new_mail exporting value(ev_subject) type string.

     class-methods compose_mail.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_39_MAIL_LOGALI IMPLEMENTATION.


  method compose_mail.
     raise event new_mail exporting
                 ev_subject = |ABAP programmer job offer: { cl_abap_context_info=>get_system_time(  ) }|.
  endmethod.
ENDCLASS.
