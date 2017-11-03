import Foundation
import UIKit
import SnapKit

class SwipeProgression: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    func setup() {
        self.backgroundColor = UIColor.white
        self.snp.makeConstraints({(makes) -> Void in
            makes.leading.equalToSuperview()
            makes.top.equalToSuperview()
            makes.height.equalTo(superview!.layer.frame.height*0.035)
            makes.width.equalTo(0)
        })
    }
    
    func animateWidth(scrollheight: CGFloat, scrollviewcurrent: UIScrollView, targetviewcontroller: UIViewController) {
        
        let ratioscrolltoy = (-scrollviewcurrent.contentOffset.y)/(scrollheight)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.snp.updateConstraints({(makes) -> Void in
                makes.width.equalTo(ratioscrolltoy*(self.superview?.layer.frame.width)!)
            })
        }, completion:  { stop in
            if scrollviewcurrent.contentOffset.y < -scrollheight {
                self.removeFromSuperview()
                return
            }
        })
    }
}
