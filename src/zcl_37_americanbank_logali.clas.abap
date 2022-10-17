class zcl_37_americanbank_logali definition
  public
  final
  create public .

  public section.
    interfaces zif_10_bank_logali.

    methods create_notification returning value(rv_text) type string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_37_AMERICANBANK_LOGALI IMPLEMENTATION.


  method create_notification.
    rv_text = |Event raise.....new transfer-{ cl_abap_context_info=>get_system_time(  ) }|.
    raise event zif_10_bank_logali~new_transfer.
  endmethod.
ENDCLASS.
