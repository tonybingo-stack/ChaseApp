//
//  SignInView.swift
//  ChaseApp
//
//  Created by user232392 on 7/7/24.
//

import Foundation
import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    @State private var rememberMe: Bool = false
    @State private var useToken: Bool = false

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                    .frame(height: 120)
                // Top blue background with title and icon
                Image("chase_title") // Replace with your custom logo image name
                    .resizable()
                    .frame(width: 240, height: 60)
                    .offset(x: -20)
                    .padding()
                Spacer()
                
                // Bottom white background with some text
                VStack(spacing: 30) {
                    HStack(spacing: 10) {
                        Button(action: {
                            // Handle go to sign up action here
                        }) {
                            Text("Sign Up")
                                .font(.custom("OpenSans-Regular", size: 13))
                                .foregroundColor(.blue)
                        }
                        
                        Text("|")
                            .font(.custom("OpenSans-Regular", size: 13))
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            // Handle open an account action here
                        }) {
                            Text("Open an account")
                                .font(.custom("OpenSans-Regular", size: 13))
                                .foregroundColor(.blue)
                        }
                        
                        Text("|")
                            .font(.custom("OpenSans-Regular", size: 13))
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            // Handle privacy action here
                        }) {
                            Text("Privacy")
                                .font(.custom("OpenSans-Regular", size: 13))
                                .foregroundColor(.blue)
                        }
                        
                        Text("|")
                            .font(.custom("OpenSans-Regular", size: 13))
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            // Handle more options action here
                        }) {
                            Text("...")
                                .font(.custom("OpenSans-Regular", size: 13))
                                .foregroundColor(.blue)
                        }
                    }
                    
                    VStack(spacing: 5) {
                        HStack {
                            Image(systemName: "house")
                                .resizable()
                                .frame(width: 10, height: 10)// SF Symbols house icon
                            Text("Equal Housing Opportunity")
                                .font(.custom("OpenSans-Regular", size: 10))
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        Text("Deposit products provided by JPMorgan Chase Bank, N,A. Member FDIC")
                            .font(.custom("OpenSans-Regular", size: 10))
                        Text("Credit cards are issued by JPMorgan Chase Bank, N,A. Member FDIC")
                            .font(.custom("OpenSans-Regular", size: 10))
                        HStack {
                            Image(systemName: "c.circle")
                                .resizable()
                                .frame(width: 10, height: 10)
                            Text("2024 JPMorgan Chase & Co.")
                                .font(.custom("OpenSans-Regular", size: 10))
                        }
                        
//                        Text("©2024 JPMorgan Chase & Co.")
//                            .font(.system(size: 10))
                    }
                    
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 50)
                .background(Color.white)
            }

             
             // Middle Sign-In Form
            VStack(spacing: 20) {
                Spacer()
                    .frame(height: 140)
                VStack(spacing: 20) {
                    // Section for Email Input
                    VStack(alignment: .leading) {
                        Text("Enter your username")
                            .foregroundColor(.gray)
                            .font(.custom("OpenSans-Regular", size: 13))
                            .padding(.horizontal, 20)
                        TextField("", text: $email)
                            .autocapitalization(.none)
                            .padding(.horizontal, 20)
                            .font(.custom("OpenSans-Regular", size: 13))
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 20)
                    }

                    // Section for Password Input
                    VStack(alignment: .leading) {
                        Text("Enter your password")
                            .foregroundColor(.gray)
                            .font(.custom("OpenSans-Regular", size: 13))
                            .padding(.horizontal, 20)
                        HStack {
                            if isSecure {
                                SecureField("", text: $password)
                                    .font(.custom("OpenSans-Regular", size: 13))
                            } else {
                                TextField("", text: $password)
                                    .font(.custom("OpenSans-Regular", size: 13))
                            }
                            Button(action: {
                                isSecure.toggle()
                            }) {
                                Text(isSecure ? "Show" : "Hide")
                                    .foregroundColor(.blue)
                                    .font(.custom("OpenSans-Regular", size: 13))
                            }
                        }
                        .padding(.horizontal, 20)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 20)
                    }

                    
                    // Section for Checkboxes
                    HStack {
                        Toggle(isOn: $rememberMe) {
                            Text("Remeber Me")
                                .foregroundColor(.black)
                                .font(.custom("OpenSans-Regular", size: 15))
                        }
                        .toggleStyle(SquareCheckboxStyle())
                        Spacer()
                        Toggle(isOn: $useToken) {
                            Text("Use token")
                                .foregroundColor(.black)
                                .font(.custom("OpenSans-Regular", size: 15))
                        }
                        .toggleStyle(SquareCheckboxStyle())
                    }
                    .padding(.horizontal)
                    
                    // Sign In Button
                    Button(action: {
                        // Handle Sign In action here
                    }) {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .font(.custom("OpenSans-Regular", size: 13))
                            .background(.blue)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal, 20)
                    }
                    Button(action: {
                        // Handle go to sign up action here
                    }) {
                        Text("Forgot username or password?")
                            .foregroundColor(.blue)
                            .font(.custom("OpenSans-Regular", size: 13))
                    }
                }
                .padding(.vertical, 30)
                .background(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .background(Color(hex: "#015db8"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct SquareCheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            ZStack {
                Rectangle()
                    .fill(configuration.isOn ? Color.blue : Color.clear)
                    .frame(width: 12, height: 12)
                    .overlay(
                        Rectangle()
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                if configuration.isOn {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.white)
                }
            }
            .onTapGesture {
                configuration.isOn.toggle()
            }
            
            configuration.label
        }
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b, a) = ((int >> 8 * 4) & 0xF * 17, (int >> 4 * 4) & 0xF * 17, (int & 0xF) * 17, 255)
        case 6: // RGB (24-bit)
            (r, g, b, a) = ((int >> 16) & 0xFF, (int >> 8) & 0xFF, (int) & 0xFF, 255)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = ((int >> 24) & 0xFF, (int >> 16) & 0xFF, (int >> 8) & 0xFF, (int) & 0xFF)
        default:
            (r, g, b, a) = (1, 1, 1, 0)
        }

        self.init(
            red: Double(r) / 255.0,
            green: Double(g) / 255.0,
            blue: Double(b) / 255.0,
            opacity: Double(a) / 255.0
        )
    }
}
