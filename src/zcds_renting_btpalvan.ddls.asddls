@AbapCatalog.sqlViewName: 'ZVRENTINBTPALVAN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view ZCDS_RENTING_BTPALVAN
  as select from ZCDS_Cars_BTPALVAN as Cars
  association [1]    to ZCDS_REMDAYS_BTPALVAN as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..*] to ZCDS_BRANDS_BTPALVAN  as _Brands      on Cars.Marca = _Brands.Marca
  association [0..*] to ZCDS_DETCUST_BTPALVAN as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,

      case
      when _RemDays.Dias <= 0 then 0
      when _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
      end as Criticidad,
      
      '' as Estado,

      _Brands.Imagen,
      _DetCustomer

}
