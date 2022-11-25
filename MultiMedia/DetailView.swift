//
//  DetailView.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/21.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject private var vm:DocumentViewModel
    
    init( vm : DocumentViewModel ) {
        self.vm = vm
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
        .navigationTitle(vm.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        let doc = DocumentModel(id: UUID(), name: "《三体》", fileType: "pdf")
        let vm = DocumentViewModel.createInstance(doc: doc);
        NavigationView {
            DetailView(vm: vm)
        }
    }
}
