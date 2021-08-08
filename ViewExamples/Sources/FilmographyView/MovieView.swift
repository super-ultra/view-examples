import SwiftUI


struct MovieView: View {
    
    struct Model {
        var title: String
        var year: String
        var character: String
        var rating: String
        var ratingColor: Color
    }
    
    let model: Model
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(model.title)
                    .lineLimit(2)
                    .font(.headline)
                    .foregroundColor(Color(UIColor.label))
                Spacer().frame(height: 2)
                Text(model.year)
                    .lineLimit(1)
                    .font(.subheadline)
                    .foregroundColor(Color(UIColor.label))
                Text(model.character)
                    .lineLimit(2)
                    .font(.caption)
                    .foregroundColor(Color(UIColor.secondaryLabel))
            }
            Spacer()
            Text(model.rating)
                .fontWeight(.heavy)
                .lineLimit(1)
                .foregroundColor(model.ratingColor)
        }
        .padding(8)
    }
    
}


// MARK: - Examples

extension MovieView.Model {
    enum Examples {
        static let `default` = MovieView.Model(
            title: "The Lighthouse",
            year: "2019",
            character: "Thomas Howard",
            rating: "7.1",
            ratingColor: .goodRating
        )
        
        static let normalRating = MovieView.Model(
            title: "Waiting for the Barbarians",
            year: "2019",
            character: "Officer Mandel",
            rating: "5.9",
            ratingColor: .normalRating
        )
        
        static let badRating = MovieView.Model(
            title: "Cosmopolis",
            year: "2012",
            character: "Eric Packer",
            rating: "4.8",
            ratingColor: .badRating
        )
        
        static let longTitle = MovieView.Model(
            title: "Dr. Strangelove Or: How I Learned To Stop Worrying And Love The Bomb",
            year: "1963",
            character: "Group Capt. Lionel Mandrake / President Merkin Muffley / Dr. Strangelove",
            rating: "8.1",
            ratingColor: .goodRating
        )
        
    }
}


extension MovieView {
    
    struct Examples: ViewExamplesProvider {
        let views: [MovieView] = [
            MovieView(model: .Examples.default),
            MovieView(model: .Examples.normalRating),
            MovieView(model: .Examples.badRating),
            MovieView(model: .Examples.longTitle)
        ]
    }
    
}


// MARK: - Previews

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView.Examples().previews(
            layouts: [.fixedWidth(.iPhone8)]
        )
    }
}
