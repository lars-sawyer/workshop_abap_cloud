CLASS z110101_cl_01_parallel_task DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z110101_cl_01_parallel_task IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

"this is an example of parallel tasks

    DATA:
      l_in_tab TYPE cl_abap_parallel=>t_in_inst_tab,
      l_inst   TYPE REF TO lcl_parallel_task.

    DATA(l_ref) = NEW cl_abap_parallel( ).

    DO 1000 TIMES.
      APPEND NEW lcl_parallel_task( sy-index ) TO l_in_tab.
    ENDDO.

    l_ref->run_inst(
      EXPORTING p_in_tab = l_in_tab
      IMPORTING p_out_tab = DATA(l_out_tab) ).

    LOOP AT l_out_tab ASSIGNING FIELD-SYMBOL(<ls_out>) WHERE inst IS NOT INITIAL.
      l_inst ?= <ls_out>-inst.
      " use result in L_INST->RESULT. <br>
    ENDLOOP.


  ENDMETHOD.

ENDCLASS.
