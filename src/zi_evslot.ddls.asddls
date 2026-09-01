@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EV SOLT'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_EVSLOT
  as select from zev_slot
  
   association to parent ZI_EVSTATION as _Station
    on $projection.StationId = _Station.StationId
{
  key slot_id               as SlotId,
      station_id            as StationId,
      slot_date             as SlotDate,
      start_time            as StartTime,
      end_time              as EndTime,
      status                as Status,
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
       _Station
}
