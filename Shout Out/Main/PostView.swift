//
//  PostView.swift
//  Shout Out
//
//  Created by Yachin Ilya on 10.07.2022.
//

import SwiftUI

struct PostView: View {
    init(text: String, deletionHandler: (() -> Void)? = nil) {
        self.text = text
        self.deletionHandler = deletionHandler
    }

    private var text: String
    private var deletionHandler: (() -> Void)?

    var body: some View {
        VStack {
            Text(text)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            HStack {
                Spacer()
                Button("Delete") {
                    deletionHandler?()
                }
                .buttonStyle(.plain)
                .foregroundColor(.red)
            }
            .padding([.horizontal, .bottom])
        }
        .background(Color(uiColor: .systemBackground))
        .cornerRadius(20)
        .shadow(radius: 1)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(text: "First post")
    }
}
