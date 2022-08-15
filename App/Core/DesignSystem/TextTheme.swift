//
//  TextTheme.swift
//  SocialAuthSwiftUI (iOS)
//
//  Created by Pham Tri on 15/08/2022.
//

import Foundation
import SwiftUI

enum TextThemeStyle {
    case heading1,heading2,heading3,heading4,heading5,heading6
    case bodyLarge, bodyXLarge, bodyLargeBold, bodyLargeSemiBold, bodyLargeRegular
    case bodyMedium, bodyMediumBold, bodyMediumSemiBold, bodyMediumRegular
    case bodySmall, bodySmallSemiBold, bodySmallRegular
    
}

extension Text {
    
    func style(_ styleText: TextThemeStyle) -> Text{
        switch styleText {

        //  Text Style Heading
        case .heading1:
            return self.font(.system(size: 32.0).weight(.bold))
        case .heading2:
            return self.font(.system(size: 24.0).weight(.bold))
        case .heading3:
            return self.font(.system(size: 22.0).weight(.bold))
        case .heading4:
            return self.font(.system(size: 18.0).weight(.bold))
        case .heading5:
            return self.font(.system(size: 14.0).weight(.bold))
        case .heading6:
            return self.font(.system(size: 12.0).weight(.bold))

        // Text Style XLarge
        case .bodyXLarge:
            return self.font(.system(size: 20.0).weight(.regular))

        //  Text Style Large
        case .bodyLarge:
             return self.font(.system(size: 16.0).weight(.bold))
        case .bodyLargeRegular:
             return self.font(.system(size: 16.0).weight(.regular))
        case .bodyLargeBold:
             return self.font(.system(size: 16.0).weight(.bold))
        case .bodyLargeSemiBold:
             return self.font(.system(size: 16.0).weight(.semibold))

        //  Text Style Medium
        case .bodyMedium:
             return self.font(.system(size: 14.0).weight(.medium))
        case .bodyMediumRegular:
             return self.font(.system(size: 14.0).weight(.regular))
        case .bodyMediumBold:
             return self.font(.system(size: 14.0).weight(.bold))
        case .bodyMediumSemiBold:
             return self.font(.system(size: 14.0).weight(.semibold))

        //  Text Style Small
        case .bodySmall:
             return self.font(.system(size: 12.0).weight(.medium))
        case .bodySmallRegular:
             return self.font(.system(size: 12.0).weight(.regular))
        case .bodySmallSemiBold:
             return self.font(.system(size: 12.0).weight(.semibold))

        }
    }
}

extension View {
    func textfieldStylePrimary() -> some View {
        return self
            .padding(.horizontal, 15)
            .frame(height: 40.0)
            .background(AppColor.secondary)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                 .stroke(Color.gray.opacity(0.3), lineWidth: 1))
    }
}
