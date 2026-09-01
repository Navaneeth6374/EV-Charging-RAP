CLASS lhc_Evbooking DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR Evbooking RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR Evbooking RESULT result.

ENDCLASS.

CLASS lhc_Evbooking IMPLEMENTATION.

   METHOD get_instance_authorizations.

    result = VALUE #(
      FOR key IN keys
      (
        %tky    = key-%tky
        %update = if_abap_behv=>auth-allowed
        %delete = if_abap_behv=>auth-allowed
      )
    ).

  ENDMETHOD.


  METHOD get_global_authorizations.

    result = VALUE #(
      %create = if_abap_behv=>auth-allowed
    ).

  ENDMETHOD.

ENDCLASS.
