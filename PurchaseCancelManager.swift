class PurchaseCancelManager {
    static let shared = PurchaseCancelManager()
    
    private init() {}
    
    func cancelPurchase(_ purchase: PurchaseHistory, with policy: PurchaseCancelPolicy) -> Bool {
        guard policy.isCancelAvailable(purchase) else {
            return false
        }
	return true
    }
}
