//
//  LoginView.swift
//  TodoList
//
//  Created by Aryan Jagarwal on 16/05/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // MARK: Header
                HeaderView(title: "Todoist", subtitle: "Get thongs done", angle: -15, background: Color.blue)
                
                // MARK: Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Attempt login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Login")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
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
