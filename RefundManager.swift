class RefundManager {
    static let shared = RefundManager()
    
    private init() {}
    
    func refundPurchase(_ purchase: PurchaseHistory, amount: Double) -> Bool {
        guard purchase.purchaseState == .completed || purchase.purchaseState == .cancelled else {
            return false
        }

	for paymentTransaction in purchase.paymentTransactionList {
	    paymentTransaction.processRefund(amount: amount)
	}
	    
	return true
    }
}
