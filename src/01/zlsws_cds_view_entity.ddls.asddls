@AccessControl.authorizationCheck: #CHECK
define view entity zlsws_cds_view_entity 
as select from zlsws_t_vbak
    {
      key vbeln

    }
