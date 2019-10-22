import UIKit
import PlaygroundSupport
import AVFoundation

 class ViewController : UIViewController {
    var sfondoMainView : UIImageView!
    var sfondo : UIImage!
    var haze: UIImage!
    var raptor:UIImage!
    var blueFlame:UIImage!
    var ptero:UIImage!
    

    override func loadView() {
        let myView = UIView()
        
        raptor = UIImage(named: "RevertedRaptor.png")
       
        //Declaration of a View for the world background
        let sfondoMainView = UIImageView()
        sfondoMainView.frame = CGRect(x: -700, y: 0, width: 1100, height: 700)
        sfondo = UIImage(named: "world.jpg")
        sfondoMainView.image = sfondo
        myView.addSubview(sfondoMainView)
        
        //Declaration of many dinos
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
    
        let pteroView = UIImageView()
        pteroView.frame = CGRect(x: 40, y:260 , width:200, height: 120)
        ptero = UIImage(named: "pterodattilo.png")
        pteroView.image = ptero
        myView.addSubview(pteroView)
        
        //Declaration of a View for the dragon Haze
        let hazeView = UIImageView()
        hazeView.frame = CGRect(x: 240, y: 250, width: 100, height: 80)
        haze = UIImage(named: "haze.png")
        hazeView.image = haze
        myView.addSubview(hazeView)
        
        //Declaration of a View for the special flame
        let blueFlameView = UIImageView()
        blueFlameView.frame = CGRect(x:30, y:280, width: 220, height: 350)
        blueFlame = UIImage(named: "bluflame.png")
        blueFlameView.alpha=0.0
        blueFlameView.image = blueFlame
        myView.addSubview(blueFlameView)
        
        //Animations
        let animation1 = CABasicAnimation(keyPath: "position")
        animation1.duration = 0.08
        animation1.repeatCount = 20
        animation1.autoreverses = true
        animation1.fromValue = NSValue(cgPoint: CGPoint(x: hazeView.center.x - 10, y: hazeView.center.y))
        animation1.toValue = NSValue(cgPoint: CGPoint(x: hazeView.center.x + 10, y: hazeView.center.y))
        hazeView.layer.add(animation1, forKey: "position")
        
        UIView.animate(withDuration: 1.2, animations:  {
            blueFlameView.alpha=1.0
        })
        
    
        self.view = myView
    }
}
    //Audio for animations
    let viewController = ViewController()
    var audioPlayer:AVAudioPlayer!
    PlaygroundPage.current.liveView = viewController
    sleep(1)
    let path = Bundle.main.path(forResource: "Hazeflame.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    
    do{
        audioPlayer =  try AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
    }catch{}
    PlaygroundPage.current.needsIndefiniteExecution = true
