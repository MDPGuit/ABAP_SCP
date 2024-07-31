@AbapCatalog.sqlViewName: 'ZVCARSBTPALVAN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cars'
define view ZCDS_Cars_BTPALVAN
  as select from zcars_btpalvan
{

  key matricula   as Matricula,
      marca       as Marca,
      modelo      as Modelo,
      color       as Color,
      motor       as Motor,
      potencia    as Potencia,
      und_potecia as Unidad,
      combustible as Combustible,
      fecha_fabr  as FechaFabricacion,
      puertas     as Puertas,
      precio      as Precio,
      moneda      as Moneda,
      alquilado   as Alquilado,
      alq_desde   as Desde,
      alq_hasta   as Hasta
}
