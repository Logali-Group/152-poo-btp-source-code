class zcl_26_plant_logali definition
  public
  final
  create public .

  public section.
    methods assign_company importing ir_co_company type ref to zif_08_co_company_logali
                           returning value(rv_plant) type string.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_26_PLANT_LOGALI IMPLEMENTATION.


  method assign_company.

    rv_plant = |Plant was assigned to....{ ir_co_company->define_company(  ) }|.

  endmethod.
ENDCLASS.
