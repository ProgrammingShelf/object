protocol PurchaseCancelPolicy {
    func isCancelAvailable(_ purchase: PurchaseHistory) -> Bool
}
