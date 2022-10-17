*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
*CCIMP

CLASS lcl_helper IMPLEMENTATION.

  METHOD get_first.

  ENDMETHOD.

ENDCLASS.

types: begin of ty_first2,
          comp1 type string,
          comp2 type string,
          comp3 type string,
      end of ty_first2.

interface lif_private_helper2.

  data ms_first type ty_first.

endinterface.

class lcl_helper2 definition.

 public section.

    data ms_first_cl type ty_first.

    methods get_first returning value(rs_first) type ty_first.

endclass.

CLASS lcl_helper2 IMPLEMENTATION.

  METHOD get_first.

  ENDMETHOD.

ENDCLASS.
