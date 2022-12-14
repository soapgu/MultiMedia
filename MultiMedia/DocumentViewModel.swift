//
//  DocumentViewModel.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/22.
//

import Foundation
import SwiftUI

class DocumentViewModel : ObservableObject,Identifiable {
    @Published var name: String
    
    init(name:String){
        self.name = name
    }
    
    var description: String {
        fatalError("not sub class DocumentViewModel")
    }
    
    ///生成对应View
    func createView() -> AnyView {
        fatalError("not sub class DocumentViewModel")
    }
    
    /// 下载完成回调抽象方法
    func downloadFinished() {}
}

extension DocumentViewModel {
    static func createInstance( doc: DocumentModel ) -> DocumentViewModel {
        switch( doc.fileType ){
        case ".jpg":
            return ImageViewModel(doc: doc)
        case ".pdf":
            return PdfViewModel(doc: doc)
        case ".avi":
            return VideoViewModel(doc: doc)
        default:
            return PdfViewModel(doc: doc)
        }
    }
}
