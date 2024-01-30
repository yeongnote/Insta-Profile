import SwiftUI
import CoreData


struct ContentView: View {
    let userProfile = UserProfile(id: UUID(), username: "하영호", bio: "Bio goes here", profileImage: "profilePic", post: 10, followers: 100, following: 200)
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ProfileHeaderView(userProfile: userProfile)
                    ButtonView()
                    Divider()
                        .frame(height: 2)
                        .background(Color(red: 0.86, green: 0.86, blue: 0.86))
                    HStack {
                        Button(action: {
                            // Message 버튼 동작
                        }) {
                            Image("Grid")
                                .frame(width: 22.5, height: 22.5)
                        }
                        .padding(.leading, 60)
                        Spacer()
                    }
                    
                    ImageGalleryView(imageName: ["yeong1", "Ellipse 1", "Ellipse 1"])
                }
                .padding()
            }
            .navigationBarTitle(Text(userProfile.username), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                // 설정 액션
            }) {
                Image("Menu")
                    .imageScale(.large)
            })
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        Image(systemName: "house")
                        Spacer()
                        Image(systemName: "magnifyingglass")
                        Spacer()
                        Image(systemName: "plus.app")
                        Spacer()
                        Image(systemName: "heart")
                        Spacer()
                        Image(systemName: "person.crop.circle")
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
