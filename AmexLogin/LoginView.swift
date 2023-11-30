//
//  ContentView.swift
//  AmexLogin
//
//  Created by Eric Barnes - iOS on 11/28/23.
//

import SwiftUI
// TODO: Make entire login button clickable , not just text
struct LoginView: View {
    @State var userIDText: String = ""
    @State var passwordText: String = ""
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                ZStack { // Upper Content Layer
                    AppColors.customBackground.ignoresSafeArea(.all, edges: .top)
                    
                    VStack {
                        
                        LogoGreeting
                        
                        // Login Info Entry
                        LoginInfoEntryView
                            .padding()
                        
                        ConfirmCreateAccountButton
                    }
                }
                
                // Bottom Help / Privacy
                HelpPrivacyBottomView()
                    .frame(height: proxy.size.height * 0.1)
            }
        }
    }
    
    // UI Components
    var LogoGreeting: some View {
        VStack {
            Text("AMERICAN EXPRESS")
                .fontWeight(.heavy)
                .padding(2)
            
            Text("Happy Holidays")
                .fontWeight(.medium)
        }
        
    }
    
    var LoginInfoEntryView: some View {
        VStack(spacing: 0) {
            UnderlineTextField(text: $userIDText, placeholderText: "User ID")
            
            UnderlineTextField(text: $passwordText, placeholderText: "Password")
            
            LoginButton
                .padding()
            
            ForgotIDPasswordButton
        }
        .padding(.vertical)
        .padding(.bottom, 5)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
    
    var LoginButton: some View {
        Button(action: {print("log in")}, label: {
            Text("Log In")
                .fontWeight(.semibold)
        })
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .background(AppColors.appGrayLight)
        .foregroundStyle(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    var ForgotIDPasswordButton: some View {
        Button(action: {print("forgot user id or password")}, label: {
            Text("Forgot User ID or Password?")
                .font(.footnote)
        })
        .tint(AppColors.appBlue)
    }
    
    var ConfirmCreateAccountButton: some View {
        Button(action: {print("confirm and create account")}, label: {
            Text("Confirm Card and Create Account")
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .padding(.horizontal)
                .background(AppColors.appWhite)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        })
        .tint(AppColors.appBlue)
    }
}

#Preview {
    LoginView()
}

struct UnderlineTextField: View {
    @Binding var text: String
    var placeholderText: String
    
    var body: some View {
        VStack {
            TextField(text: $text) {
                Text(placeholderText)
            }
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(AppColors.appGrayDark)
        }
        .padding()
    }
}

struct HelpPrivacyBottomView: View {
    var body: some View {
        ZStack {
            Color.white
            
            VStack(spacing: 10) {
                // Top Buttons
                HStack {
                    Button("HELP / CONTACT US", action: {})
                    Rectangle()
                        .frame(width: 1, height: 20)
                        .foregroundStyle(AppColors.appGrayDark)
                    Button("LEGAL / PRIVACY", action: {})
                }
                
                // agreement and terms text
                Text("All access to and use of this App subject to Privacy Statement and governed by End User License Agreement and Terms of Service.")
                    .font(.caption)
                    .fixedSize(horizontal: false, vertical: true) // allow text to grow to new lines instead of ellipses
                    .multilineTextAlignment(.center)
                
                // copyright text
                HStack {
                    Image(systemName: "c.circle")
                        .font(.caption)
                    Text("2023 American Express Company. All rights reserved.")
                        .font(.caption)
                }
            }
            .padding()
        }
    }
}
