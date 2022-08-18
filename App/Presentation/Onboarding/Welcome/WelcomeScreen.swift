//
//  WelcomeScreen.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI
import SwiftUIRouter

struct WelcomeScreen: View {    
    @Environment(\.router) var router
    @Environment(\.theme) var theme
    
    var body: some View {
        VStack(alignment: .center){
            Image(theme.image.logo)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 20.0, alignment: .center)
                .padding(.bottom, 30)
            
            
            Image(theme.image.signin)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 16)
                
            ButtonTheme (
                label: {
                    ZStack {
                        Image(theme.image.google)
                            .frame(maxWidth: .infinity, minHeight: 0, alignment: .leading)
                        Text("Login with Google")
                            .style(.bodyMedium)
                            .frame(maxWidth: .infinity)
                    }
                },
                action: {}
            )
            .frame(maxHeight: 52)
            .padding(.top, 40.0)
            
            ButtonTheme (
                label: {
                    Text("Sign up with email or phone number")
                        .style(.bodyMedium)
                        .foregroundColor(theme.color.primary)
                        .frame(maxWidth: .infinity)
                    
                },
                action: {},
                isPrimary: false
            ).padding(.top, 16.0)
            .frame(maxHeight: 52)
            
            HStack{
                Divider().frame(width:100, height: 0.5)
                    .overlay(.gray)
                Text("Or")
                    .style(.bodySmallSemiBold)
                    .foregroundColor(.gray)
                Divider().frame(width:100, height: 0.5)
                    .overlay(.gray)
            }.padding()
            
            HStack{
                Text("Already have an account?").style(.bodySmallRegular)
                Text("Sign in")
                    .foregroundColor(theme.color.primary)
                    .style(.bodySmallSemiBold)
                    .onTapGesture {
                        router.pushNamed(OnboardingRoutes.signin.routeName)
                    }
            }
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .navigationViewStyle(StackNavigationViewStyle())
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .center
        )
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
