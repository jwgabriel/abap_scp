@AbapCatalog.sqlViewName: 'ZV_RENTJG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true

define view z_i_rentingjg 
    as select from z_b_carsjg as Cars
    association [1] to z_b_rem_daysjg as _RemDays on Cars.Matricula = _RemDays.Matricula
    association [0..*] to z_b_brandsjg as _Brands on Cars.Marca = _Brands.Marca
    association [0..*] to z_b_det_customerjg as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
    key Matricula,
    Marca,
    Modelo,
    Color,
    Motor,
    Potencia,
    UndPotencia,
    Combustible,
    Consumo,
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
        end as TiempoRenta,
        '' as Estado,
    _Brands.Imagen,
    _DetCustomer
}
