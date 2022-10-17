class zcx_54_excecution_logali definition
  public
  final
  create public .

  public section.

    methods raise_exception_1 importing io_previous type ref to cx_root optional
                              raising   zcx_51_exception1_logali.

    methods raise_exception_2 importing io_previous type ref to cx_root optional
                              raising   zcx_52_exception2_logali.

    methods raise_exception_3 importing io_previous type ref to cx_root optional
                              raising   zcx_53_exception3_logali.

  protected section.
  private section.
endclass.



class zcx_54_excecution_logali implementation.
  method raise_exception_1.
     raise exception type zcx_51_exception1_logali
         exporting
            previous = io_previous.
  endmethod.

  method raise_exception_2.
     raise exception type zcx_52_exception2_logali
         exporting
            previous = io_previous.
  endmethod.

  method raise_exception_3.
    raise exception type zcx_53_exception3_logali
         exporting
            previous = io_previous.
  endmethod.

endclass.
