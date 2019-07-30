import Foundation

public struct Beat {
    fileprivate var db: Int
    public init(_ epoch: Double = Date().timeIntervalSince1970) {
        let utc_1 = Int(epoch + 3600)
        let r = utc_1%86400
        self.db = (Int(Double(r)/86.4))
    }

    public func int() -> Int {
        return db
    }
    
    public func text() -> String {
        return "\(db)"
    }
}
