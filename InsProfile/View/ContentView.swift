import SwiftUI
import CoreData


struct ContentView: View {
    let userProfile = UserProfile(id: UUID(), username: "하영호", bio: "Bio goes here", profileImage: "profilePic", posts: 10, followers: 100, following: 200)
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ProfileHeaderView(userProfile: userProfile)
                    ButtonView()
                }
                .padding()
                VStack {
                    Image("Divider")
                    .frame(width: 375, height: 2)
                    .overlay(
                    Rectangle()
                    .stroke(Color(red: 0.86, green: 0.86, blue: 0.86), lineWidth: 0.5)

                    )
                }
                
                Button(action: {
                    // Message 버튼 동작
                }) {
                    Image("Grid")
                        .frame(width: 30, height: 30)
                }
                .frame(alignment: .leading)
                
                ImageGalleryView(imageName: ["image1", "image2", "image3"])
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


