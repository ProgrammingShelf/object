class FreshGroceriesCancelPolicy: PurchaseCancelPolicy {
    var cancelAvailablePurchaseStates: [PurchaseState] {
        return [.pending, .completed]
    }
    
    var cancelAvailableDeliveryStates: [DeliveryState] {
        return [.preparing]
    }
    
    func isCancelAvailable(_ purchase: PurchaseHistory) -> Bool {
        return cancelAvailablePurchaseStates.contains(purchase.purchaseState) &&
               cancelAvailableDeliveryStates.contains(purchase.deliveryState)
    }
}
