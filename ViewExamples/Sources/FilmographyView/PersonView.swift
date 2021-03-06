import SwiftUI


struct PersonView: View {
    
    struct Model {
        var image: Image
        var name: String
        var birthday: String
        var birthplace: String
    }
    
    let model: Model
    
    var body: some View {
        HStack(alignment: .top) {
            model.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 71, height: 112)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(model.name)
                    .bold()
                    .lineLimit(3)
                    .font(.title2)
                    .foregroundColor(Color(UIColor.label))
                Spacer().frame(height: 4)
                Text(model.birthday)
                    .lineLimit(2)
                    .font(.caption)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                Spacer().frame(height: 2)
                Text(model.birthplace)
                    .lineLimit(2)
                    .font(.caption)
                    .foregroundColor(Color(UIColor.secondaryLabel))
            }
            .padding(8)
            Spacer()
        }
    }
    
}


// MARK: - Examples

extension PersonView.Model {
    enum Examples {
        static let `default` = PersonView.Model(
            image: Image("robert_pattinson"),
            name: "Robert Pattinson",
            birthday: "May 13, 1986",
            birthplace: "Barnes, London, UK"
        )
        
        static let longName = PersonView.Model(
            image: Image("kiefer_sutherland"),
            name: "Kiefer William Frederick Dempsey George Rufus Sutherland",
            birthday: "December 21, 1966",
            birthplace: "Paddington, London, UK"
        )
    }
}


extension PersonView {
    
    struct Examples: ViewExampleProvider {
        let views: [PersonView] = [
            PersonView(model: .Examples.default),
            PersonView(model: .Examples.longName)
        ]
    }
    
}


// MARK: - Previews

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView.Examples().previews(
            layouts: [.fixedWidth(.iPhone8)]
        )
    }
}
