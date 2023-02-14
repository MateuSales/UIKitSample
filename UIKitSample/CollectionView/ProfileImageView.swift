import UIKit

enum BorderShape: String {
    case circle
    case squircle
    case none
}

final class ProfileImageView: UIImageView {
    private let boldBorder: Bool
    private let borderShape: BorderShape
    
    var hasBorder: Bool = false {
        didSet {
            guard hasBorder else { return layer.borderWidth = 0 }
            layer.borderWidth = boldBorder ? 10 : 2
        }
    }
    
    convenience init() {
        self.init(borderShape: .none)
    }
    
    init(borderShape: BorderShape, boldBorder: Bool = false) {
        self.borderShape = borderShape
        self.boldBorder = boldBorder
        super.init(frame: CGRect.zero)
        backgroundColor = .lightGray
        contentMode = .scaleAspectFit
        clipsToBounds = true
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { nil }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupBorderShape()
    }
    
    private func setupBorderShape() {
        hasBorder = borderShape != .none
        let width = bounds.size.width
        let divisor: CGFloat
        
        switch borderShape {
        case .circle:
            divisor = 2
        case .squircle:
            divisor = 4
        case .none:
            divisor = width
        }
        
        let cornerRadius = width / divisor
        layer.cornerRadius = cornerRadius
    }
}
