## What is a CDS View?
A CDS View is:
 - A database view written using ABAP syntax.
 - Runs directly on HANA DB.
 - Faster than classical SELECT.
 - Reusable for Reports, ALV, Fiori, RAP, OData.

## Where CDS is Created
You create CDS in:
- Eclipse / ADT → DDL Source
- Not in SE11.
- Not in SE38.

## Smallest CDS Structure
General Format,
``` abap
define view Z_MY_VIEW
  as select from table_name
{
   field1,
   field2
}
```

## First Hands-On Task
Create CDS View on table MARA.
Steps:
- Go to ADT (Eclipse)
- Package → Right click → New → Data Definition
- Name: Z_I_MATERIAL_BASIC
  - Paste below code:

``` abap
@AbapCatalog.sqlViewName: 'ZMATBASIC'
@EndUserText.label: 'Basic Material CDS'
@AccessControl.authorizationCheck: #NOT_REQUIRED

define view Z_I_MATERIAL_BASIC
  as select from mara
{
  key matnr,
      mtart,
      matkl,
      ersda
}
```
- Activate
- Right click → Data Preview

