//Example 1

@AbapCatalog.sqlViewName: 'ZMATVIEWS'
@EndUserText.label: 'Material Info'

define view Z_MAT_INFOS as select from makt
{
  key matnr,
      maktx,
      spras
}


//Example 2

@AbapCatalog.sqlViewName: 'ZMATVIEW'
@EndUserText.label: 'Material basic info'

define view Z_MAT_INFO as select from mara
{
  key matnr,
      mtart,
      meins,
      ersda
}

//Example 3 

@AbapCatalog.sqlViewName: 'ZMATVIEW'
@EndUserText.label: 'Material Type FERT'

define view Z_MAT_FERT as
  select from mara
{
  key matnr,
      mtart,
      meins
}
where mtart = 'FERT'
  and meins = 'EA'
