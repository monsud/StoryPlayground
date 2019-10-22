import UIKit
import PlaygroundSupport

 class ViewController : UIViewController {
    var worldMainView : UIImageView!
    var world : UIImage!
    var dino: UIImage!
    var dinosp: UIImage!
    var mDragone : UIImage!
    var fire : UIImage!
    var ptero:UIImage!
    var pterorev:UIImage!

    override func loadView() {
        let myView = UIView()
        
        //Declaration of a View for the world background
        let worldMainView = UIImageView()
        worldMainView.frame = CGRect(x: 0, y: 0, width: 800, height: 800)
        world = UIImage(named: "world.jpg")
        worldMainView.image = world
        
        //Declration of more dino for each View
        let dinoView = UIImageView()
        dinoView.frame = CGRect(x: 325, y: 450, width: 80, height: 80)
        dino = UIImage(named: "dino.png")
        dinoView.image = dino
        
        let pteroView1 = UIImageView()
        pteroView1.frame = CGRect(x: -20, y:70 , width: 150, height: 90)
        ptero = UIImage(named: "pterodattilo.png")
        pteroView1.image = ptero
        
        let pteroView2 = UIImageView()
        pteroView2.frame = CGRect(x: 50, y:40 , width: 90, height:60)
        ptero = UIImage(named: "pterodattilo.png")
        pteroView2.image = ptero
        
        let pteroView3 = UIImageView()
        pteroView3.frame = CGRect(x: -70, y:0 , width: 130, height: 70)
        ptero = UIImage(named: "pterodattilo.png")
        pteroView3.image = ptero
        
        //Declaration of a View for the dragon MonDragone
        let mDragoneView = UIImageView()
        mDragoneView.frame = CGRect(x: 130, y: 80, width: 250, height: 250)
        mDragone = UIImage(named: "mDragone.png")
        mDragoneView.image = mDragone
        
        let pteroRevView = UIImageView()
        pteroRevView.frame = CGRect(x: 260, y:-60 , width: 310, height: 230)
        pterorev = UIImage(named: "pteroCapov.png")
        pteroRevView.image = pterorev
        
        let dinoView2 = UIImageView()
        dinoView2.frame = CGRect(x: 200, y: 530, width: 200, height: 150)
        dino = UIImage(named: "dino.png")
        dinoView2.image = dino
        
        let dinospView = UIImageView()
        dinospView.frame = CGRect (x: -10, y: 460, width: 200, height: 200)
        dinosp = UIImage (named: "dinosp.png")
        dinospView.image = dinosp
        
        //Declaration for the Mondragone's fire
        let fireView = UIImageView()
        fireView.frame = CGRect(x: 190, y: 245, width: 200, height: 200)
        fire = UIImage (named: "fire.png")
        fireView.image = fire
        
        //Animations
        let animation1 = CABasicAnimation(keyPath: "position")
        animation1.duration = 0.08
        animation1.repeatCount = 4
        animation1.autoreverses = true
        animation1.fromValue = NSValue(cgPoint: CGPoint(x: mDragoneView.center.x - 10, y: mDragoneView.center.y))
        animation1.toValue = NSValue(cgPoint: CGPoint(x: mDragoneView.center.x + 10, y: mDragoneView.center.y))
        mDragoneView.layer.add(animation1, forKey: "position")
        
        let animation2 = CABasicAnimation(keyPath: "position")
        animation2.duration = 0.1
        animation2.repeatCount = 12
        animation2.autoreverses = true
        animation2.fromValue = NSValue(cgPoint: CGPoint(x: pteroRevView.center.x - 6, y: pteroRevView.center.y + 6))
        animation2.toValue = NSValue(cgPoint: CGPoint(x: pteroRevView.center.x + 6, y: pteroRevView.center.y - 6))
        pteroRevView.layer.add(animation2, forKey: "position")
        
        myView.addSubview(worldMainView)
        myView.addSubview(dinoView)
        myView.addSubview(dinoView2)
        myView.addSubview(dinospView)
        myView.addSubview(pteroRevView)
        myView.addSubview(mDragoneView)
        myView.addSubview(fireView)
        myView.addSubview(pteroView1)
        myView.addSubview(pteroView2)
        myView.addSubview(pteroView3)
        
        //This animations are used for the defeat of the dino with flame
        UIView.animate(withDuration: 1.12, animations:{
            fireView.transform = CGAffineTransform (translationX: -300, y: 400)
        })
        
        UIView.animate(withDuration: 2.5, animations:{
            dinospView.transform = CGAffineTransform (translationX: -280, y: 320)
        })
        
        self.view = myView
    }
}

let viewController = ViewController()

PlaygroundPage.current.liveView = viewController
PlaygroundPage.current.needsIndefiniteExecution = true



    
