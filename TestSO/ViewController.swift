//
//  ViewController.swift
//  TestSO
//
//  Created by Morgan Wilde on 08/05/2015.
//  Copyright (c) 2015 Morgan Wilde. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sceneView: SCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene()
        let rootNode = scene.rootNode
        
        // Box
        let boxGeometry = SCNBox(width: 2, height: 2, length: 2, chamferRadius: 0)
        let boxMaterial = SCNMaterial()
        boxMaterial.diffuse.contents = UIColor.redColor()
        boxMaterial.doubleSided = true
        boxGeometry.firstMaterial = boxMaterial
        let boxNode = SCNNode(geometry: boxGeometry)
        boxNode.position = SCNVector3(
            x: 0,
            y: 0,
            z: -1)
        rootNode.addChildNode(boxNode)
        
        // Camera
        let camera = SCNCamera()
        camera.zNear = 0
        let cameraNode = SCNNode()
        cameraNode.position = SCNVector3(
            x: 0,
            y: 0,
            z: 0)
        cameraNode.camera = camera
        rootNode.addChildNode(cameraNode)
        
        sceneView.scene = scene
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
    }

}

