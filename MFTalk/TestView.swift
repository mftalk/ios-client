//
//  TestView.swift
//  MFTalk
//
//  Created by B on 28/12/25.
//

// this script is for testing stuff.

import SwiftUI
import SwiftData

struct ColorDetail: View {
    var color: Color
    var body: some View {
        color.navigationTitle(color.description)
    }
}

struct TestView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Mint", value: Color.mint)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Teal", value: Color.teal)
            }
            .navigationDestination(for: Color.self) { color in
                ColorDetail(color: color)
            }
            .navigationTitle("Colors")
        }
    }
}
