@AbapCatalog.sqlViewName: 'ZV_DET_CUSTJG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detail customer'
@Metadata.allowExtensions: true
define view z_b_det_customerjg
  as select from zrent_customerjg
{
  key doc_id    as Id,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Email,
      cntr_type as TipoContrato
}
