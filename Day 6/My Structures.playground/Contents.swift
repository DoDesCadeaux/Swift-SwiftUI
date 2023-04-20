import UIKit
import Foundation


//Introduction to structures
struct ChatView {
	var message: String = ""
	var msgWithPrefix: String {
		return "Dorian says: " + message
	}
	
	func sendChat() {
		print(msgWithPrefix)
	}
	
	func deleteChat() {
		print("Message deleted : \(msgWithPrefix)")
	}
}
