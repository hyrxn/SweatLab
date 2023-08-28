import UIKit
import AVFoundation
import AVKit

class VideoPlayerView: UIView {
    var player: AVPlayer?
    var playerLayer: AVPlayerLayer?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupVideoPlayer()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupVideoPlayer()
    }

    func setupVideoPlayer() {
        // Create a video URL
        guard let videoURL = URL(string: "https://www.example.com/video.mp4") else {
            return
        }

        // Create an AVPlayerItem with the video URL
        let playerItem = AVPlayerItem(url: videoURL)

        // Create an AVPlayer with the player item
        player = AVPlayer(playerItem: playerItem)

        // Create an AVPlayerLayer to display the video
        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.frame = bounds
        layer.addSublayer(playerLayer!)

        // Start playing the video
        player?.play()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        // Update the player layer's frame when the view's layout changes
        playerLayer?.frame = bounds
    }
}
