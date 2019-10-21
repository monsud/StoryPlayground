import UIKit
import PlaygroundSupport

 class ViewController : UIViewController {
    var sfondoMainView : UIImageView!
    var sfondo : UIImage!
    var haze: UIImage!
    var raptor:UIImage!
    var blueFlame:UIImage!

   

    override func loadView() {
        let myView = UIView()
        
        raptor = UIImage(named: "revertedRaptor.png")
       
        let sfondoMainView = UIImageView()
        sfondoMainView.frame = CGRect(x: -700, y: 0, width: 1100, height: 700)
        sfondo = UIImage(named: "world.jpg")
        sfondoMainView.image = sfondo
        myView.addSubview(sfondoMainView)
        
        
        let raptorView1 = UIImageView()
        raptorView1.frame = CGRect(x: 120, y:480 , width:150, height: 130)
        raptorView1.image = raptor
        myView.addSubview(raptorView1)
        
        let raptorView2 = UIImageView()
        raptorView2.frame = CGRect(x: 110, y:350 , width:150, height: 130)
        raptorView2.image = raptor
        myView.addSubview(raptorView2)
        
        let raptorView3 = UIImageView()
        raptorView3.frame = CGRect(x: 0, y:540 , width:150, height: 130)
        raptorView3.image = raptor
        myView.addSubview(raptorView3)
    
        
        
        // ----> Haze
        let hazeView = UIImageView()
        hazeView.frame = CGRect(x: 240, y: 250, width: 100, height: 80)
        haze = UIImage(named: "haze.png")
        hazeView.image = haze
        myView.addSubview(hazeView)
        
        let blueFlameView = UIImageView()
        blueFlameView.frame = CGRect(x:-10, y:280, width: 250, height: 350)
        blueFlame = UIImage(named: "bluflame.png")
        blueFlameView.image = blueFlame
        myView.addSubview(blueFlameView)
        
        
    
        // ------
        
        
    
        self.view = myView
    }
}



    let viewController = ViewController()
    PlaygroundPage.current.liveView = viewController
    PlaygroundPage.current.needsIndefiniteExecution = true


