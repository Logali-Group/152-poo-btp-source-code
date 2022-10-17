class zcl_62_factory_logali definition
  public
  final
  create public .

  public section.

     methods get_shape importing iv_shape_type type string
                       returning value(ro_shape_type) type ref to zif_11_geometric_figure_logali.
  protected section.
  private section.
endclass.



class zcl_62_factory_logali implementation.
  method get_shape.

        case iv_shape_type.
          when 'Circle'.
             ro_shape_type = new zcl_59_circle_logali(  ).
          when 'Square'.
             ro_shape_type = new zcl_60_square_logali(  ).
          when 'Triangle'.
             ro_shape_type = new zcl_61_triangle_logali(  ).
        endcase.

  endmethod.

endclass.
