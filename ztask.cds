//Example For practice

@AbapCatalog.sqlViewName:'ZMATVIEWS'
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
      meins =  'EA'
  and ersda <= :p_date
