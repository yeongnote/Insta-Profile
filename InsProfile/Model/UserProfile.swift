import Foundation

struct UserProfile: Identifiable, Codable {
    var id: UUID
    var title: String
    var username: String
    var bio: String
    var profileImage: String
    var post: Int
    var followers: Int
    var following: Int
}
