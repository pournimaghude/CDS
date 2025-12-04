// 1) Inner Join
@AbapCatalog.sqlViewName: 'ZMATJOINV'
@EndUserText.label: 'Material with text'

define view Z_MAT_INFOS
  as select from mara as a
    inner join   marc as m on  a.matnr = m.matnr
                           and m.werks   = '1111'
{
  key a.matnr,
      a.mtart,
      m.werks,
      m.dispo
}
