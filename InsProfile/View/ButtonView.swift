import SwiftUI

struct ButtonView: View {
    
    var body: some View {
        HStack(spacing: 10) {
            Button(action: {
                // Follow 버튼 동작
            }) {
                Text("Follow")
                    .font(.custom("Open Sans", size: 14))
                    .foregroundColor(.white)
                    .frame(width: 150, height: 30)
                    .background(Color(red: 0.22, green: 0.6, blue: 0.95))
                    .cornerRadius(4)
            }
            
            Button(action: {
                // Message 버튼 동작
            }) {
                Text("Message")
                    .font(.custom("Open Sans", size: 14))
                    .foregroundColor(.black)
                    .frame(width: 150, height: 30)
                    .background(Color.white)
                    .cornerRadius(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1.5)
                    )
            }
            Button(action: {
                // Message 버튼 동작
            }) {
                Image("More")
                    .frame(width: 30, height: 30)
            }
        }
        .padding(.horizontal)
        
    }
    
}



