import UIKit

class Photo: Codable {
  var name: String
  var caption: String
  var url: String

  init(name: String, caption: String, url: String) {
    self.name = name
    self.caption = caption
    self.url = url
  }
}

class Library: Codable {
  var photos: [Photo] {
    didSet {
      Local.writeLibrary(library: self)
    }
  }

  init(photos: [Photo]) {
    self.photos = photos
  }

  init() {
    self.photos = Local.readLibrary().photos
  }
}
