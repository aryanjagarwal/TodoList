//
//  RegisterView.swift
//  TodoList
//
//  Created by Aryan Jagarwal on 16/05/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "start organizing your todos", angle: 15, background: .yellow)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
