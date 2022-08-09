//
//  ContentView.swift
//  SocialNetworkChallenge
//
//  Created by Emilly Maia on 09/08/22.
//

import SwiftUI

let lightGreycolor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
   @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            WelcomeText()
            UserImage()
            TextField("Username", text: $username)
                .padding()
                .background(lightGreycolor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreycolor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
        
            
            Button(action: {print("Button taped")}) {
                LoginButtonContent()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WelcomeText: View {
    var body: some View {
        VStack{
            Text("Bem-vindo!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
        }
    }
}

struct UserImage: View {
    var body: some View {
        VStack{
            return Image("userImage")
                .resizable()
                .aspectRatio(UIImage(named: "userImage")!.size, contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 75)
        }
    }
}

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
