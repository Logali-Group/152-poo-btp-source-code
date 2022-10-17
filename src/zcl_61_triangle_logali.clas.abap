class zcl_61_triangle_logali definition
  public
  final
  create public .

  public section.
    interfaces zif_11_geometric_figure_logali.
    aliases draw_shape for zif_11_geometric_figure_logali~draw_shape.
  protected section.
  private section.
endclass.



class zcl_61_triangle_logali implementation.
  method draw_shape.
    rv_shape = 'Traingle'.
  endmethod.
endclass.
