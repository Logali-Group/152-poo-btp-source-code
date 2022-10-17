class zcl_03_employee_logali definition
  public
  final
  create public.

  public section.

    methods constructor importing iv_employee_id type string.

    class-methods class_constructor.

    methods get_employee_id returning value(rv_employee_id) type string.

    class-data company type string read-only.

    class-data log type string.

  protected section.


  private section.
    data employee_id type string.


ENDCLASS.



CLASS ZCL_03_EMPLOYEE_LOGALI IMPLEMENTATION.


  method constructor.
    me->employee_id = iv_employee_id.
    log = |{ log }-Instance Constructor { employee_id }-->|.
  endmethod.


  method get_employee_id.
    rv_employee_id = me->employee_id.
  endmethod.


  method class_constructor.
    zcl_03_employee_logali=>company = 'Logali-Group'.
    log = |{ log }-Static Constructor-->|.
  endmethod.
ENDCLASS.
