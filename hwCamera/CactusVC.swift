//
//  CactusVC.swift
//  hwCamera
//
//  Created by azik on 27.07.22.
//

import UIKit
import AVKit
import AVFoundation
class CactusVC: UIViewController {
       private let videoUrlStr = "https://firebasestorage.googleapis.com/v0/b/paycheap-39445.appspot.com/o/video1.mp4?alt=media&token=34a23140-eb3d-440d-bb72-09013b1835fb"
       
       var player: AVPlayer? = nil
       
       private lazy var playerViewController: AVPlayerViewController = {
           return AVPlayerViewController()
       }()
       
       // MARK: - UI Components
       
       private lazy var videoPreviewView: UIView = {
           let view = UIView()
           
           self.view.addSubview(view)
           
           view.backgroundColor = .black
           
           return view
       }()
       
       private lazy var shareBtn: UIButton = {
           let btn = UIButton()
           self.view.addSubview(btn)
           btn.setImage(UIImage(named: "share"), for: .normal)
           btn.addTarget(self, action: #selector(share), for: .touchUpInside)
           return btn
       }()
    @objc func share(sender:UIView){
     UIGraphicsBeginImageContext(view.frame.size)
                    view.layer.render(in: UIGraphicsGetCurrentContext()!)
                    let image = UIGraphicsGetImageFromCurrentImageContext()
                    UIGraphicsEndImageContext()

                    let textToShare = "Check out my app"

                    if let myWebsite = URL(string: "http://itunes.apple.com/app/idXXXXXXXXX") {
                        let objectsToShare = [textToShare, myWebsite, image ?? #imageLiteral(resourceName: "app-logo")] as [Any]
                        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)

                        activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList]
                       
                        activityVC.popoverPresentationController?.sourceView = sender
                        self.present(activityVC, animated: true, completion: nil)
                    }

 }
       override func viewDidLoad() {
           super.viewDidLoad()
           self.view.backgroundColor = .white
           self.videoPreviewView.snp.makeConstraints { make in
               make.top.equalToSuperview().offset(100)
               make.left.equalToSuperview().offset(50)
               make.right.equalToSuperview().offset(-50)
               make.width.equalTo(self.videoPreviewView.snp.height).multipliedBy(2)
           }
           let text = UILabel()
           self.view.addSubview(text)
           text.text = "Water your cactus"
           text.font = UIFont.systemFont(ofSize: 30, weight: .bold)
           text.snp.makeConstraints { make in
               make.left.equalToSuperview().offset(20)
               make.top.equalTo(videoPreviewView.snp.bottom).offset(20)
           }
           shareBtn.snp.makeConstraints { make in
               make.bottom.equalToSuperview().offset(-32)
               make.left.equalToSuperview().offset(24)
               make.right.equalToSuperview().offset(-24)
               make.height.equalTo(70)
           }
           
           self.videoPreviewView.addSubview(self.playerViewController.view)
           self.playerViewController.view.snp.makeConstraints { make in
               make.top.bottom.left.right.equalToSuperview()
           }
           let videoURL = URL(string: videoUrlStr)!
           self.player = AVPlayer(url: videoURL)
           
           self.playerViewController.player = self.player
        
       }
}
