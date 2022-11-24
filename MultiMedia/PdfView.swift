//
//  PdfView.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/22.
//

import SwiftUI

struct PdfView: View {
    @ObservedObject private var vm: PdfViewModel
    
    init(vm: DocumentViewModel) {
        self.vm = vm as! PdfViewModel
    }
    
    var body: some View {
        VStack {
            Text("This is pdf view:\(vm.name)")
            Text("totle page count:\(vm.pageCount)")
        }
    }
}

struct PdfView_Previews: PreviewProvider {
    static var previews: some View {
        let doc = DocumentModel(id: UUID(), name: "《三体》", fileType: "pdf")
        let vm = PdfViewModel(doc: doc)
        PdfView(vm: vm)
    }
}
