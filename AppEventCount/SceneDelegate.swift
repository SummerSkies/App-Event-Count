//
//  SceneDelegate.swift
//  AppEventCount
//
//  Created by Juliana Nielson on 3/3/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var viewController: ViewController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        viewController = window?.rootViewController as? ViewController
        viewController?.willConnectCount += 1
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        viewController?.didBecomeActive += 1
        viewController?.updateView()
    }

    func sceneWillResignActive(_ scene: UIScene) {
        viewController?.willResignActive += 1
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        viewController?.willEnterForeground += 1
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        viewController?.didEnterBackground += 1
    }


}

