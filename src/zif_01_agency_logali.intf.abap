interface zif_01_agency_logali
  public.

    class-data agency_address type string.

    methods: set_name importing iv_type        type string,
             get_name returning value(rv_type) type string.

    class-methods set_address importing iv_address type string.

endinterface.
