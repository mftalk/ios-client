//
//  ChatView.swift
//  MFTalk
//
//  Created by B on 30/12/25.
//

import SwiftUI
import SwiftData

struct ChatView: View {
    var chatName: String
    var body: some View {
        Image(systemName: "figure.badminton")
            .foregroundStyle(.orange)
            .font(.system(size: 50))
        Text("Hello, you are now in the chat view!")
    }
}
