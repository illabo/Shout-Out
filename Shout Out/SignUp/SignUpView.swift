//
//  SignUpView.swift
//  Shout Out
//
//  Created by Yachin Ilya on 07.07.2022.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject private var viewModel: SignUpViewModel

    init(viewModel: SignUpViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ZStack {
            if viewModel.isSending {
                ProgressView()
            } else {
                signUnView()
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(false)
    }

    @ViewBuilder
    private func signUnView() -> some View {
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
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(textfieldStyle)
                    .padding(.horizontal)
                Button("Sing Up") {
                    viewModel.sendUserCredentials()
                }
                .buttonStyle(.borderedProminent)
                .disabled(viewModel.isButtonEnabled == false)
                .padding([.bottom, .horizontal])
            }
            .background(Color(uiColor: UIColor.systemFill))
            .cornerRadius(20)

            Spacer()
        }
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(viewModel: SignUpViewModel(user: UserModel()))
    }
}
