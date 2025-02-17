protocol RatePolicy {
    func calculateFee(of usage: Double) -> Double
}
