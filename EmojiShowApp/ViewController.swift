// EmojiShowApp, 2021 by Alexander Puzikov
// Telegram: @alexoza, Github: @alexoza

import UIKit

class ViewController: UIViewController {
    
    var touches = 0 {
        didSet {
            touchesCount.text = "Touches: \(touches)"
        }
    }
    
    let emojiCollection = ["🍺", "🍤", "🍿", "🍭", "🍣", "🍟"]
    
    func showEmoji(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else  {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    @IBOutlet weak var touchesCount: UILabel!
    @IBOutlet var buttonCollection: [UIButton]!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            showEmoji(emoji: emojiCollection[buttonIndex], button: sender)
            
        }
    }
}

