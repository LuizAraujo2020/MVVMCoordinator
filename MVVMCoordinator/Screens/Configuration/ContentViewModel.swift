////
////  MainViewModel.swift
////  NANO08MVVMCoordinator
////
////  Created by Luiz Araujo on 26/02/22.
////

import SwiftUI
import CoreData


protocol ContentViewModelProtocol: ObservableObject {
//    var model: [User] { get }
    var users: [User] { get set }

    func firstAction()
    func secondAction()
    func thirdAction()
    func sheetAction()
}

final class ContentViewModel: ContentViewModelProtocol, ContentFlowStateProtocol {
    
    // MARK: - Flow State
    @Published var activeLink: ContentLink?
    
    //    let model: [User] = userMock

    @Published var users: [User]
    
    init(users: [User] = userMock) {
        self.users = users
    }
    
    func firstAction() {
        activeLink = .firstLinkParametrized(text: "Some param")
    }
    
    func secondAction() {
        activeLink = .secondLinkParametrized(number: 2)
    }
    
    func thirdAction() {
        activeLink = .thirdLink
    }
    
    func sheetAction() {
        activeLink = .sheetLink(item: "Sheet param")
    }
    
    //    func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
}

