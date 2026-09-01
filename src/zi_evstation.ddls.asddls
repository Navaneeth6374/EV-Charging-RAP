@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ev station'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_EVSTATION
  as select from zev_station
  composition [0..*] of ZI_EVSLOT as _Slot
{
  key station_id            as StationId,
      station_name          as StationName,
      location              as Location,
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
       _Slot
}
