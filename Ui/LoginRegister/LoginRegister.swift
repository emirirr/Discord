import SwiftUI

struct LoginRegisterView: View {
    @State private var showLogin = false
    @State private var showRegister = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Discord'un koyu arka plan rengi
                Color(red: 0.13, green: 0.14, blue: 0.16)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    // Discord logosu
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 62, height: 58)
                    
                        .padding(.top, 50)
                    Text("Discord")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                        
                    Spacer()

                    // Login butonu
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                    }

                    // Register butonu
                    NavigationLink(destination: RegisterView()) {
                        Text("Register")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                    }
                    
                    Spacer()
                }
            }
            .navigationBarHidden(true) // Üst barı gizlemek için
        }
    }
}

struct LoginView: View {
    var body: some View {
        ZStack {
            Color(red: 0.13, green: 0.14, blue: 0.16)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Login Page")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()

                TextField("Username", text: .constant(""))
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)

                SecureField("Password", text: .constant(""))
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)

                Button(action: {
                    // Giriş işlemi yapılacak
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                }

                Spacer()
            }
        }
    }
}

struct RegisterView: View {
    var body: some View {
        ZStack {
            Color(red: 0.13, green: 0.14, blue: 0.16)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Register Page")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()

                TextField("Username", text: .constant(""))
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)

                SecureField("Password", text: .constant(""))
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)

                SecureField("Confirm Password", text: .constant(""))
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)

                Button(action: {
                    // Kayıt işlemi yapılacak
                }) {
                    Text("Register")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                }

                Spacer()
            }
        }
    }
}

struct LoginRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        LoginRegisterView()
    }
}
