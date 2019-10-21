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
        animation.fromValue = NSValue(cgPoint: CGPoint(x: mDragoneView.center.x - 10, y: mDragoneView.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: mDragoneView.center.x + 10, y: mDragoneView.center.y))
        mDragoneView.layer.add(animation, forKey: "position")
        
        UIView.animate(withDuration: 1.6) {
            fireView.transform = CGAffineTransform (translationX: -320, y: 320)
        }
        
        UIView.animate(withDuration: 3.5) {
            dinospView.transform = CGAffineTransform (translationX: -320, y: 320)
        }
        
        UIView.animate(withDuration: 0.8) {
            dinoView2.transform = CGAffineTransform (translationX: 0, y: -105)
        }
        
        let secondsToDelay = 0.8
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
           UIView.animate(withDuration: 0.8) {
               dinoView2.transform = CGAffineTransform (translationX: 0, y: 35)
           }
        }
        
        
        /*
        let secondsToDelay2 = 0.8
               DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay2) {
                  UIView.animate(withDuration: 0.8){
                      dinospView.transform = CGAffineTransform ( translationX: 0, y: 150)
                  }
               }
        
        UIView.animate(withDuration: 0.8) {
            dinospView.transform = CGAffineTransform (translationX: 0, y: -110)
        }
        */
        
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



    
