class ElectronicsCancelPolicy: PurchaseCancelPolicy {
    var cancelAvailablePurchaseStates: [PurchaseState] {
        return [.pending, .completed]
    }
    
    var cancelAvailableDeliveryStates: [DeliveryState] {
        return [.preparing, .shipped, .inTransit, .delivered]
    }
	
    internal var deadline: Int {
        return 31
    }
    
    func isCancelAvailable(_ purchase: PurchaseHistory) -> Bool {
        let passedDays = Calendar.current.dateComponents([.day], from: purchase.purchaseDate, to: Date()).day ?? 0
        return cancelAvailablePurchaseStates.contains(purchase.purchaseState) &&
               cancelAvailableDeliveryStates.contains(purchase.deliveryState) &&
               passedDays <= deadline
    }
}
