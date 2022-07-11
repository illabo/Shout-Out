//
//  ConfirmCodeView.swift
//  Shout Out
//
//  Created by Yachin Ilya on 07.07.2022.
//

import SwiftUI

struct ConfirmCodeView: View {
    @ObservedObject private var viewModel: ConfirmCodeViewModel

    init(viewModel: ConfirmCodeViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ZStack {
            if viewModel.isSending {
                ProgressView()
            } else {
                confirmCodeView()
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(false)
    }

    @ViewBuilder
    private func confirmCodeView() -> some View {
        VStack {
            Spacer()

            VStack {
                let textfieldStyle = RoundedBorderTextFieldStyle()
                TextField("Confirmation code", text: $viewModel.confirmationCode)
                    .textFieldStyle(textfieldStyle)
                    .padding([.top, .horizontal])
                HStack {
                    Button("Sing Up") {
                        viewModel.sendConfirmationCode()
                    }
                    .buttonStyle(.borderedProminent)
                    .disabled(viewModel.isButtonEnabled == false)

                    Button("Cancel") {
                        viewModel.cancelSignUp()
                    }
                    .buttonStyle(.bordered)
                }
                .padding([.bottom, .horizontal])
            }
            .background(Color(uiColor: UIColor.systemFill))
            .cornerRadius(20)

            Spacer()
        }
        .padding()
    }
}

struct ConfirmCodeView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmCodeView(viewModel: ConfirmCodeViewModel(user: UserModel()))
    }
}
