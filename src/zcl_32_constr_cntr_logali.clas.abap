class zcl_32_constr_cntr_logali definition
  public
*  final
  create public .

  public section.

    interfaces zif_09_contract_logali .
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_32_CONSTR_CNTR_LOGALI IMPLEMENTATION.


  method zif_09_contract_logali~create_contract.
    me->zif_09_contract_logali~contract_type = iv_cntr_type.
  endmethod.
ENDCLASS.
