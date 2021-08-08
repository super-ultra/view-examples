import SwiftUI


struct FilmographyView: View {
    
    struct Model {
        var person: PersonView.Model
    }
    
    let model: Model
    
    var body: some View {
        List {
            PersonView(model: model.person)
        }
        .navigationTitle("Filmography")
    }
}


// MARK: - Examples

extension FilmographyView.Model {
    
    enum Examples {
        static let `default` = FilmographyView.Model(
            person: .Examples.default
        )
    }
    
}

extension FilmographyView {
    
    struct Examples: ViewExamplesProvider {
        let views: [PersonView] = [
            PersonView(model: .Examples.default)
        ]
    }
    
}


// MARK: - Previews

struct FilmographyView_Previews: PreviewProvider {
    static var previews: some View {
        FilmographyView.Examples().previews(
            layouts: [.device(.iPhone12), .device(.iPadMini)]
        )
    }
}
