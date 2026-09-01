@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EVbooking'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity ZC_EVBOOKING 
   provider contract transactional_query  
     as projection on ZI_EVBOOKING
{
    key BookingId,
    VehicleNo,
    CustomerName,
    CustomerId,
    StationId,
    SlotId,
    BookingStatus,
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

      _Station : redirected to ZC_EVSTATION,
      _Slot    : redirected to ZC_EVSLOT
}
