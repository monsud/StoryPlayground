import UIKit
import PlaygroundSupport

 class ViewController : UIViewController {
    var sfondoMainView : UIImageView!
    var sfondo : UIImage!
    var haze: UIImage!
    var raptor:UIImage!

   

    override func loadView() {
        let myView = UIView()
       
        let sfondoMainView = UIImageView()
        sfondoMainView.frame = CGRect(x: -700, y: 0, width: 1100, height: 700)
        sfondo = UIImage(named: "world.jpg")
        sfondoMainView.image = sfondo
        myView.addSubview(sfondoMainView)
        
        
        let raptorView = UIImageView()
        raptorView.frame = CGRect(x: -10, y:500 , width:220, height: 160)
        raptor = UIImage(named: "revertedRaptor.png")
        raptorView.image = raptor
        myView.addSubview(raptorView)
    
        
        
        // ----> Haze
        let hazeView = UIImageView()
        hazeView.frame = CGRect(x: 240, y: 200, width: 100, height: 80)
        haze = UIImage(named: "haze.png")
        hazeView.image = haze
        myView.addSubview(hazeView)
        
        UIView.animate(withDuration: 0.8) {
            raptorView.transform = CGAffineTransform(translationX: -300, y: 0)
            UIView.animate(withDuration: 0.8){
                hazeView.transform = CGAffineTransform(translationX: 0, y: 360)
            }
        }
        // ------
        
        
    
        self.view = myView
    }
}



    let viewController = ViewController()
    PlaygroundPage.current.liveView = viewController
    PlaygroundPage.current.needsIndefiniteExecution = true


