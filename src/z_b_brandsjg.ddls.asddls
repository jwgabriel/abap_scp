@AbapCatalog.sqlViewName: 'ZV_BRANDSJG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view z_b_brandsjg as select from zrent_brandsjg
{
    key marca as Marca,
    @UI.hidden: true
        url as Imagen
}
