class FixedRatePolicy: RatePolicy {
    
    private let customer: ElectronicCustomer
    
    init(customer: ElectronicCustomer) {
        self.customer = customer
    }
    
    func calculateFee(of usage: Double) -> Double {
        for tier in customer.tierList where usage <= tier.maxLimit {
            return tier.fixedRate
        }
        return 0
    }
}
