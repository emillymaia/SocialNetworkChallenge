//
//  RegisterView.swift
//  SocialNetworkChallenge
//
//  Created by Emilly Maia on 09/08/22.
//

import SwiftUI

let lightGreycolor2 = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct RegisterView: View {
    @State var createUsername: String = ""
    @State var createPassword: String = ""
    @State var email: String = ""
    var body: some View {
        VStack{
            TextField("Insira nome de usuário", text: $createUsername)
                .padding()
                .background(lightGreycolor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            TextField("Insira seu e-mail", text: $email)
                .padding()
                .background(lightGreycolor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Crie uma senha", text: $createPassword)
                .padding()
                .background(lightGreycolor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
           
            
            
            Button(action: {print("Button taped")}) {
                RegisterButtonContent()
            }
        }
        .padding()
    }
}



struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

struct RegisterButtonContent : View {
    var body: some View {
        return Text("Registrar")
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
