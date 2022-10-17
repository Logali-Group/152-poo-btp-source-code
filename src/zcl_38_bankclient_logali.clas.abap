class zcl_38_bankclient_logali definition
  public
  final
  create public .

  public section.
    methods on_new_transfer for event new_transfer
        of zif_10_bank_logali
        importing sender.

    data notification type string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_38_BANKCLIENT_LOGALI IMPLEMENTATION.


  method on_new_transfer.
    me->notification = |{ sender->office }-{ cl_abap_context_info=>get_system_time(  ) }|.
  endmethod.
ENDCLASS.
