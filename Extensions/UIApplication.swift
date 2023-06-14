import UIKit

extension UIApplication {
    class func getPresentedVC() -> UIViewController? {
        let presentedVC = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        
        return presentedVC?.rootViewController
    }
}

