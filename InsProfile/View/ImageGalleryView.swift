import SwiftUI

struct ImageGalleryView: View {
    // 열 수에 맞게 개수 조정
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    var imageName: [String]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(imageName, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipped()
            }
        }
        .padding(.horizontal)
    }
}
