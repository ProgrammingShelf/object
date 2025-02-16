class RefundManager {
    static let shared = RefundManager()
    
    private init() {}
    
    func refundPurchase(_ purchase: PurchaseHistory, amount: Double) -> [(Bool, String)] {
        guard purchase.purchaseState == .completed || purchase.purchaseState == .cancelled else {
            return purchase.paymentTransactionList.map({ (false, $0.uid) }) 
        }

	var resultList: [(Bool, String)] = []

	for paymentTransaction in purchase.paymentTransactionList {
	    let result = paymentTransaction.processRefund(amount: amount)
	    resultList.append((result, paymentTransaction.uid))
	}
	    
	return resultList
    }
}
