import SwiftUI

@main
struct ViewExamplesApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                FilmographyView(model: .Examples.default)
            }
        }
    }
}
