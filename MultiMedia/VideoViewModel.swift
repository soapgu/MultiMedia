//
//  VideoViewModel.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/23.
//

import Foundation
import SwiftUI

class VideoViewModel : DocumentViewModel {
    
    init( doc: DocumentModel ){
        super.init(name: doc.name)
    }
    
    override var description: String {
        "Description for video \(self.name)"
    }
    
    override func createView() -> AnyView {
        AnyView( VideoView(vm: self) )
    }
    
    override func downloadFinished() {
        // 截屏第一帧
    }
}
