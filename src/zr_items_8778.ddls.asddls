@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zr_items_8778 as 
  select from zitems_8778

  association to parent zr_header_8778 as _Header
             on $projection.ID      = _Header.id
                 
{
    key id           as ID,
    key iditem       as IDitem,    
    name             as Name,
    description      as Description,
    releasedate      as ReleaseDate,
    discontinueddate as DiscontinuedDate,
    price            as Price,  
   @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
    height           as Height,
   @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
    width            as Width,
   @Semantics.quantity.unitOfMeasure : 'unitofmeasure'    
    depth            as Depth,
   @Semantics.quantity.unitOfMeasure : 'unitofmeasure'    
    quantity         as Quantity,
    unitofmeasure    as Unitofmeasure,
        
    //local ETag
    @Semantics.systemDateTime.localInstanceLastChangedAt: true    
    local_last_changed_at as LocalLastChangedAt,
    
    //Association
    _Header    
}

 
