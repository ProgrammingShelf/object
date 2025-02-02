enum PurchaseState {
    case pending        // 구매 대기 중
    case completed      // 구매 완료
    case failed         // 구매 실패
    case refunded       // 환불 완료
    case cancelled      // 구매 취소
}
