@AbapCatalog.sqlViewName: 'ZLSWS_SQL_02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@EndUserText.label: 'cds - fiori elements- ui'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@UI: {
 headerInfo: { typeName: 'Salesorders', typeNamePlural: 'Test' } 
 }

@Search.searchable: true
define view ZLSWS_CDS_FE_UI as select from zlsws_cds_fe_data {

    @UI: {
      lineItem: [ { position: 10, label: 'Salesorder' } ]
      }
   key vbeln,

      @UI: {
      lineItem: [ { position: 40, label: 'Beschreibung' } ]
      }
   descr
   
}
