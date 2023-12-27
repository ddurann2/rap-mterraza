CLASS zcl_carga_datos_u4 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_carga_datos_u4 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA lt_zheader_8778 TYPE TABLE OF zheader_8778.

    DATA: lt_ZITEMS_8778    TYPE TABLE OF ZITEMS_8778.

*   fill internal zheader_8778 table (itab)
    lt_zheader_8778 = VALUE #(
            (
                id = '1'
                email  = 'mterraza@primegroup.cl'
                firstname = 'marcelo'
                lastname = 'terraza'
                country = 'cl'
                createon = '20231221'
                deliverydate = '20241221'
                orderstatus = '1'
                imageurl = 'https://www.infobae.com/new-resizer/ywVegScU33VHbnLuby5uaq5V4uY=/992x992/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/W2TI6MOVD5DIHFLWL3UST4LTGE.jpg'
            )

            (
                id = '2'
                email  = 'pterraza@primegroup.cl'
                firstname = 'pablo'
                lastname = 'terraza'
                country = 'cl'
                createon = '20231221'
                deliverydate = '20241221'
                orderstatus = '1'
                imageurl = 'https://www.infobae.com/new-resizer/ywVegScU33VHbnLuby5uaq5V4uY=/992x992/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/W2TI6MOVD5DIHFLWL3UST4LTGE.jpg'
            )
     ).

*   delete existing entries in the database table
    DELETE FROM zheader_8778.

*   insert the new table entries
    INSERT zheader_8778 FROM TABLE @lt_zheader_8778.

*   output the result as a console message
    out->write( |{ sy-dbcnt } zheader_8778 entries inserted successfully!| ).

        lt_ZITEMS_8778 = VALUE #(
              (
                id = '1'
                iditem = '1'
                name = 'MANZANA'
                description = 'MANZANA'
                releasedate = '20231221'
                discontinueddate  = '20231221'
                price  = 1000
                height  = 5
                width  = 10
                depth  = 15
                quantity = 50
                unitofmeasure = 'KG'
                )
               (
                id = '1'
                iditem = '2'
                name = 'DURAZNOS'
                description = 'DURAZNOS'
                releasedate = '20231221'
                discontinueddate  = '20231221'
                price  = 800
                height  = 5
                width  = 10
                depth  = 15
                quantity = 30
                unitofmeasure = 'KG'
                )

                  (
                id = '2'
                iditem = '1'
                name = 'ARROZ'
                description = 'ARROZ'
                releasedate = '20231221'
                discontinueddate  = '20231221'
                price  = 1200
                height  = 5
                width  = 10
                depth  = 15
                quantity = 300
                unitofmeasure = 'KG'
                )
  ) .


*   delete existing entries in the database table
    DELETE FROM ZITEMS_8778.

*   insert the new table entries
    INSERT ZITEMS_8778 FROM TABLE @lt_ZITEMS_8778.

*   output the result as a console message
    out->write( |{ sy-dbcnt } ZITEMS_8778 entries inserted successfully!| ).

**   delete existing entries in the database table
*    DELETE FROM ZITEMS_8778.
*
**   delete existing entries in the database table
*    DELETE FROM zheader_8778.

  ENDMETHOD.
ENDCLASS.
