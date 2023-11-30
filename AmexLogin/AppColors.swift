//
//  AppColors.swift
//  AmexLogin
//
//  Created by Eric Barnes - iOS on 11/28/23.
//

import SwiftUI

struct AppColors {
    static var appGrayLight: Color = Color(uiColor: #colorLiteral(red: 0.8784313798, green: 0.8784313798, blue: 0.8784313798, alpha: 1))
    static var appGrayDark: Color = Color(uiColor: #colorLiteral(red: 0.6588235497, green: 0.6588235497, blue: 0.6588235497, alpha: 1))
    static var appBlue: Color = Color(uiColor: #colorLiteral(red: 0.1308795512, green: 0.4146560133, blue: 0.7450037599, alpha: 1))
    static var appWhite: Color = Color(uiColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    static let customBackground = RadialGradient(colors: [Color(uiColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.9442833066, green: 0.9491196275, blue: 0.9534060359, alpha: 1))], center: .center, startRadius: 80, endRadius: 300)
    // LinearGradient(colors: [Color(uiColor: #colorLiteral(red: 0.8581773639, green: 0.8625955582, blue: 0.8843454719, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.9442833066, green: 0.9491196275, blue: 0.9534060359, alpha: 1))], startPoint: .center, endPoint: .top)
     
}

