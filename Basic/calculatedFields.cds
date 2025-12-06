@AbapCatalog.sqlViewName: 'ZMATVIEWS'
@EndUserText.label: 'Calculated Fields Example'

define view Z_MAT_INFOS
  as select from mara
{
  matnr,
  mtart,
  concat_with_space(matnr, mtart, 1)   as FullMatText,
  concat(concat(matnr, ' - '),  mtart) as materialWithType,
  upper(mtart)                         as UpperDesc,
  lower(mtart)                         as LowerDesc,
  substring(matnr, 1, 3)               as First3,
  length(mtart)                        as DescLength
}
