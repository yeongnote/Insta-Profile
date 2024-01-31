import SwiftUI

struct FollowInfoView: View {
    var userProfile: UserProfile
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack {
                Text("\(userProfile.post)")
                    .font(Font.custom("Open Sans", size: 16.50).weight(.bold))
                    .foregroundColor(.black)
                    
                Text("Post")
                    .font(Font.custom("Open Sans", size: 14))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            VStack {
                Text("\(userProfile.followers)")
                    .font(Font.custom("Open Sans", size: 16.50).weight(.bold))
                    .foregroundColor(.black)
                Text("Follower")
                    .font(Font.custom("Open Sans", size: 14))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            VStack {
                Text("\(userProfile.following)")
                    .font(Font.custom("Open Sans", size: 16.50).weight(.bold))
                    .foregroundColor(.black)
                Text("Following")
                    .font(Font.custom("Open Sans", size: 14))
                    .foregroundColor(.black)
            }
            
            Spacer()
        }
        .padding(.vertical)
    }
}
