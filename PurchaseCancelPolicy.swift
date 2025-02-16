protocol PurchaseCancelPolicy {
    func isCancelAvailable(_ purchase: PurchaseHistory) -> Bool
    var cancelAvailablePurchaseStates: [PurchaseState] { get }
    var cancelAvailableDeliveryStates: [DeliveryState] { get }
}
