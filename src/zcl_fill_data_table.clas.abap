CLASS zcl_fill_data_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_data_table IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   DATA gt_product_sales TYPE STANDARD TABLE OF ztab_productsale.
 DELETE FROM ztab_productsale.
 gt_product_sales = VALUE #(

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00001' category_name = 'Electronics'
        total_sales_amount = '1500.50' currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00001' category_name = 'Electronics'
        total_sales_amount = '899.99'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00002' category_name = 'Books'
        total_sales_amount = '250.00'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00002' category_name = 'Books'
        total_sales_amount = '125.75'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00003' category_name = 'Clothing'
        total_sales_amount = '999.99'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00003' category_name = 'Clothing'
        total_sales_amount = '450.45'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00004' category_name = 'Sports'
        total_sales_amount = '650.00'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00004' category_name = 'Sports'
        total_sales_amount = '320.10'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00005' category_name = 'Beauty'
        total_sales_amount = '199.99'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00005' category_name = 'Beauty'
        total_sales_amount = '349.49'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00006' category_name = 'Toys'
        total_sales_amount = '89.90'   currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00006' category_name = 'Toys'
        total_sales_amount = '145.00'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00007' category_name = 'Furniture'
        total_sales_amount = '2400.00' currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00007' category_name = 'Furniture'
        total_sales_amount = '1899.95' currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00008' category_name = 'Food'
        total_sales_amount = '55.25'   currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00008' category_name = 'Food'
        total_sales_amount = '120.75'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00009' category_name = 'Automotive'
        total_sales_amount = '800.00'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00009' category_name = 'Automotive'
        total_sales_amount = '1299.99' currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00010' category_name = 'Home Appliances'
        total_sales_amount = '450.00'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00010' category_name = 'Home Appliances'
        total_sales_amount = '775.25'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00001' category_name = 'Electronics'
        total_sales_amount = '220.00'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00002' category_name = 'Books'
        total_sales_amount = '45.00'   currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00003' category_name = 'Clothing'
        total_sales_amount = '310.50'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00004' category_name = 'Sports'
        total_sales_amount = '950.00'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00005' category_name = 'Beauty'
        total_sales_amount = '510.00'  currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00006' category_name = 'Toys'
        total_sales_amount = '78.95'   currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00007' category_name = 'Furniture'
        total_sales_amount = '3200.00' currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00008' category_name = 'Food'
        total_sales_amount = '15.99'   currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00009' category_name = 'Automotive'
        total_sales_amount = '1400.50' currency_code = 'INR' )

      ( client = sy-mandt  sales_id = cl_system_uuid=>create_uuid_x16_static( )
        category_id = '00010' category_name = 'Home Appliances'
        total_sales_amount = '999.99'  currency_code = 'INR' )

    ).

*    " Insert new data
    INSERT ztab_productsale FROM TABLE @gt_product_sales.
*
*
*    out->write( gt_product_sales ).

  ENDMETHOD.
ENDCLASS.
