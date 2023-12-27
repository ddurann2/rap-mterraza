@EndUserText.label: 'Booking - Interface'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZI_ITEMS_8778
  as projection on zr_items_8778
{
  key ID,
  key IDitem,
      Name,
      Description,
      ReleaseDate,
      DiscontinuedDate,
      Price,
      Height,
      Width,
      Depth,
      Quantity,
      Unitofmeasure,
      /* Associations */
      _Header : redirected to parent ZI_HEADER_8778
}
