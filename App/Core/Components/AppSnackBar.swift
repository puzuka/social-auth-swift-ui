//
//  Toast.swift
//  SocialAuthSwiftUI
//
//  Created by Pham Tri on 17/08/2022.
//

import Foundation
import SwiftUI
import AlertMessage

public enum SnackBarType {
     case error
     case success
     case info
}
extension SnackBarType {
    public func color() -> Color {
        switch self {
        case .error:
          return Color.red
        case .success:
          return Color.green
        case .info:
          return Color.black
        }
    }
}

struct SnackBar: View{
    let message: String
    let type: SnackBarType
    
    var body: some View {
        HStack {
                Text(message)
                     .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, minHeight: 50.0, alignment: .leading)
        .padding(.leading, 20)
        .background(type.color())
    }
}

extension View {
    public func appSnackBar(isPresented: Binding<Bool>, message: String, type: SnackBarType = .info ) -> some View {
        return self.alertMessage(isPresented: isPresented, type: .snackbar, autoHideIn: 2.0){
            SnackBar(message: message, type: type)
        }
    }
}
