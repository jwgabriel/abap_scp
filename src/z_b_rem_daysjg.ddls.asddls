@AbapCatalog.sqlViewName: 'ZV_REM_DAYSJG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remainig days'
define view z_b_rem_daysjg as select from zrent_carsjg
{
    key matricula as Matricula,
        marca as Marca,
        case 
        when alq_hasta <> ''
        then dats_days_between( cast($session.system_date as abap.dats ),alq_hasta) 
        end as Dias
}
