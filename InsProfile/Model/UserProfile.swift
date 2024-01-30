import Foundation

struct UserProfile: Identifiable, Codable {
    var id: UUID
    var username: String
    var bio: String
    var profileImage: String
    var posts: Int
    var followers: Int
    var following: Int
}
