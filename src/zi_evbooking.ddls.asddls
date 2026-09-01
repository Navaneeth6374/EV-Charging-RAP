@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EV booking'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_EVBOOKING
  as select from zev_customer
  association to ZI_EVSTATION as _Station
    on $projection.StationId = _Station.StationId

  association to ZI_EVSLOT as _Slot
    on $projection.SlotId = _Slot.SlotId
{
  key booking_id            as BookingId,
      vehicle_no            as VehicleNo,
      customer_name         as CustomerName,
      customer_id           as CustomerId,
      station_id            as StationId,
      slot_id               as SlotId,
      booking_status        as BookingStatus,
       @Semantics.user.createdBy: true
      local_created_by as LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      local_created_at as LocalCreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt,
       _Station,
      _Slot
}
