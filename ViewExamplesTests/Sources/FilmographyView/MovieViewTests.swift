import XCTest
import SnapshotTesting

@testable import ViewExamples

class MovieViewTests: XCTestCase {

    override func setUp() {
        super.setUp()
        SnapshotTesting.isRecording = false
    }

    func testAll() throws {
        MovieView.Examples().assertSnapshotViews(
            layouts: [.fixedWidth(.iPhone8)]
        )
    }

}
