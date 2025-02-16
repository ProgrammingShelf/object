struct PurchaseHistory {
    let purchaseState: PurchaseState
    let deliveryState: DeliveryState
    let paymentTransaction: [PaymentTransaction]
    let purchaseDate: Date 
}
