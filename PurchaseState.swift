enum PurchaseState {
    case pending        // 구매 대기 중
    case completed      // 구매 완료
    case failed         // 구매 실패
    case refunded       // 환불 완료
    case cancelled      // 구매 취소
    
    func isCancelAvailable(by policy: PurchaseCancelPolicy) -> Bool {
        let states = self.getCancelAvailableStates(by: policy)
        return states.contains(self)
    }
    
    private func getCancelAvailableStates(by policy: PurchaseCancelPolicy) -> [PurchaseState] {
        if policy is FreshGroceriesCancelPolicy {
            return [.pending, .completed]
        }
        if policy is ElectronicsCancelPolicy {
            return [.pending, .completed]
        }
        return []
    }
}
