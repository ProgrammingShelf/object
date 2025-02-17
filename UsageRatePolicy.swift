class UsageRatePolicy: RatePolicy {
    
    private let customer: ElectronicCustomer
    
    init(customer: ElectronicCustomer) {
        self.customer = customer
    }
    
    func calculateFee(of usage: Double) -> Double {
        var sum: Double = 0
        
        
        for tier in customer.tierList {
            if usage > tier.minLimit {
                sum += tier.usageRate * min((tier.maxLimit - tier.minLimit), (usage - tier.minLimit))
            } else {
                break
            }
        }
        
        return sum
    }
}
