class zcl_28_client_logali definition
  public
  final
  create public .

  public section.

    methods: set_credit_card importing ir_credit_card type ref to zcl_27_credit_card_logali,
             get_credit_card returning value(rr_credit_card) type ref to zcl_27_credit_card_logali.
  protected section.
  private section.
    data credit_card type ref to zcl_27_credit_card_logali.
ENDCLASS.



CLASS ZCL_28_CLIENT_LOGALI IMPLEMENTATION.


  method set_credit_card.
    me->credit_card = ir_credit_card.
  endmethod.


  method get_credit_card.
    rr_credit_card = me->credit_card.
  endmethod.
ENDCLASS.
