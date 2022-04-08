
import UIKit

protocol PhotoPickerDelegate: AnyObject {
  func didSelectPhoto(image: UIImage)
  func didCreateNewPhoto(photo: Photo)
}

protocol PhotoPickerDataSource: AnyObject {
  func getLibrary() -> Library
}
