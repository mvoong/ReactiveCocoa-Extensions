import ReactiveCocoa

public extension UITextField {
    public func rac_textSignalProducer<String>() -> SignalProducer<String, NoError> {
        return self.rac_textSignal()
            .toSignalProducer()
            .ignoreErrors()
            .map { $0 as! String }
    }
}