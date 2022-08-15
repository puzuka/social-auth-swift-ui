//
//  WelcomeScreen.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI

struct WelcomeScreen: View {
    static let routeName: String = "welcome"
    
    @EnvironmentObject var appSettings: AppSettingBloc
    
    var body: some View {
        NavigationView{
            VStack{
                Image(ImageConstant.logo)
                    .padding(.bottom, 50)
                    .frame(width: 0.0,height: 40.0)
                
                
                Image(ImageConstant.signin)
                
                Button {
                } label: {
                    ZStack {
                        Image(ImageConstant.google)
                            .frame(maxWidth: .infinity, minHeight: 0, alignment: .leading)
                        Text("Login with Google")
                            .style(.bodyMedium)
                            .frame(maxWidth: .infinity)
                    }
                }
                .buttonStyle(ButtonPrimary())
                .frame(maxHeight: 52)
                .padding(.top, 40.0)
                
                Button {
                } label: {
                    Text("Sign up with email or phone number")
                        .style(.bodyMedium)
                        .foregroundColor(AppColor.primary)
                        .frame(maxWidth: .infinity)
                        
                }.padding(.top, 16.0)
                .buttonStyle(ButtonSecondary())
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
                    NavigationLink(destination: SignInScreen()) {
                        Text("Sign in")
                            .foregroundColor(AppColor.primary)
                            .style(.bodySmallSemiBold)
    //                        .onTapGesture {
    //                            self.pushToSignInScreen(appSettings: appSettings)
    //
    //                        }
                    }
                    

                }
                
                
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .navigationViewStyle(StackNavigationViewStyle())
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
