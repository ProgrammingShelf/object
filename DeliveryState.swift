enum DeliveryState {
    case preparing        // 배송 준비 중
    case shipped          // 발송 완료
    case inTransit        // 배송 중
    case delivered        // 배송 완료
    case returned         // 반품 완료
    
    func isCancelAvailable(by policy: PurchaseCancelPolicy) -> Bool {
        let states = self.getCancelAvailableStates(by: policy)
        return states.contains(self)
    }
    
    private func getCancelAvailableStates(by policy: PurchaseCancelPolicy) -> [DeliveryState] {
        if policy is FreshGroceriesCancelPolicy {
            return [.preparing]
        }
        if policy is ElectronicsCancelPolicy {
            return [.preparing, .shipped, .inTransit, .delivered]
        }
        return []
    }
}
