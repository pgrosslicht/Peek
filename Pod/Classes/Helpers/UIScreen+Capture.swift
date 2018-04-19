//
//  UIScreen+Capture.swift
//  Peek
//
//  Created by Patrick Grosslicht on 12.04.18.
//

import Foundation
import AVFoundation

extension UIScreen {
    internal var peek_isCaptured: Bool {
        if #available(iOS 11, *) {
            return isCaptured
        } else {
            let route = AVAudioSession.sharedInstance().currentRoute
            return (route.outputs.first(where: { $0.portType == AVAudioSessionPortHDMI }) != nil)
        }
    }
}
