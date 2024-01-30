import SwiftUI

struct ProfileHeaderView: View {
    var userProfile: UserProfile
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("yeong1") // 이미지 이름을 바인딩
                    .resizable()
                    .scaledToFill()
                    .frame(width: 88, height: 88)
                    .clipShape(Circle()) // 이미지를 원형으로 만듦
                
                FollowInfoView(userProfile: userProfile)
                
            }
            
            .padding(.leading)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(userProfile.username) // 사용자 이름 바인딩
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.black)
                
                Text("iOS Developer 🍎") // 직업 타이틀은 하드코딩 대신 변수로 바인딩 가능
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading)
        }
        
        }
}


