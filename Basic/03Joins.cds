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

// 2) Inner Join 
@AbapCatalog.sqlViewName: 'ZMATVIEWS'
@EndUserText.label: 'Material with text'

define view Z_MAT_INFOS as
  select from mara
    inner join makt
      on makt.matnr = mara.matnr
     and makt.spras = 'E'
{
  key mara.matnr,
      mara.mtart,
      mara.meins,
      makt.maktx
}

// 3) left outer Join 
define view Z_MAT_LEFTJOIN as
  select from mara
    left outer join makt
      on makt.matnr = mara.matnr
{
  key mara.matnr,
      mara.mtart,
      makt.maktx
}
