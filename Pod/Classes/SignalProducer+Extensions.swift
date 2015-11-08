import ReactiveCocoa

public extension SignalProducer {
    public func ignoreErrors() -> SignalProducer<T, NoError> {
        return self.flatMapError { _ in SignalProducer<T, NoError>.empty }
    }
}