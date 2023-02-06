//
//  SceneDelegate.swift
//  NaviationController
//
//  Created by JINSEOK on 2023/02/07.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        // 탭바 컨트롤러를 생성합니다.
        let tabBarVC = UITabBarController()
        
        // 시계 앱을 켜보면 worldTimeVC와 alarmVC가 각각 네비게이션 바를 갖고 있으므로
        // 각각의 컨트롤러를 네비게이션 컨트롤러로 설정을 해줬습니다.
        // 밑에 추가하기 작업을 위해 미리 다른 컨트롤러들의 인스턴스 생성함.
        let worldTimeVC = UINavigationController(rootViewController: WorldTimeViewController())
        let alarmVC = UINavigationController(rootViewController: AlarmViewController())
        let stopWatchVC = StopWatchViewController()
        let timerVC = TimerViewController()
        
        // 뷰 컨트롤러들을 탭바로 사용하기 위해 배열에 추가를 해줍시다.
        // 배열의 Index 0 부터 순서대로 뷰 컨트롤러를 위치 합니다.
        tabBarVC.setViewControllers([worldTimeVC, alarmVC, stopWatchVC, timerVC], animated: false)
        // 기타 설정들
        tabBarVC.modalPresentationStyle = .fullScreen
        tabBarVC.tabBar.backgroundColor = .black
        tabBarVC.tabBar.tintColor = .orange
        tabBarVC.tabBar.unselectedItemTintColor = .gray
        
        // 탭바 이름을 설정해 줍니다.
        worldTimeVC.title = "세계 시계"
        alarmVC.title = "알람"
        stopWatchVC.title = "스톱워치"
        timerVC.title = "타이머"
        
        // 탭바 이미지 설정 (UIImage를 통해)
        guard let items = tabBarVC.tabBar.items else { return }
        items[0].image = UIImage(systemName: "globe")
        items[1].image = UIImage(systemName: "alarm.fill")
        items[2].image = UIImage(systemName: "stopwatch.fill")
        items[3].image = UIImage(systemName: "timer")
        
        // 기본루트뷰를 탭바 컨트롤러로 설정
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

