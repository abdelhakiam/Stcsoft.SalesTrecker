import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel() // استخدام ViewModel لإدارة حالة التسجيل

    var body: some View {
        VStack {
            Text("تسجيل الدخول")
                .font(.largeTitle)
                .padding()

            // حقل اسم المستخدم
            TextField("اسم المستخدم", text: $viewModel.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // حقل كلمة المرور
            SecureField("كلمة المرور", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // زر تسجيل الدخول
            Button(action: {
                viewModel.login() // استدعاء دالة تسجيل الدخول من ViewModel
            }) {
                Text("تسجيل الدخول")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            // عرض رسالة خطأ عند الفشل
            if viewModel.loginFailed {
                Text("تسجيل الدخول فشل، حاول مرة أخرى.")
                    .foregroundColor(.red)
                    .padding()
            }
        }
        .padding()
    }
}

// لا تنسى إضافة preview في أسفل الملف
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

