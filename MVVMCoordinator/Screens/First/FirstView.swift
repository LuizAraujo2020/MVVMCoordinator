//
//  FirstView.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import SwiftUI

struct FirstView<VM: FirstViewModelProtocol & FirstFlowStateProtocol>: View {

    @StateObject var viewModel: VM

    var body: some View {
        FirstFlowCoordinator(state: viewModel, content: content)
    }

    @ViewBuilder private func content() -> some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text(viewModel.text)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(viewModel: FirstViewModel(text: "text 1"))
    }
}
