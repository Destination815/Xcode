import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("登录")
                    .font(.largeTitle)
                    .padding(.top, 20)
                
                TextField("用户名", text: $username)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
                
                SecureField("密码", text: $password)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                
                Button(action: login) {
                    Text("登录")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.vertical, 20)
            }
            .navigationBarHidden(true)
            .padding(.horizontal, 20)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("提示"), message: Text(alertMessage), dismissButton: .default(Text("确定")))
            }
        }
    }
    
    func login() {
        if username == "2422824985" && password == "18782105346" {
            alertMessage = "登录成功"
        } else {
            alertMessage = "用户名或密码错误"
        }
        showAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
