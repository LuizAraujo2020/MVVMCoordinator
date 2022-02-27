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
                        Text(item.name)
                    }
                }
                HStack {
                    
                    Spacer()
                    
                    Button {
                        viewModel.firstAction()
                    } label: {
                        Image(systemName: "house")
                    }.disabled(true)
                    
                    Spacer()
                    
                    Button {
                        viewModel.secondAction()
                    } label: {
                        Image(systemName: "folder")
                    }
                    
                    Spacer()
                    
                    Button {
                        viewModel.sheetAction()
                    } label: {
                        Image(systemName: "person")
                    }
                    
                    Spacer()
                    
                    Button {
                        viewModel.thirdAction()
                    } label: {
                        Image(systemName: "building.2")
                    }
                    
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
//
//struct ContentView: View {
//    private var items: FetchedResults<Item>
//    @EnvironmentObject var detailViewModel: DetailViewModel
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(detailViewModel.itemsViewModel) { item in
//                    NavigationLink {
////                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                        DetailView()
//                    } label: {
//                        Text(item.timestamp, formatter: itemFormatter)
//                    }
//                    .environmentObject(item)
//                }
//                .onDelete(perform: detailViewModel.deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: detailViewModel.addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
//    }
////
////    private func addItem() {
////        withAnimation {
////            let symbols: [String] = [
////                "star.bubble", "moon.stars.fill", "books.vertical", "umbrella", "camera.on.rectangle", "wand.and.stars", "theatermasks.fill", "gamecontroller", "bicycle", "figure.wave"
////            ]
////            let index = Int.random(in: 0..<symbols.count)
////
////            let newItem = Item(context: viewContext)
////            newItem.id = UUID()
////            newItem.name = "nome_" + String(index + 1)
////            newItem.symbol = symbols[index]
////            newItem.timestamp = Date()
////
////            do {
////                try viewContext.save()
////            } catch {
////                // Replace this implementation with code to handle the error appropriately.
////                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
////                let nsError = error as NSError
////                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
////            }
////        }
////    }
////
////    private func deleteItems(offsets: IndexSet) {
////        withAnimation {
////            offsets.map { items[$0] }.forEach(viewContext.delete)
////
////            do {
////                try viewContext.save()
////            } catch {
////                // Replace this implementation with code to handle the error appropriately.
////                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
////                let nsError = error as NSError
////                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
////            }
////        }
////    }
//}
//
//let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
/*
 //
 //  ContentView.swift
 //  NANO08MVVMCoordinator
 //
 //  Created by Luiz Araujo on 26/02/22.
 //

 import SwiftUI
 import CoreData

 struct ContentView: View {
     @StateObject var detailViewModel = DetailViewModel()
     
     var body: some View {
         NavigationView {
             List {
                 ForEach(detailViewModel.itemsViewModel) { item in
                     
                     NavigationLink {
                         DetailView()
                         Text("Item at \(item.timestamp, formatter: itemFormatter)")
                     } label: {
                         Text(item.timestamp, formatter: itemFormatter)
                     }
                     .environmentObject(item)
                 }
                 .onDelete(perform: detailViewModel.deleteItems)
             }
             .toolbar {
                 ToolbarItem(placement: .navigationBarTrailing) {
                     EditButton()
                 }
                 ToolbarItem {
                     Button(action: detailViewModel.addItem) {
                         Label("Add Item", systemImage: "plus")
                     }
                 }
             }
             Text("Select an item")
         }
     }

 }

 private let itemFormatter: DateFormatter = {
     let formatter = DateFormatter()
     formatter.dateStyle = .short
     formatter.timeStyle = .medium
     return formatter
 }()

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
     }
 }

 */
