//
//  ContentView.swift
//  ChaseApp
//
//  Created by user232392 on 7/7/24.
//
import SwiftUI

struct ContentView: View {
    init() {
        // Set the color of the Tab Bar background
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor.white

        UITabBar.appearance().standardAppearance = tabBarAppearance
        
        // Set the color of the Tab Bar items
        UITabBar.appearance().tintColor = UIColor.blue
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray

        // This is needed to set the appearance for iOS 15 and later
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }

    var body: some View {
        TabView {
            AccountView()
                .tabItem {
                    Image(systemName: "creditcard.fill")
                    Text("Accounts")
                }

            PayView()
                .tabItem {
                    Image(systemName: "dollarsign.arrow.circlepath")
                    Text("Pay & Transfer")
                }

            PlanTrackView()
                .tabItem {
                    Image(systemName: "pencil.and.list.clipboard")
                    Text("Plan & Track")
                }

            InvestmentView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Investments")
                }
        }
    }
}
