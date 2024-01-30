import SwiftUI

struct FollowInfoView: View {
    var userProfile: UserProfile
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack {
                Text("\(userProfile.post)")
                    .font(.system(size: 14)) // 폰트 사이즈 조정
                    .foregroundColor(.black) // 색상 조정
                Text("Posts")
                    .font(.system(size: 12)) // 폰트 사이즈 조정
                    .foregroundColor(.gray) // 색상 조정
            }
            
            Spacer()
            
            VStack {
                Text("\(userProfile.followers)")
                    .font(.system(size: 14)) // 폰트 사이즈 조정
                    .foregroundColor(.black) // 색상 조정
                Text("Followers")
                    .font(.system(size: 12)) // 폰트 사이즈 조정
                    .foregroundColor(.gray) // 색상 조정
            }
            
            Spacer()
            
            VStack {
                Text("\(userProfile.following)")
                    .font(.system(size: 14)) // 폰트 사이즈 조정
                    .foregroundColor(.black) // 색상 조정
                Text("Following")
                    .font(.system(size: 12)) // 폰트 사이즈 조정
                    .foregroundColor(.gray) // 색상 조정
            }
            
            Spacer()
        }
        .padding(.vertical)
    }
}
