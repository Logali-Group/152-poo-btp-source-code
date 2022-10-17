class zcl_64_monopoly_logali definition inheriting from zcl_63_play_logali
  public
  final
  create public .

  public section.
  protected section.
    METHODS: initialize_game REDEFINITION,
             create_game REDEFINITION,
             end_game REDEFINITION,
             print_winner REDEFINITION.
  private section.
endclass.



class zcl_64_monopoly_logali implementation.
  method create_game.

  endmethod.

  method end_game.

  endmethod.

  method initialize_game.

  endmethod.

  method print_winner.

  endmethod.

endclass.
