//
//  BuilderHelpersViews.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 28/02/22.
//

import SwiftUI



struct IdPart: View {
    var text: String?
    
    var body: some View {
        if let text = text {
            Labelfy(text: text)
        } else {
            Spacer()
        }
    }
}
struct NamePart: View {
    var text: String?
    
    var body: some View {
        if let text = text {
            Labelfy(text: text)
        } else {
            Spacer()
        }
    }
}
struct SymbolPart: View {
    var text: String?
    
    var body: some View {
        if let text = text {
            SFImagefy(sfName: text)
        } else {
            Spacer()
        }
    }
}
struct TimestampPart: View {
    var text: String?
    
    var body: some View {
        if let text = text {
            Labelfy(text: text)
        } else {
            Spacer()
        }
    }
}
//class ViewMenuState {
//    var showImage: Bool = false
//    var showId:    Bool = false
//    var showName:  Bool = false
//    var showDate:  Bool = false
//}

class ViewMenuState: ObservableObject {
    @Published var showImage: Bool = true
    @Published var showId:    Bool = true
    @Published var showName:  Bool = true
    @Published var showDate:  Bool = true
}

struct SFImagefy: View {
    let sfName: String
    var body: some View {
        Image(systemName: sfName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct Labelfy: View {
    let text: String
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .padding()
                .lineLimit(0)
                .font(.body)
                .foregroundColor(.primary)
            
            Spacer()
        }
        .background(.secondary)
        .cornerRadius(10.0)
    }
}

//struct BuilderHelpersViews_Previews: PreviewProvider {
//    static var previews: some View {
////        SFImagefy(sfName: "person.crop.rectangle.stack")
////        Labelfy(text: UUID().uuidString)
//        ViewMenu(viewMenuState: ViewMenuState(), user: User(id: UUID(), name: " ", symbol: "", timestamp: Date()))
//    }
//}

