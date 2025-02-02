class FreshGroceriesCancelPolicy: PurchaseCancelPolicy {
    func isCancelAvailable(_ purchase: PurchaseHistory) -> Bool {
        if !purchase.purchaseState.isCancelAvailable(by: self) {
            return false
        }
        
        if !purchase.deliveryState.isCancelAvailable(by: self) {
            return false
        }
        
        return true
    }
}
