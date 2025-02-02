class ElectronicsCancelPolicy: PurchaseCancelPolicy {
    
    internal var deadline: Int {
        return 31
    }
    
    func isCancelAvailable(_ purchase: PurchaseHistory) -> Bool {
        if !purchase.purchaseState.isCancelAvailable(by: self) {
            return false
        }
        
        if !purchase.deliveryState.isCancelAvailable(by: self) {
            return false
        }
        
        let passedDays = Calendar.current.dateComponents([.day], from: purchase.purchaseDate, to: Date()).day ?? 0

				if passedDays > deadline {
						return false
				}

        return true
    }
}
