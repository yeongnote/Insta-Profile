import SwiftUI


struct ProfileEditModaView: View {
    @Binding var userProfile: UserProfile
    @State private var isImagePickerPresented = false
    @State private var selectedUIImage: UIImage?
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Profile Picture")) {
                    Button(action: {
                        isImagePickerPresented = true
                    }) {
                        if let selectedImage = selectedUIImage {
                            Image(uiImage: selectedImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                        } else {
                            // userProfile.profileImage가 문자열이므로,
                            // 해당 문자열로 이미지를 로드하는 로직이 필요합니다.
                            // 예: Image("your_default_image_name")
                            Image(userProfile.profileImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                        }
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
                if let selectedImage = selectedUIImage {
                    let fileName = saveImageToDocumentsDirectory(image: selectedImage)
                    userProfile.profileImage = fileName
                }
                presentationMode.wrappedValue.dismiss()
            })
            .sheet(isPresented: $isImagePickerPresented) {
                // 이미지 선택기 보기
                ImagePicker(selectedImage: $selectedUIImage)
            }
        }
        
    }
}

func saveImageToDocumentsDirectory(image: UIImage) -> String {
    guard let imageData = image.pngData() else { return "" }
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let fileName = UUID().uuidString + ".png" // 파일 고유 이름
    let fileURL = documentsDirectory.appendingPathComponent(fileName)
    
    do {
        // 이미지 데이터를 파일로 저장합니다.
        try imageData.write(to: fileURL)
        return fileName // 파일 이름을 반환합니다.
    } catch {
        print(error)
        return ""
    }
}
