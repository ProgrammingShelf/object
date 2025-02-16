protocol PaymentMethod {
    func processRefund(amount: Double) -> Bool
}

class CreditCardPayment: PaymentMethod {
    func processRefund(amount: Double) -> Bool {
        print("Refunding \(amount) to credit card.")
        return true
    }
}

class PayPalPayment: PaymentMethod {
    func processRefund(amount: Double) -> Bool {
        print("Refunding \(amount) via PayPal.")
        return true
    }
}

class BankTransferPayment: PaymentMethod {
    func processRefund(amount: Double) -> Bool {
        print("Refunding \(amount) via bank transfer.")
        return true
    }
}
