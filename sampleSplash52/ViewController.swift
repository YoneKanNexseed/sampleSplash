// sampleSplash
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    // 画面のロードが終わったら実行される
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 画面が表示されたら実行される
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(
            withDuration: 0.2, // 何秒かけて変化するか
            delay: 1.0,        // 開始までの時間
            options: .curveEaseOut,
            animations: {() in
                // 画像に対する値の設定
                // 値の設定はメソッドチェーンで指定できる
                // 画像を小さくしつつ、回転させる
                self.imageView.transform = CGAffineTransform(
                    scaleX: 0.8,
                    y: 0.8).rotated(by: 8)
                
        },
            completion: {(Bool) in
                // アニメーション完了後の挙動
        })
        
        // アニメーションのオプション
        // アニメーションの挙動スピード
        // curveEaseOut   動き終わりがゆっくり
        // curveEaseIn    動き始めがゆっくり
        // curveEaseInOut 始めと終わりがゆっくり
        // Linear         一定速度
        UIView.animate(
            withDuration: 0.4,
            delay: 1.3,
            options: .curveEaseOut,
            animations: {()in
                // 画像サイズを大きくする
                self.imageView.transform = CGAffineTransform(
                    scaleX: 2.0,
                    y: 2.0)
                // 画像の透過度を変更する
                self.imageView.alpha = 0
        },
            completion: {(Bool) in
                // アニメーション完了後メイン画面に遷移
                self.performSegue(withIdentifier: "toMain", sender: nil)
        })
        
        
    }


}

