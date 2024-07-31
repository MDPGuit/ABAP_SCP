@AbapCatalog.sqlViewName: 'ZVDETCUSBTPALVAN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detail Customers'
@Metadata.allowExtensions: true
define view ZCDS_DETCUST_BTPALVAN
  as select from zcustom_btpalvan
{
  key doc_id    as DocId,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Email,
      cntr_type as TipoContrato
}
