class zcl_34_product_logali definition
  public
  final
  create public .

  public section.
    methods return_category returning value(rv_category) type string.
  protected section.
  private section.
    data category type string value 'A5'.
ENDCLASS.



CLASS ZCL_34_PRODUCT_LOGALI IMPLEMENTATION.


  method return_category.
     rv_category = me->category.
  endmethod.
ENDCLASS.
