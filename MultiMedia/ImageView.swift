//
//  ImageView.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/23.
//

import SwiftUI

struct ImageView: View {
    
    @ObservedObject private var vm: DocumentViewModel
    
    init(vm: DocumentViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        Text("Hello, this is image view \(vm.name)")
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        let doc = DocumentModel(id: UUID(), name: "设计图1", fileType: ".jpg")
        let vm = ImageViewModel(doc: doc)
        ImageView(vm: vm)
    }
}
