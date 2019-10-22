import UIKit
import PlaygroundSupport
import AVFoundation

 class ViewController : UIViewController {
    var worldMainView : UIImageView!
    var world : UIImage!
    var haze: UIImage!
    var monDragone : UIImage!
    var audioPlayer : AVAudioPlayer?
    var audioPlayer2: AVAudioPlayer?

    override func loadView() {
        let myView = UIView()
       
        //Declaration of a View for the world background
        let worldMainView = UIImageView()
        worldMainView.frame = CGRect(x: -70, y: 0, width: 700, height: 700)
        world = UIImage(named: "world.jpg")
        worldMainView.image = world
        
        //Declaration of a View for the dragon Haze
        let hazeView = UIImageView()
        hazeView.frame = CGRect(x: 250, y: 390, width: 100, height: 70)
        haze = UIImage(named: "haze.png")
        hazeView.image = haze
        
        //Declaration of a View for the dragon MonDragone
        let monDragoneView = UIImageView()
        monDragoneView.frame = CGRect(x: 20, y: 80, width: 250, height: 250)
        monDragone = UIImage(named: "monDragone.png")
        monDragoneView.image = monDragone
        
        //Animation
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.08
        animation.repeatCount = 20
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: monDragoneView.center.x - 10, y: monDragoneView.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: monDragoneView.center.x + 10, y: monDragoneView.center.y))
        monDragoneView.layer.add(animation, forKey: "position")
        
        //This animation is for the vibration of MonDragone
        let anim = CABasicAnimation(keyPath: "position")
        let myDelay = 3.3
        anim.duration = 0.08
        anim.repeatCount = 12
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: hazeView.center.x - 10, y: hazeView.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: hazeView.center.x + 10, y: hazeView.center.y))
        anim.beginTime = CACurrentMediaTime() + myDelay
        hazeView.layer.add(anim, forKey: "position")
        
        myView.addSubview(worldMainView)
        myView.addSubview(hazeView)
        myView.addSubview(monDragoneView)
        self.view = myView
        
        //Sounds
        let path = Bundle.main.path(forResource: "MonHaze.m4a", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do{
            audioPlayer =  try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }catch{}
    }
}

let viewController = ViewController()

PlaygroundPage.current.liveView = viewController
PlaygroundPage.current.needsIndefiniteExecution = true





    
