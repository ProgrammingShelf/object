class AdditionalRatePolicy: RatePolicy {
    let previous: RatePolicy
    
    init(previous: RatePolicy) {
        self.previous = previous
    }
    
    func calculateFee(of usage: Double) -> Double {
        let fee = previous.calculateFee(of: usage)
        return afterCalculation(fee, using: usage)
    }
    
    func afterCalculation(_ fee: Double, using usage: Double) -> Double {
        fatalError("should be overrided")
    }
}
