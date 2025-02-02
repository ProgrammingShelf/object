class PurchaseCancelManager {
    static let shared = PurchaseCancelManager()
    
    private init() {}
    
    func cancelPurchase(_ purchase: PurchaseHistory, with policy: PurchaseCancelPolicy) -> PurchaseHistory {
        guard policy.isCancelAvailable(purchase) else {
            return purchase
        }
        let newPurchaseHistory = PurchaseHistory(purchaseState: .cancelled, 
																					       deliveryState: purchase.deliveryState)
			  return newPurchaseHistory
    }
}
