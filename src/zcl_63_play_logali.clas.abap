class zcl_63_play_logali definition abstract
  public
  create public .

  public section.
  protected section.

    data players_counter type i.

    methods initialize_game abstract.
    methods create_game abstract importing iv_player type i.
    methods end_game abstract returning value(rv_finalized) type abap_bool.
    methods print_winner abstract.

    methods play final importing iv_players type i.

  private section.
endclass.



class zcl_63_play_logali implementation.

  method play.

    data lv_player type i.
    clear me->players_counter.

    me->players_counter = iv_players.
    me->initialize_game(  ).

    while me->end_game(  ) ne abap_false.

       me->create_game( lv_player ).
       lv_player += 1.

    endwhile.

    me->print_winner(  ).

  endmethod.

endclass.
