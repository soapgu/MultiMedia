//
//  VideoView.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/23.
//

import SwiftUI

struct VideoView: View {
    @ObservedObject private var vm: DocumentViewModel
    
    init(vm: DocumentViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        Text("Content of Video: \(vm.name)")
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        let doc = DocumentModel(id: UUID(), name: "《长津湖》", fileType: ".avi")
        let vm = VideoViewModel(doc: doc)
        VideoView(vm: vm)
    }
}
