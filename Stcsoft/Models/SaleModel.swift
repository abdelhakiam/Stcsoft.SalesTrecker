import Foundation

struct SaleModel: Identifiable {
    let id: UUID
    var productId: UUID
    var quantity: Int
    var totalPrice: Double
}
