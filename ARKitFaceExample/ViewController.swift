import UIKit
import ARKit
import SpriteKit
import openLiveAvatarSDK

class ViewController: UIViewController, ARSCNViewDelegate {
    var testVc: LiveAvatarController?

    override func viewDidLoad() {
        super.viewDidLoad()
        testVc = LiveAvatarController(apiKey: "8AGVCQ.4ZbMQw:-tzSxyQZzuY6OGs5JlHSOeqyHeWB7Agf0_e6YYVHbIw", channelName: "avatar-state");

//        // Set the view's delegate
//        sceneView.delegate = self
//
//        // Create a SpriteKit scene for the animated face and present it
//        faceScene = AnimatedFaceScene(size: view.bounds.size)
//        let skView = SKView(frame: view.bounds)
//        skView.presentScene(faceScene)
//        view.addSubview(skView)
    }

//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        // Create a session configuration
//        let configuration = ARFaceTrackingConfiguration()
//
//        // Run the view's session
//        sceneView.session.run(configuration)
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard let testVc = testVc else { return }
        testVc.startCapture()
        var sceneView = testVc.skView

        // Add it to parents subview
        self.view.addSubview(sceneView)
        // self.view.addSubview(testVc.skView)

        //add autolayout contstraints
        sceneView.translatesAutoresizingMaskIntoConstraints = false
        sceneView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        sceneView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        sceneView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        sceneView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }

//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//
//        // Pause the view's session
//        sceneView.session.pause()
//    }

//    // ARSCNViewDelegate method
//    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
//        guard let faceAnchor = anchor as? ARFaceAnchor else { return }
//
//        // Update the face components in the SpriteKit scene with the new blend shape coefficients
//        faceScene?.updateFaceComponents(withBlendShapes: faceAnchor.blendShapes)
//    }
}
