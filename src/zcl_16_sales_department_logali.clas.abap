class zcl_16_sales_department_logali definition
  public
  final
  create public .

  public section.
   interfaces zif_05_sales_order_logali.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_16_SALES_DEPARTMENT_LOGALI IMPLEMENTATION.


  method zif_04_document_logali~set_sales_doc.

  endmethod.


  method zif_05_sales_order_logali~create_order.

  endmethod.
ENDCLASS.
