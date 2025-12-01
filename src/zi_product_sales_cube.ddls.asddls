@AbapCatalog.sqlViewName: 'ZV_PROD'

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface & Analytical view'
@Analytics.dataCategory: #CUBE
define view ZI_Product_sales_cube as select from ztab_productsale
{
     
    key category_id ,
    category_name ,
    @DefaultAggregation: #SUM
    total_sales_amount ,
    currency_code 
}
