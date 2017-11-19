//
//  GameViewController.swift
//  TapCars
//
//  Created by Kishan Nakum on 24/01/17.
//  Copyright © 2017 kishan nakum. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.fetchVersion()
        goGame()
        
    }
    
    func goGame(){
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameMenu") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = false
            view.showsNodeCount = false
        }
    }

//    func fetchVersion(){
//        var req = URLRequest.init(url: URL.init(string: "https://leancloud.cn:443/1.1/classes/versionNumber/59f6fc2fee920a004575c2de")!)
//        req.setValue("2V9FmDTTVzjjOY3qlRMiaVjx-gzGzoHsz", forHTTPHeaderField: "X-LC-Id")
//        req.setValue("wdaTGiOxcgJjNtg8P7C1XIWs", forHTTPHeaderField: "X-LC-Key")
//        req.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        let session = URLSession.init(configuration: URLSessionConfiguration.default)
//        let task = session.dataTask(with: req) { (data, response, error) in
//            if error != nil{
//                DispatchQueue.main.async {
//                    self.goGame()
//                }
//                return
//            }
//            do{
//                let js = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
//                if let jsdic = js as? [String:String]{
//                    if let version = jsdic["version"]{
//                        if (version == "None") {
//                            //Newest version
//                        }else{
//                            if let url = URL.init(string: version){
//                                if let webvc = self.storyboard?.instantiateViewController(withIdentifier: "web") as? WebViewController{
//                                    webvc.url = url
//                                    DispatchQueue.main.async {
//                                        self.present(webvc, animated: false, completion: nil)
//                                    }
//                                    return
//                                }
//                                
//                                
//                                
//                            }
//                        }
//                    }
//                }
//                DispatchQueue.main.async {
//                    self.goGame()
//                }
//            }catch{
//                
//            }
//            //            js.decode(.init(UInt8), from: data!)
//            
//        }
//        task.resume()
//    }
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
