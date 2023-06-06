//
//  LoginView.swift
//  TodoList
//
//  Created by Aryan Jagarwal on 16/05/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // MARK: Header
                HeaderView(title: "Todoist", subtitle: "Get thongs done", angle: -15, background: Color.blue)
                
                // MARK: Login Form
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Login",
                             background: .blue
                    ) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                // MARK: Create account
                VStack {
                    Text("New around here?")
                        // show registration
                        NavigationLink("Create An Account", destination: RegisterView())
                    .padding(.bottom, 50)
                }
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
