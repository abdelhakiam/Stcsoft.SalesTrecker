import SwiftUI

struct ProductView: View {
    @State private var products: [ProductModel] = [
        ProductModel(id: UUID(), name: "منتج 1", price: 100.0, quantity: 5),
        ProductModel(id: UUID(), name: "منتج 2", price: 150.0, quantity: 3)
    ]

    var body: some View {
        NavigationView {
            List(products) { product in
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.headline)
                    Text("السعر: \(product.price) ج.م.")
                    Text("الكمية: \(product.quantity)")
                }
            }
            .navigationBarTitle("إدارة المنتجات")
            .navigationBarItems(trailing: Button(action: {
                // منطق لإضافة منتج جديد
            }) {
                Text("إضافة منتج")
            })
        }
    }
}

