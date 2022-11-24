//
//  DetailView.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/21.
//

import SwiftUI

struct DetailView: View {
    var doc:DocumentModel
    @StateObject private var vm:DocumentViewModel
    
    init( doc : DocumentModel ) {
        self.doc = doc
        
        _vm = StateObject(wrappedValue: DocumentViewModel.createInstance(doc: doc))
    }
    
    var body: some View {
        VStack {
            Text("Document Detail")
                .font(.title2)
                .padding(50)
            Spacer()
            vm.createView()
            Text("\(vm.description)")
            Spacer()
        }
        .navigationTitle(doc.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        let doc = DocumentModel(id: UUID(), name: "《三体》", fileType: "pdf")
        NavigationView {
            DetailView(doc:doc)
        }
    }
}
