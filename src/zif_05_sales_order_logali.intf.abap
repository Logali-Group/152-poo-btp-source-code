interface zif_05_sales_order_logali
  public .
    interfaces zif_04_document_logali.

    methods create_order importing iv_order_id type string.

endinterface.
