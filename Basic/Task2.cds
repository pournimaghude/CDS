// Example 1

define view Z_MAT_BY_MTART
  with parameters
    p_mtart : mtart
as select from mara
{
  key matnr,
      mtart,
      meins
}
where mtart = :p_mtart


// Example 2

@AbapCatalog.sqlViewName: 'ZMATVIEWS'
@EndUserText.label: 'Material List'

define view Z_MAT_INFOS
  with parameters
    p_date : ersda
  as select from mara
{
  key matnr,
      mtart,
      meins,
      ersda
}
where
  ersda = :p_date and
  mtart = 'FERT'
