@AbapCatalog.sqlViewName: 'ZVREMDAYBTPALVAN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
define view ZCDS_REMDAYS_BTPALVAN
  as select from zcars_btpalvan
{
  key matricula as Matricula,
      marca     as Marca,
      case
      when alquilado <> ''
      then
      dats_days_between(cast( $session.system_date as abap.dats ) , alq_hasta)
      end       as Dias

}
