@AbapCatalog.sqlViewName: 'ZMATVIEWS'
@EndUserText.label: 'Calculated Fields Example'

define view Z_MAT_INFOS
  as select from    marc
    inner join      mara on mara.matnr = marc.matnr
    left outer join mard on  mara.matnr = mard.matnr
                         and marc.werks = mard.werks
{
  key mara.matnr,
      mara.mtart,
      marc.werks,
      mard.labst,

      concat( concat(mara.matnr, '-'), marc.werks ) as FullText,

      mard.labst * 10 as StockX10,

      case when mard.labst > 0 then 'Available'
           else 'Out of Stock'
      end as StockStatus
}
