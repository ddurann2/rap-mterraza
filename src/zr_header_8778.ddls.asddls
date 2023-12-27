@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Header'
define root view entity zr_header_8778
  as select from zheader_8778  
  composition [0..*] of zr_items_8778 as _Items    
{
  key id,
      email,
      firstname,
      lastname,
      country,
      createon,
      deliverydate,
      orderstatus,
      imageurl,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      //local ETag field
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      //total ETag
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      //Associations
      _Items
} 

 
 