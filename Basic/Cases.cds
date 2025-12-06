@AbapCatalog.sqlViewName: 'ZMATCASE'
@EndUserText.label: 'Material Type Text Example'

define view Z_MAT_CASE
  as select from mara
{
  matnr,
  mtart,

  case mtart
    when 'FERT' then 'Finished Product'
    when 'ROH'  then 'Raw Material'
    when 'HALB' then 'Semi-Finished'
    else 'Others'
  end as MaterialTypeText
}
