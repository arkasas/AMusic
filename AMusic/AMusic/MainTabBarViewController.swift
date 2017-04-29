//
//  MainTabBarViewController.swift
//  MusicA
//
//  Created by Arek on 28.04.2017.
//  Copyright © 2017 Arek. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        setupBars();
        styleTabBar();
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupBars(){
        let playingVC = UIStoryboard(name: "Playing", bundle: nil).instantiateViewController(withIdentifier: "Playing");
        let playingBarItem = UITabBarItem(title: "Playing", image: UIImage(named: "ic_play_arrow"), selectedImage: UIImage(named: "ic_play_arrow"))
        playingVC.tabBarItem = playingBarItem
        
        
        let historyVC = UIStoryboard(name: "History", bundle: nil).instantiateViewController(withIdentifier: "History");
        let historyBarItem = UITabBarItem(title: "History", image: UIImage(named: "ic_schedule"), selectedImage: UIImage(named: "ic_schedule"))
        historyVC.tabBarItem = historyBarItem
        
        let favouritesVC = UIStoryboard(name: "Favorites", bundle: nil).instantiateViewController(withIdentifier: "Favorites");
        let favouritesBarItem = UITabBarItem(title: "Favorites", image: UIImage(named: "ic_favorite_border"), selectedImage: UIImage(named: "ic_favorite_border"))
        favouritesVC.tabBarItem = favouritesBarItem
        
        
        let playlistsVC = UIStoryboard(name: "Playlists", bundle: nil).instantiateViewController(withIdentifier: "Playlists");
        let playlistsBarItem = UITabBarItem(title: "Playlists", image: UIImage(named: "ic_queue_music"), selectedImage: UIImage(named: "ic_queue_music"))
        playlistsVC.tabBarItem = playlistsBarItem
        
        let  equalizerVC = UIStoryboard(name: "Equalizer", bundle: nil).instantiateViewController(withIdentifier: "Equalizer");
        let equalizerBarItem = UITabBarItem(title: "Equalizer", image: UIImage(named: "ic_equalizer"), selectedImage: UIImage(named: "ic_equalizer"))
        equalizerVC.tabBarItem = equalizerBarItem
        
        self.viewControllers = [playingVC, historyVC, favouritesVC, playlistsVC, equalizerVC];
       


    }
    func styleTabBar(){        
        let numberOfItems = CGFloat((self.tabBar.items!.count))
        let tabBarItemSize = CGSize(width: (self.tabBar.frame.width) / numberOfItems,
                                    height: (self.tabBar.frame.height))
        UITabBar.appearance().selectionIndicatorImage = UIImage.imageWithColor(UIColor.darkerBlue, size: tabBarItemSize);

    }
}


