
class LCL_PARALLEL_TASK definition.
   public section.
    interfaces IF_ABAP_PARALLEL.
    methods CONSTRUCTOR importing P_INPUT type I.
     data INPUT  type I.
     data RESULT type I.



 endclass.

 class LCL_PARALLEL_TASK implementation.

   method CONSTRUCTOR.
     SUPER->CONSTRUCTOR( ).
     INPUT = P_INPUT.
   endmethod.

   method IF_ABAP_PARALLEL~DO.
     RESULT = INPUT * INPUT.
   endmethod.

 endclass.
