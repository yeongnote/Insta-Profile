import SwiftUI
import CoreData


struct ContentView: View {
    @State private var showingProfileModel = false
    @State var userProfile = UserProfile(id: UUID(), title: "Profile", username: "하영호", bio: "iOS Developer 🍎", profileImage: "profilePic", post: 10, followers: 100, following: 200)
    
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
                    
                    ImageGalleryView(imageName: ["yeong1", "yeong2", "Ellipse 1", "a-1", "a-2", "a-3", "a-4", "a-5", "a-6", "a-7", "a-8"])
                }
                //.padding()
            }
            .navigationBarTitle(Text(userProfile.title), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                // 설정 액션
            }) {
                Image("Menu")
                    .imageScale(.large)
            })
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack(alignment: .center, spacing: 100) {
                        Button(action: {
                            showingProfileModel = true
                        }) {
                            Image("Profile - Fill")
                        }
                        .sheet(isPresented: $showingProfileModel) {
                            ProfileEditModaView(userProfile: $userProfile)
                        }
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.app")
                        }
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
