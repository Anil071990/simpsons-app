import UIKit

extension UIImageView {
    func downloaded(from link: String) {
        let imageLink = Constants.imageUrl + link
        guard let url = URL(string: imageLink) else { return }
        
        if let data = try? Data(contentsOf: url) {
            self.image = UIImage(data: data)
        }
    }
}
