*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section
types: begin of ty_first,
          comp1 type string,
          comp2 type string,
          comp3 type string,
      end of ty_first.
*CCDEF
interface lif_private_helper.

  data ms_first type ty_first.

endinterface.

class lcl_helper definition.

 public section.

    data ms_first_cl type ty_first.

    methods get_first returning value(rs_first) type ty_first.

endclass.
