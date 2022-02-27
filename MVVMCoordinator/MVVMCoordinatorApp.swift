//
//  MVVMCoordinatorApp.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import SwiftUI

@main
struct MVVMCoordinatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewModel())
        }
    }
}
