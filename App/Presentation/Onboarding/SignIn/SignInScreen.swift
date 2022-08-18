//
//  SignInView.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import SwiftUI
import SwiftUIRouter

struct SignInScreen: View {
    @EnvironmentObject private var viewModel: SignInViewModel
    @Environment(\.router) var router
    
    @State var isBinding = false
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(ImageConstant.logo)
                    .resizable()
                    .scaledToFit()
                
                    .padding(.bottom)
                    .padding(.top, 0)
                .frame(height: 50.0)
                
            Text("Log in to make your memories.")
                .foregroundColor(AppColor.subTitle)
            
            TextField("Username, email or phone number",
              text: Binding(
                get: {
                    return self.viewModel.username
                },
                set: { newValue in
                    return self.viewModel.username = newValue
                }
              )
            ).padding(.horizontal, 8)
                .textfieldStylePrimary()
                .padding(.top, 24)
                .padding(.bottom, 12)
            
            SecureInputCustom("Password",
              text: Binding(
                get: {
                    return self.viewModel.password
                },
                set: { newValue in
                    return self.viewModel.password = newValue
                }
              )
            ).padding(.horizontal, 8)
            .textfieldStylePrimary().padding(.bottom, 16)
            
            Text("Forgot password?")
                .style(.bodySmallSemiBold)
                .foregroundColor(AppColor.primary)
                .padding(.top, 10)
                .padding(.bottom, 24)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Button (
                action: {
                    self.viewModel.login()
                },
                label: {
                    Text("Log In")
                        .bold()
                        .frame(maxWidth: .infinity)
                }
            ).buttonStyle(ButtonPrimary())
            
           
            HStack(alignment: .center){
                Text("Don't have an account?")
                    .style(.bodyMedium)
                Text("Sign up")
                    .style(.bodyMedium)
                    .foregroundColor(AppColor.primary)
                    .onTapGesture {
                        print(viewModel.isShowMessage)
                    }
            }.frame(
                maxWidth: .infinity,
                alignment: .center
            )
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
            }
            .frame(
                    maxWidth: .infinity,
                    minHeight: 50,
                    alignment: .center
            )
            .padding(.bottom, 20)
            
            HStack{
                renderButtonSocial(icon: IconConstant.google)
                renderButtonSocial(icon: IconConstant.apple)
                renderButtonSocial(icon: IconConstant.facebook)
            }.frame(maxWidth: .infinity, alignment: .center)
            .padding(.vertical, 10)
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        .onListener(
            bindingState: viewModel.isLoading,
            callback: {
                if(viewModel.userData != nil && viewModel.isDone == false){
                    viewModel.isDone = true
                    router.pushNamed(AppRoutes.home.routeName, argument:["userInfo": viewModel.userData!])
                }
            })
        .appSnackBar(
            isPresented: $viewModel.isShowMessage,
            message: viewModel.messageError,
            type: .error
        )
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


