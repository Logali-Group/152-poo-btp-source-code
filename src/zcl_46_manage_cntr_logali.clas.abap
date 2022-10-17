class zcl_46_manage_cntr_logali definition
  public
  final
  create public .

  public section.

    methods check_user importing iv_user type syuname
                       raising   zcx_45_auth_logali.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_46_MANAGE_CNTR_LOGALI IMPLEMENTATION.


  method check_user.

      if sy-uname eq 'CB9980000130'.

         raise exception type zcx_45_auth_logali
           exporting
             textid   = zcx_45_auth_logali=>no_auth
*             previous =
             msgv1    = |{ sy-uname }|
             msgv2    = 'Edit Contract'
*             msgv3    =
*             msgv4    =
         .

      else.

      endif.
  endmethod.
ENDCLASS.
