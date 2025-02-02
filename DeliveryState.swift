enum DeliveryState {
    case preparing        // 배송 준비 중
    case shipped          // 발송 완료
    case inTransit        // 배송 중
    case delivered        // 배송 완료
    case returned         // 반품 완료
}
