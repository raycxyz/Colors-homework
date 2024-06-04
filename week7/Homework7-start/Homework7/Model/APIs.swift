import Foundation

struct APIs: Codable {
    let count: Int
    let entries: [Entry]
    
    struct Entry: Codable, Identifiable {
        let id = UUID()
        
        let api: String
        let description: String
        let auth: String
        let http: Bool
        let cors: String
        let link: String
        let category: String
        
        enum CodingKeys: String, CodingKey {
            case api = "API"
            case description = "Description"
            case auth = "Auth"
            case http = "HTTPS"
            case cors = "Cors"
            case link = "Link"
            case category = "Category"
        }
    }
}



