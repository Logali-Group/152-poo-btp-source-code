class zcl_50_atm_logali definition
  public
  final
  create public .

  public section.

    methods withdraw_money importing iv_card            type string
                                     iv_amount          type i
                                     iv_savings_account type abap_bool optional
                           returning value(rv_log)      type string.

  protected section.
  private section.
endclass.



class zcl_50_atm_logali implementation.
  method withdraw_money.

    data(lo_bank) = new zcl_49_bank_logali(  ).

    try.
        lo_bank->validate_account(
          exporting
            iv_card            = iv_card
            iv_amount          = iv_amount
            iv_savings_account = iv_savings_account
          changing
            cv_log             = rv_log ).

        rv_log = |{ rv_log }...Withdraw money from the ATM{ cl_abap_char_utilities=>newline }|.
        rv_log = |{ rv_log }...Operation completed successfully{ cl_abap_char_utilities=>newline }|.

      catch               zcx_47_expired_card_logali into data(lx_expired_card).
        rv_log = |{ rv_log }...{ lx_expired_card->get_text(  ) }{ cl_abap_char_utilities=>newline }|.

      catch before unwind zcx_48_insufficient_bal_logali into data(lx_insufficient_balance).
        rv_log = |{ rv_log }...{ lx_insufficient_balance->get_text(  ) }{ cl_abap_char_utilities=>newline }|.

        if lx_insufficient_balance->is_resumable eq abap_true.
          "Withdraw money from the savings account
          rv_log = |{ rv_log }...Resume exception{ cl_abap_char_utilities=>newline }|.
          resume.
        else.
          "Insufficient balance on the savings account
        endif.

    endtry.















  endmethod.

endclass.
