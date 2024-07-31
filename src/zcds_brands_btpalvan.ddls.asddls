@AbapCatalog.sqlViewName: 'ZVBRANDSBTPALVAN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view ZCDS_BRANDS_BTPALVAN
  as select from zbrands_btpalvan
{
  key marca as Marca,
      @UI.hidden: true
      url   as Imagen

}
