//
//  ContentView.swift
//  NANO08MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import SwiftUI

struct ContentView<VM: ContentViewModelProtocol & ContentFlowStateProtocol>: View {

    @StateObject var viewModel: VM
    
    var body: some View {
        ContentFlowCoordinator(state: viewModel, content: content)
    }

    @ViewBuilder private func content() -> some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                List {
                    ForEach(viewModel.users) { item in
                        if let name = item.name{
                            Text(name)
                        }
                    }
                }
                
                ///Create the "Toolbar"
                HStack {
                    Spacer()
                    
                    CustomButton(systemName: "house", action: viewModel.firstAction, isDisabled: true)
                    
                    Spacer()
                    
                    CustomButton(systemName: "folder", action: viewModel.secondAction)
                    
                    Spacer()
                    
                    CustomButton(systemName: "person", action: viewModel.sheetAction)
                    
                    Spacer()
                    
                    CustomButton(systemName: "building.2", action: viewModel.thirdAction)
                    
                    Spacer()
                }
                .font(.largeTitle)
                .padding(.top)
                .background(.black)
            }
        }
        .navigationBarTitle("List", displayMode: .inline)
    }
}
 
fileprivate struct CustomButton: View {
    let systemName: String
    let action: () -> Void
    var isDisabled: Bool = false
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "house")
        }.disabled(isDisabled)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
