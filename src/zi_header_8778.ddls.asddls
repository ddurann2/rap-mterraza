@EndUserText.label: 'Interface Header'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_HEADER_8778
  provider contract transactional_interface
  as projection on zr_header_8778
{
  key id         ,
      email       ,
      firstname  ,
      lastname    ,
      country     ,
      createon     ,
      deliverydate ,
      orderstatus ,
      imageurl    ,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Items : redirected to composition child ZI_ITEMS_8778


}
