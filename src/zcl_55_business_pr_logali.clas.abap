class zcl_55_business_pr_logali definition
  public
  final
  create public .

  public section.

    methods get_factorial importing iv_number    type i
                          exporting ev_factorial type i.

  protected section.
  private section.
endclass.


class zcl_55_business_pr_logali implementation.

  method get_factorial.

    check iv_number gt 0.

    data(lv_number) = iv_number.

*   Factorial of 4 = 1x2x3x4 = 24

    ev_factorial = 1.

    while lv_number ne 0.
      ev_factorial = ev_factorial * lv_number.
*       lv_number = lv_number - 1.
      lv_number -= 1.
    endwhile.

  endmethod.

endclass.
