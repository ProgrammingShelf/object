class BasicMultipleRatePolicy: RatePolicy {
    private let ratePolicyList: [RatePolicy]
    
    init(ratePolicyList: [RatePolicy]) {
        self.ratePolicyList = ratePolicyList
    }
    
    func calculateFee(of usage: Double) -> Double {
        return ratePolicyList.map({ $0.calculateFee(of: usage) }).reduce(0, +)
    }
}
