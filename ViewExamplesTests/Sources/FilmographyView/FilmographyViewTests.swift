import XCTest
import SnapshotTesting

@testable import ViewExamples

class FilmographyViewTests: XCTestCase {

    override func setUp() {
        super.setUp()
        SnapshotTesting.isRecording = false
    }

    func testAll() throws {
        FilmographyView.Examples().assertSnapshotViews(
            layouts: [.device(.iPhone12), .device(.iPad)]
        )
    }

}
