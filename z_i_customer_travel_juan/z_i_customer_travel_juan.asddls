@EndUserText.label: 'Entidad Interfaz de Cliente'
@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity Z_I_CUSTOMER_TRAVEL_JUAN
  provider contract transactional_interface
  as projection on Z_R_CUSTOMER_TRAVEL_JUAN
{
  key CustomerUUID,
  key CustomerID,

  Description,

  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LocalLastChangedAt,

  @Semantics.systemDateTime.lastChangedAt: true
  LastChangedAt,

  // Publicación de la asociación, sin proyectar sus campos
  _Customer
}
