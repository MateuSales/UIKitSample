import UIKit

open class BaseViewController: UIViewController, ViewCoding {
    
    open override func viewDidLoad() {
        super.viewDidLoad()

        buildLayout()
        view.backgroundColor = .systemBackground
    }
    
    func addViewsInHierarchy() {
        fatalError("Este método deve ser sobrescrito na classe filha")
    }
    
    func setupConstraints() {
        fatalError("Este método deve ser sobrescrito na classe filha")
    }
}
