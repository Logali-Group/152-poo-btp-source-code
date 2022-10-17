class zcl_49_bank_logali definition
  public
  final
  create public .

  public section.

    methods validate_account importing iv_card            type string
                                       iv_amount          type i
                                       iv_savings_account type abap_bool optional
                             changing  cv_log             type string
                             raising   zcx_47_expired_card_logali
                                       resumable(zcx_48_insufficient_bal_logali).
  protected section.
  private section.
endclass.



class zcl_49_bank_logali implementation.

  method validate_account.

    cv_log = |{ cv_log }...Checking card validity{ cl_abap_char_utilities=>newline }|.

    if iv_card eq '1111 2222 3333 4444'.
      raise exception type zcx_47_expired_card_logali
        exporting
          textid = zcx_47_expired_card_logali=>card_expired.
    endif.

    cv_log = |{ cv_log }...Checking account balance{ cl_abap_char_utilities=>newline }|.

    if iv_amount gt 50.

      if iv_savings_account eq abap_true.
        cv_log = |{ cv_log }...Resumable exception Insufficient Balance{ cl_abap_char_utilities=>newline }|.
        raise resumable exception type zcx_48_insufficient_bal_logali
          exporting
            textid = zcx_48_insufficient_bal_logali=>insufficient_balance.
      else.
        cv_log = |{ cv_log }...Exception Insufficient Balance{ cl_abap_char_utilities=>newline }|.
        raise exception type zcx_48_insufficient_bal_logali
          exporting
            textid = zcx_48_insufficient_bal_logali=>insufficient_balance.

      endif.


    endif.

  endmethod.

endclass.
