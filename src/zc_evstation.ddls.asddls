@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'station'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_EVSTATION 
  provider contract transactional_query
    as projection on ZI_EVSTATION
{
    key StationId,
    StationName,
    Location,
    Status,
     @Semantics.user.createdBy: true
      LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      LocalLastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
    _Slot : redirected to composition child ZC_EVSLOT
}
