@AccessControl.authorizationCheck : #NOT_REQUIRED
@EndUserText.label : 'Consumption - Header'

@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'ID' ]

define root view entity zc_header_8778
  provider contract transactional_query
  as projection on zr_header_8778 
{
  key id           as ID,
      @Search.defaultSearchElement: true
      email        as EMAIL,
      firstname    as FIRSTNAME,
      lastname     as LASTNAME,
      country      as COUNTRY,
      createon     as CREATEON,
      deliverydate as DELIVERYDATE,
      orderstatus  as ORDERSTATUS,
      imageurl     as IMAGEURL,

      //local ETag field
      LocalLastChangedAt,

      //Associations redirected to composition child
      _Items : redirected to composition child zc_items_8778
}
