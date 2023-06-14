import UIKit

protocol AlertView {
    func alert(error: Error)
}

extension AlertView {
    func alert(error: Error) {
        var title = "Error"
        var message = error.localizedDescription
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)

        
        if let characterError = error as? Errors {
            message = characterError.message
            title = characterError.title
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(cancelAction)
        
        UIApplication.getPresentedVC()?.present(alert, animated: true, completion: nil)
    }
}
