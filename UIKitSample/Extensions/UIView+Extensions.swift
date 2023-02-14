import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
    
    func makeConstraints(inRelation view: UIView) {
        guard let superview = superview else {
            return
        }
        
        translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 16),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -16),
            bottomAnchor.constraint(equalTo: view.topAnchor, constant: -68)
        ])
    }
    
    func centerVertivallyWithMargins(_ margins: CGFloat = 16) {
        guard let superview = superview else {
            return
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: margins),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -margins),
            centerYAnchor.constraint(equalTo: superview.centerYAnchor)
        ])
    }
    
    func center() {
        guard let superview = superview else {
            return
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: superview.centerXAnchor),
            centerYAnchor.constraint(equalTo: superview.centerYAnchor)
        ])
    }
    
    func size(_ size: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: size),
            widthAnchor.constraint(equalToConstant: size)
        ])
    }
    
    func fillSuperview(withConstant constant: CGFloat = 0) {
      guard let superview = superview else { return }
      translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate(
        [leadingAnchor.constraint(
          equalTo: superview.leadingAnchor, constant: constant),
         topAnchor.constraint(
          equalTo: superview.topAnchor, constant: constant),
         trailingAnchor.constraint(
          equalTo: superview.trailingAnchor, constant: -constant),
         bottomAnchor.constraint(
          equalTo: superview.bottomAnchor, constant: -constant)]
      )
    }
}
