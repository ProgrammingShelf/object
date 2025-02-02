protocol PaymentMethod {
    func processRefund(amount: Double)
}

class CreditCardPayment: PaymentMethod {
    func processRefund(amount: Double) {
        print("Refunding \(amount) to credit card.")
    }
}

class PayPalPayment: PaymentMethod {
    func processRefund(amount: Double) {
        print("Refunding \(amount) via PayPal.")
    }
}

class BankTransferPayment: PaymentMethod {
    func processRefund(amount: Double) {
        print("Refunding \(amount) via bank transfer.")
    }
}
