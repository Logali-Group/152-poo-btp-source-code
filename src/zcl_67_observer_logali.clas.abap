class zcl_67_observer_logali definition abstract
  public
  create public .

  public section.

    methods on_modified_state abstract
            for event modified_state of zcl_66_processes_logali
            importing ev_new_state.

  protected section.
  private section.
endclass.



class zcl_67_observer_logali implementation.
endclass.
