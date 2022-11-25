//
//  PdfViewModel.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/22.
//

import Foundation
import SwiftUI

class PdfViewModel : DocumentViewModel {
    var pageCount: Int
    
    init( doc:DocumentModel ){
        self.pageCount = Int.random(in: 1...100)
        super.init(name:doc.name)
    }
    
    
    override var description: String {
        return "This is Description for pdf:\(self.name)"
    }
    
    override func createView() -> AnyView {
        AnyView( PdfView(vm: self) )
    }
    
    override func downloadFinished() {
        //do 截屏封面
        //计算页数
    }
}
