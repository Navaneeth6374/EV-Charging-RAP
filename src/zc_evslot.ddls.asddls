@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EVslot'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_EVSLOT 
    as projection on ZI_EVSLOT
{
    key SlotId,
    StationId,
    SlotDate,
    StartTime,
    EndTime,
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

      _Station : redirected to parent ZC_EVSTATION
}
