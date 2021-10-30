import XCTest
import SnapshotTesting

@testable import ViewExamples

class PersonViewTests: XCTestCase {

    override func setUp() {
        super.setUp()
        SnapshotTesting.isRecording = false
    }

    func testAll() throws {
        PersonView.Examples().assertSnapshots(
            layouts: [.fixedWidth(.iPhone8)]
        )
    }

}
