@AbapCatalog.sqlViewName: 'ZV_PROD_SALECON'
@EndUserText.label: 'Product Sales Pie Chart'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics.query: true
@UI.headerInfo: {
    typeName: 'Product Sales',
    typeNamePlural: 'Product Sales Entries',
    title: { value: 'category_name' }
}
@UI.presentationVariant: [
    {
        sortOrder: [ { by: 'total_sales_amount', direction: #DESC } ],
        visualizations: [ { type: #AS_CHART, qualifier: 'SalesPie' } ]
    }
]
@UI.chart: [{
    qualifier: 'SalesPie',
    chartType: #PIE,
    dimensions: [ 'category_name' ],
    measures: [ 'total_sales_amount' ]
}
]
define view ZC_PRODUCT_CONSUMPTION
  as select from ZI_Product_sales_cube

{
    key category_id,
    key category_name,
    @DefaultAggregation: #SUM
    @Semantics.amount.currencyCode: 'currency_code'
    total_sales_amount,
    currency_code
}


