@EndUserText.label : 'Consumption - Item'
@AccessControl.authorizationCheck : #NOT_REQUIRED

@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'ID', 'IDITEM' ]

define view entity zc_items_8778
  as projection on zr_items_8778
{
  key ID               as ID,
  key IDitem           as IDITEM,
      @Search.defaultSearchElement: true
      Name             as NAME,
      Description      as DESCRIPTION,
      ReleaseDate      as RELEASEDATE,
      DiscontinuedDate as DISCONTINUEDDATE,
      Price            as PRICE,
      Height           as HEIGHT,
      Width            as WIDTH,
      Depth            as DEPTH,
      Quantity         as QUANTITY,
      Unitofmeasure    as UNITOFMEASURE,
      
      //local ETag field
      LocalLastChangedAt,

      //Associations redirected to parent
      _Header : redirected to parent zc_header_8778
}
