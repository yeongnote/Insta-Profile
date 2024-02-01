import SwiftUI

struct ProfileHeaderView: View {
    var userProfile: UserProfile
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(userProfile.profileImage) // 이미지 이름을 바인딩
                    .resizable()
                    .scaledToFill()
                    .frame(width: 88, height: 88)
                    .clipShape(Circle()) // 이미지를 원형으로 만듦
                FollowInfoView(userProfile: userProfile)
            }
            .padding(.leading)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(userProfile.username) // 사용자 이름 바인딩
                    .font(Font.custom("Open Sans", size: 14).weight(.bold))
                    .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                Text(userProfile.bio) // 직업 타이틀은 하드코딩 대신 변수로 바인딩 가능
                    .font(Font.custom("Open Sans", size: 14))
                    .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                Text("github.com/yeongnote")// 깃 허브 주소
                .font(Font.custom("Open Sans", size: 14))
                .foregroundColor(Color(red: 0.06, green: 0.27, blue: 0.49))
                Spacer()
            }
            .padding(.leading)
        }
        }
}


