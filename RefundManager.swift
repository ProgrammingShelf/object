class RefundManager {
    static let shared = RefundManager()
    
    private init() {}
    
    func refundPurchase(_ purchase: PurchaseHistory, amount: Double) {
        guard purchase.purchaseState == .completed || purchase.purchaseState == .cancelled else {
            return
        }
        purchase.purchaseState = .refunded
        purchase.paymentMethod.processRefund(amount: amount)
    }
}
