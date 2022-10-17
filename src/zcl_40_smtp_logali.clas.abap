class zcl_40_smtp_logali definition
  public
  final
  create public .

  public section.

    class-methods on_new_mail for event new_mail of zcl_39_mail_logali
                  importing ev_subject.

    class-data table_inbox type table of string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_40_SMTP_LOGALI IMPLEMENTATION.


  method on_new_mail.
     append ev_subject to table_inbox.
  endmethod.
ENDCLASS.
