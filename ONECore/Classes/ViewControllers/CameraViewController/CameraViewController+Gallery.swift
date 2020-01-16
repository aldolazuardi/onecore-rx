//
//  CameraViewController+Gallery.swift
//  ONECore
//
//  Created by DENZA on 27/10/19.
//

import UIKit

extension CameraViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    public func importFromGallery() {
        let imagePicker = UIImagePickerController()
        if !UIImagePickerController.isSourceTypeAvailable(.photoLibrary) { return }
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = false
        present(imagePicker, animated: true, completion: nil)
    }

    public func imagePickerController(
        _ picker: UIImagePickerController,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]
=======
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
>>>>>>> fix 100 warnings
=======
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]
>>>>>>> fix 70 warnings
=======
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
>>>>>>> fix 100 warnings
=======
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]
>>>>>>> fix 70 warnings
    ) {
        var selectedImage: UIImage?
        if let editedImage = info[.editedImage] as? UIImage {
            selectedImage = editedImage
        } else if let originalImage = info[.originalImage] as? UIImage {
            selectedImage = originalImage
        }
        guard let image = selectedImage else { return }
        picker.dismiss(animated: true, completion: nil)
        delegate?.cameraViewControllerDidTakePicture(
            originalImage: image,
            croppedImage: image
        )
    }
}
