//
//  ViewController.swift
//  AppEventCount
//
//  Created by Juliana Nielson on 3/3/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectionLabel: UILabel!
    @IBOutlet weak var sceneWillConnectToLabel: UILabel!
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActive = 0
    var willResignActive = 0
    var willEnterForeground = 0
    var didEnterBackground = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) times."
        configurationForConnectionLabel.text = "The App has configured for connection to a scene \(appDelegate.configurationCount) times."
        sceneWillConnectToLabel.text = "The App has prepared to connect to a scene \(willConnectCount) times."
        sceneDidBecomeActiveLabel.text = "A scene has become active \(didBecomeActive) times."
        sceneWillResignActiveLabel.text = "A scene has prepared to resign activity \(willResignActive) times."
        sceneWillEnterForegroundLabel.text = "A scene has prepared to enter foreground \(willEnterForeground) times."
        sceneDidEnterBackgroundLabel.text = "A scene entered background \(didEnterBackground) times."
    }
}

