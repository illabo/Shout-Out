//
//  SignInView.swift
//  Shout Out
//
//  Created by Yachin Ilya on 03.07.2022.
//

import SwiftUI

struct SignInView: View {
    @ObservedObject private var viewModel: SignInViewModel
    private var router: SignInRouter

    init(viewModel: SignInViewModel, router: SignInRouter) {
        self.viewModel = viewModel
        self.router = router
    }

    var body: some View {
        NavigationView {
            ZStack {
                if viewModel.isSending {
                    ProgressView()
                } else {
                    signInView()
                }
            }
            .navigationViewStyle(.stack)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(false)
            .navigation(item: $viewModel.route) { (route: SignInViewModel.Route) in
                router.view(for: route)
            }
        }
    }

    @ViewBuilder
    private func signInView() -> some View {
        VStack {
            Spacer()

            VStack {
                let textfieldStyle = RoundedBorderTextFieldStyle()
                TextField("User Name", text: $viewModel.username)
                    .textFieldStyle(textfieldStyle)
                    .padding([.top, .horizontal])
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(textfieldStyle)
                    .padding(.horizontal)
                Button("Sing In") {
                    viewModel.sendUserCredentials()
                }
                .buttonStyle(.borderedProminent)
                .disabled(viewModel.isButtonEnabled == false)
                .padding([.bottom, .horizontal])
            }
            .background(Color(uiColor: UIColor.systemFill))
            .cornerRadius(20)

            Spacer()

            HStack {
                Text("No account:")
                Button("Sign up") {
                    viewModel.requestSignUp()
                }
            }
            .padding([.bottom, .horizontal])
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    private static var viewModel = UserModel()
    static var previews: some View {
        SignInView(viewModel: SignInViewModel(user: viewModel), router: SignInRouter(userModel: viewModel))
    }
}
