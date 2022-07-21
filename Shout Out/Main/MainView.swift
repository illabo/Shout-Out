//
//  MainView.swift
//  Shout Out
//
//  Created by Yachin Ilya on 09.07.2022.
//

import SwiftUI

struct MainView: View {
    @ObservedObject private var viewModel: MainViewModel

    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    postsStack()
                    if viewModel.isLoadingPosts || viewModel.isLoadingAccount {
                        ProgressView()
                            .onAppear {
                                viewModel.loadMorePosts()
                            }
                    } else {
                        if viewModel.posts.isEmpty {
                            Text("So empty, no posts yet")
                                .padding()
                            Button(action: { viewModel.loadMorePosts(force: true) }) {
                                Image(systemName: "arrow.triangle.2.circlepath")
                                Text("Try reload")
                            }
                        }
                    }
                }
                .background(Color(uiColor: .systemBackground))
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Log out") {
                            viewModel.logoutUser()
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.accentColor)
                            .onTapGesture {
                                viewModel.isEditingNewPost.toggle()
                            }
                            .disabled(viewModel.isLoadingAccount)
                    }
                }
                .navigationTitle(viewModel.userName)
                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarHidden(false)
            }

            if viewModel.isEditingNewPost {
                editingInput()
            }
        }
    }

    @ViewBuilder
    private func editingInput() -> some View {
        ZStack {
            Color.gray.opacity(0.8)
                .ignoresSafeArea()

            VStack {
                Spacer()

                VStack {
                    TextEditor(text: $viewModel.newText)
                        .border(Color.gray)
                        .padding([.top, .horizontal])
                    HStack {
                        Button("Post") {
                            viewModel.submitNewPost(viewModel.newText)
                        }
                        .buttonStyle(.borderedProminent)
                        .disabled(
                            viewModel.newText.trimmingCharacters(
                                in: .whitespacesAndNewlines
                            )
                            .isEmpty
                        )
                        Button("Cancel") {
                            viewModel.isEditingNewPost = false
                            viewModel.newText = "" // Do keeping the text between edits needed?
                        }
                        .buttonStyle(.bordered)
                    }
                    .padding([.bottom, .horizontal])
                }
                .frame(maxHeight: 250)
                .background(Color(uiColor: UIColor.systemBackground))
                .cornerRadius(20)
                .padding()

                Spacer()
            }
        }
    }

    @ViewBuilder
    private func postsStack() -> some View {
        LazyVStack(spacing: 8) {
            ForEach(viewModel.posts.filter { $0.createdAt != nil }, id: \.id) { post in
                PostView(text: post.textContent) {
                    viewModel.deletePost(post)
                }
                .padding(.horizontal)
            }
        }
        .padding(.vertical)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel(user: UserModel(), storage: StorageService()))
    }
}
