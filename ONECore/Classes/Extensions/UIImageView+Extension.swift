//
//  UIImageView+Extension.swift
//  ONECore
//
//  Created by DENZA on 17/12/18.
//  Copyright © 2018 NDV6. All rights reserved.
//

import Foundation
import SDWebImage

extension UIImageView {
    public func downloadedFrom(
        link: String,
        placeholderImage: UIImage? = nil,
        completion: @escaping () -> Void = {}
    ) {
        image = placeholderImage
        if !link.isValidURL() { return }
        sd_setImage(with: URL(string: link), placeholderImage: placeholderImage, options: []) {(image, _, _, _) in
            var imageResult = UIImage()
            if image != nil {
                imageResult = image!
                completion()
            } else if placeholderImage != nil {
                imageResult = placeholderImage!
            }
            self.image = imageResult
        }
    }
    
    public func setImage(with urlString: String, placeholderImage: UIImage? = nil) {
        self.sd_imageIndicator = SDWebImageActivityIndicator.gray
        self.sd_setImage(
            with: URL(string: urlString),
            placeholderImage: placeholderImage
        )
    }
    
    public func setImage(with urlString: String, placeholderImage: UIImage? = nil, completion: @escaping (UIImage?)->()) {
        self.sd_imageIndicator = SDWebImageActivityIndicator.gray
        self.sd_setImage(
            with: URL(string: urlString),
            placeholderImage: placeholderImage
        ) { (image, _, _, _) in
            completion(image)
        }
    }
    
//    func addPlayImage() {
//        DispatchQueue.main.async {
//            let width = self.frame.width * 0.5
//            let height = self.frame.height * 0.5
//            let size = width < height ? width : height
//            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: size, height: size))
//            imageView.image = ThemeManager.instance.images.playButton
//            imageView.center = self.center
//            self.addSubview(imageView)
//        }
//    }
//    
//    func addContentLockImage() {
//        DispatchQueue.main.async {
//            let imageView = UIImageView(
//                frame: CGRect(
//                    x: Height.smallest,
//                    y: Height.smallest,
//                    width: Height.mediumSmall,
//                    height: Height.mediumSmall
//                )
//            )
//            imageView.image = ThemeManager.instance.images.contentLock
//            self.addSubview(imageView)
//        }
//    }
    
    public func addDimOverlay() {
        DispatchQueue.main.async {
            let view = UIView(frame: self.frame)
            view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
            self.addSubview(view)
        }
    }
}
