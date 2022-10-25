//
//  CameraViewControllerDelegate.swift
//  ONECore
//
//  Created by Sofyan Fradenza Adi on 25/10/19.
//

import Foundation

@objc public protocol CameraViewControllerDelegate: AnyObject {
    func cameraViewControllerDidTakePicture(originalImage: UIImage, croppedImage: UIImage)
}
