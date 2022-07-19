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
    @State private var deletionRequested = false

    var body: some View {
        ZStack {
            VStack {
                postContent()
            }
            if deletionRequested {
                deleteConfirmation()
            }
        }
        .background(Color(uiColor: .secondarySystemGroupedBackground))
        .cornerRadius(20)
        .shadow(radius: 1)
    }

    @ViewBuilder
    private func postContent() -> some View {
        Text(text)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        HStack {
            Spacer()
            Button("Delete") {
                deletionRequested = true
            }
            .buttonStyle(.plain)
            .foregroundColor(.red)
        }
        .padding([.horizontal, .bottom])
    }

    @ViewBuilder
    private func deleteConfirmation() -> some View {
        VStack {
            Spacer()
            HStack {
                Spacer()

                Button("Cancel deletion") {
                    deletionRequested = false
                }
                .buttonStyle(.bordered)
                .padding([.leading, .vertical])

                Button("Delete") {
                    deletionHandler?()
                }
                .buttonStyle(.bordered)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding([.trailing, .vertical])

                Spacer()
            }
            Spacer()
        }
        .background(Color(uiColor: .systemBackground))
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(text: "First post")
    }
}
