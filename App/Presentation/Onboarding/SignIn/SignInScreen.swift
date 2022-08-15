//
//  SignInView.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI

struct SignInScreen: View {
    static let routeName: String = "sign_in"
    
    @EnvironmentObject var appSettings: AppSettingBloc
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 0.0) {
                Image(ImageConstant.logo)
                    .resizable()
                    .scaledToFit()
                    .frame( width: 200)
                    .padding(.bottom)
                    
                Text("Log in to make your memories.")
                    .foregroundColor(AppColor.subTitle)
                
                TextField("Username, email or phone number", text: $username).padding(.horizontal, 8)
                    .textfieldStylePrimary()
                    .padding(.top, 24)
                    .padding(.bottom, 12)
                
                SecureInputCustom("Password", text: $password).padding(.horizontal, 8)
                    .textfieldStylePrimary().padding(.bottom, 16)
                
                Text("Forgot password?")
                    .style(.bodySmallSemiBold)
                    .foregroundColor(AppColor.primary)
                    .padding(.top, 10)
                    .padding(.bottom, 24)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {
                } label: {
                    Text("Log In")
                        .bold()
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(ButtonPrimary())
                
               
                HStack(alignment: .center){
                    Text("Don't have an account?").style(.bodyMedium)
                    Text("Sign un").style(.bodyMedium).foregroundColor(AppColor.primary)
                }.frame(maxWidth: .infinity,
                        alignment: .center)
                .padding(.top, 24)
                .padding(.bottom, 32)
                
                HStack{
                    Divider().frame(width:100, height: 0.5)
                        .overlay(.gray)
                    Text("Or login with")
                        .style(.bodySmallSemiBold)
                        .foregroundColor(.gray)
                    Divider().frame(width:100, height: 0.5)
                        .overlay(.gray)
                }.frame(maxWidth: .infinity,
                        minHeight: 50,
                        alignment: .center)
                .padding(.bottom, 20)
                
                HStack{
                    renderButtonSocial(icon: IconConstant.google)
                    renderButtonSocial(icon: IconConstant.apple)
                    renderButtonSocial(icon: IconConstant.facebook)
                }.frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical, 10)


                
                
            }
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.inline)
            .navigationViewStyle(StackNavigationViewStyle())
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
        }
    }
    
    private func renderButtonSocial(icon: String) -> some View {
        return Image(icon)
            .padding(.vertical, 16)
            .padding(.horizontal, 24)
            .background(AppColor.secondary)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1))
            .padding(.horizontal, 5)
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}

