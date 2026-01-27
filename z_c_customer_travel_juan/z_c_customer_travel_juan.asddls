@EndUserText.label: 'Entidad de Consumo de Cliente'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true

define root view entity Z_C_CUSTOMER_TRAVEL_JUAN
  provider contract transactional_query
  as projection on Z_R_CUSTOMER_TRAVEL_JUAN
{
  key CustomerUUID,

  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
  @Search.ranking: #HIGH
  @ObjectModel.text.element: [ 'CustomerLastName' ]
  key CustomerID,   // <-- IMPORTANTE: debe ser key igual que en la raíz

  Description,

  _Customer.LastName as CustomerLastName,

  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LocalLastChangedAt,

  @Semantics.systemDateTime.lastChangedAt: true
  LastChangedAt,

  _Customer
}
