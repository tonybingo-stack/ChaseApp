//
//  AccountView.swift
//  ChaseApp
//
//  Created by user232392 on 7/9/24.
//

import Foundation
import SwiftUI

struct AccountView: View {
    @State private var buttons: [String] = ["Send | Zelle", "Deposit checks", "Pay bills"] // Initially three button
    
    var body: some View {
        VStack {
            // Top bar with icons and logo
            HStack {
                HStack {
                    Image(systemName: "message")
                    Image(systemName: "calendar")
                }
                
                Spacer()
                
                Image("logo")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Spacer()
                
                Image(systemName: "person.crop.circle")
            }
            
            VStack(alignment: .leading) {
                HStack {
                    // Good Morning Text
                    Text("Good Morning")
                        .font(.title)
                    Spacer()
                }
                .padding(.top)
                
                HStack {
                    // Current Date
                    Text(Date(), style: .date)
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            
            
            // Buttons Line
            HStack {
                Button(action: {
                    buttons.append("New btton")
                }) {
                    Image(systemName: "plus")
                        .foregroundColor(.blue)
                        .frame(width: 20, height: 20)
                        .padding(8)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .shadow(color: .gray.opacity(0.5), radius: 2, x: 2, y: 2)
                }
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(buttons, id: \.self) { item in
                            Text("\(item)")
                                .font(.system(size: 12))
                                .foregroundColor(.blue)
                                .frame(height: 20)
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                                .shadow(color: .gray, radius: 2, x: 2, y: 2)
                        }
                    }
                    .padding(.vertical)
                }
                
            }
            
            // Card with Chevron
            HStack(alignment: .center) {
                Image("wallet")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .background(.cyan)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Snapshot")
                            .font(.system(size: 18))
                        Text("30sec read")
                            .font(.system(size: 12))
                            .padding(5)
                            .background(.gray.opacity(0.5))
                            .cornerRadius(5)
                    }
                    Text("You 've got money from Bank of America")
                        .font(.system(size: 12))
                }
                Image(systemName: "chevron.right")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(RoundedRectangle(cornerRadius: 10).stroke())
            
            HStack {
                Text("Accounts")
                    .font(.title)
                Spacer()
                Image(systemName: "ellipsis.circle")
            }
            // Account Section
            VStack {
                HStack {
                    Text("Bank Accounts (2)")
                        .font(.headline)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                
                VStack {
                    HStack {
                        VStack {
                            HStack {
                                Text("TOTAL CHECKING(...6165) >")
                                    .font(.subheadline)
                                Spacer()
                            }
                            
                            HStack {
                                Spacer()
                                VStack(alignment: .leading) {
                                    Text("$1,000.00")
                                        .font(.subheadline)
                                    Text("Available balance")
                                        .font(.caption)
                                }
                            }
                        }
                        .padding()
                        
                        Text("||")
                            .font(.headline)
                        
                    }
                    .padding(.trailing)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    
                    Divider()
                        .background(.black)
                    HStack {
                        VStack {
                            HStack {
                                Text("TOTAL CHECKING(...6165) >")
                                    .font(.subheadline)
                                Spacer()
                            }
                            
                            HStack {
                                Spacer()
                                VStack(alignment: .leading) {
                                    Text("$1,000.00")
                                        .font(.subheadline)
                                    Text("Available balance")
                                        .font(.caption)
                                }
                            }
                        }
                        .padding()
                        
                        Text("||")
                            .font(.headline)
                        
                    }
                    .padding(.trailing)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    
                    // Link External Account Button
                    HStack {
                        Text("Link external account")
                        
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1))
                }
                .background(.white)
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: "#015db8"))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            )
            
            Spacer()
        }
        .padding(.horizontal)
        .background(Color(hex: "#f4f5f7"))
        
    }
}
