class zcx_48_insufficient_bal_logali definition
  public
  inheriting from cx_static_check
  final
  create public .

  public section.

    interfaces if_t100_message .
    interfaces if_t100_dyn_msg .

    constants:
      begin of insufficient_balance,
        msgid type symsgid value 'ZMC_LOGALI',
        msgno type symsgno value '004',
        attr1 type scx_attrname value 'MV_MSGV1',
        attr2 type scx_attrname value 'MV_MSGV2',
        attr3 type scx_attrname value 'MV_MSGV3',
        attr4 type scx_attrname value 'MV_MSGV4',
      end of insufficient_balance.

    data: mv_msgv1 type string,
          mv_msgv2 type string,
          mv_msgv3 type string,
          mv_msgv4 type string.

    methods constructor
      importing
        !textid   like if_t100_message=>t100key optional
        !previous like previous optional
        msgv1     type string optional
        msgv2     type string optional
        msgv3     type string optional
        msgv4     type string optional.

  protected section.
  private section.
endclass.



class zcx_48_insufficient_bal_logali implementation.

  method constructor ##ADT_SUPPRESS_GENERATION.
    call method super->constructor
      exporting
        previous = previous.
    clear me->textid.
    if textid is initial.
      if_t100_message~t100key = if_t100_message=>default_textid.
    else.
      if_t100_message~t100key = textid.
    endif.

    me->mv_msgv1 = msgv1.
    me->mv_msgv2 = msgv2.
    me->mv_msgv3 = msgv3.
    me->mv_msgv4 = msgv4.

  endmethod.
endclass.
