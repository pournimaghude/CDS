"Example 1

  @AbapCatalog.sqlViewName: 'ZMATVIEWS'
@EndUserText.label: 'Material List'

define view Z_MAT_INFOS
  as select from makt
{
  key matnr,
      maktx,
      spras
}
