import UIKit
import PlaygroundSupport

 class ViewController : UIViewController {
    var worldMainView : UIImageView!
    var world : UIImage!
    var dino: UIImage!
    var dinosp: UIImage!
    var mDragone : UIImage!
    var fire : UIImage!

    override func loadView() {
        let myView = UIView()
        
        let worldMainView = UIImageView()
        worldMainView.frame = CGRect(x: 0, y: 0, width: 800, height: 800)
        world = UIImage(named: "world.jpg")
        worldMainView.image = world
        
        let dinoView = UIImageView()
        dinoView.frame = CGRect(x: 325, y: 450, width: 80, height: 80)
        dino = UIImage(named: "dino.png")
        dinoView.image = dino
        
        let dinoView2 = UIImageView()
        dinoView2.frame = CGRect(x: 200, y: 530, width: 120, height: 90)
        dino = UIImage(named: "dino.png")
        dinoView2.image = dino
        
        let dinospView = UIImageView()
        dinospView.frame = CGRect (x: -10, y: 460, width: 200, height: 200)
        dinosp = UIImage (named: "dinosp.png")
        dinospView.image = dinosp
        
        let mDragoneView = UIImageView()
        mDragoneView.frame = CGRect(x: 130, y: 80, width: 250, height: 250)
        mDragone = UIImage(named: "mDragone.png")
        mDragoneView.image = mDragone
        
        let fireView = UIImageView()
        fireView.frame = CGRect(x: 190, y: 245, width: 140, height: 140)
        fire = UIImage (named: "fire.png")
        fireView.image = fire
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.08
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: mDragoneView.center.x - 10, y:mDragoneView.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: mDragoneView.center.x + 10, y: mDragoneView.center.y))
        mDragoneView.layer.add(animation, forKey: "position")
        
        UIView.animate(withDuration: 4.0, delay:0.5, options:[.repeat], animations:{
            dinospView.transform = CGAffineTransform (translationX: -320, y: 520)
        })
        
        UIView.animate(withDuration: 1.0, delay:1.5, options:[.repeat], animations:{
                fireView.transform = CGAffineTransform (translationX: -300, y: 520)
        })
        
    
        
        UIView.animate(withDuration: 1.0, delay:0.5, options:[.repeat, .autoreverse], animations:{
            dinoView2.transform = CGAffineTransform (translationX: 0, y: -100)
        })
        
        myView.addSubview(worldMainView)
        myView.addSubview(dinoView)
        myView.addSubview(dinoView2)
        myView.addSubview(dinospView)
        myView.addSubview(mDragoneView)
        myView.addSubview(fireView)
        self.view = myView
    }
}

let viewController = ViewController()

PlaygroundPage.current.liveView = viewController
PlaygroundPage.current.needsIndefiniteExecution = true



    
