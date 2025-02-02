class RefundManager {
    static let shared = RefundManager()
    
    private init() {}
    
    func refundPurchase(_ purchase: PurchaseHistory, amount: Double) -> PurchaseHistory? {
        guard purchase.purchaseState == .completed || purchase.purchaseState == .cancelled else {
            return nil
        }
        purchase.paymentMethod.processRefund(amount: amount)
        let newPurchaseHistory = PurchaseHistory(purchaseState: .refunded, 
					         deliveryState: purchase.deliveryState)
  	return newPurchaseHistory
    }
}
