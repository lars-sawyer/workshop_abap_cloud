CLASS zlsws_cl_generate_test_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zlsws_cl_generate_test_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    MODIFY zlsws_t_vbak FROM TABLE @(
        VALUE #(
            ( client ='100' vbeln ='0000011111' descr =  'auftrag1' )
            ( client ='100' vbeln ='0000011112'  )
        )
        ).


    COMMIT WORK AND WAIT.

    out->write(
      EXPORTING
        data   = 'datenbank erfolgreich gefüllt'

    ).

  ENDMETHOD.

ENDCLASS.
