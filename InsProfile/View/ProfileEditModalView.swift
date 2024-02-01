import SwiftUI


struct ProfileEditModaView: View {
    @Binding var userProfile: UserProfile
    @State private var isImagePickerPresented = false
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Profile Picture")) {
                    Image(userProfile.profileImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .onTapGesture {
                            isImagePickerPresented = true
                        }
                }
                Section(header: Text("Username")) {
                    TextField("Username", text: $userProfile.username)
                }
                Section(header: Text("Bio")) {
                    TextField("Bio", text:  $userProfile.bio)
                }
            }
            .navigationBarItems(trailing: Button("Save"){
                // 변경사항 추가하고 모달을 닫는 코드 구현
            })
            .sheet(isPresented: $isImagePickerPresented) {
                // 이미지 선택기 보기
            }
        }
        
    }
}
