import Foundation

struct ProductModel: Identifiable {
    let id: UUID
    var name: String
    var price: Double
    var quantity: Int
}

