import XCTest
@testable import Beat

final class BeatTests: XCTestCase {
    func testBeat() {
        let t = 1564181796.96353
        let b = Beat(t)
        
        XCTAssertGreaterThan(b.int(), 0)
        XCTAssertLessThan(b.int(), 1000)
        XCTAssertEqual(b.text(), "997")
        
        // now beat
        let nb = Beat()
        XCTAssertGreaterThan(nb.int(), 0)
        XCTAssertLessThan(nb.int(), 1000)
    }

    static var allTests = [
        ("testBeat", testBeat),
    ]
}
