@AbapCatalog.sqlViewName: 'ZLSWS_SQL_01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'cds - fiori elements- read data'
define view zlsws_cds_fe_data as select from zlsws_t_vbak {
   key vbeln,
    descr
}
