//Exercise 1: Word Counter

// Instructions:
// Create a function that takes a string and returns a dictionary with each unique word as the key and the number of occurrences as the value.
//
// Expected Output:
// wordCounter("This is a test. This is only a test.") -> ["This": 2, "is": 2, "a": 2, "test.": 1, "only": 1, "test.": 1]

func wordCounter(_ text: String) -> [String: Int] {
	let words = text.split(separator: " ")
	var wordCount: [String: Int] = [:]

	for word in words {
		let stringWord = String(word)
		let trimmedWord = stringWord.trimmingCharacters(in: .punctuationCharacters)
		if trimmedWord.isEmpty { continue }

		let wordKey = trimmedWord.lowercased()
		if let count = wordCount[wordKey] {
			wordCount[wordKey] = count + 1
		} else {
			wordCount[wordKey] = 1
		}
	}

	return wordCount
}

// Test the function
let result = wordCounter("This is a test. This is only a test.")
print(result) // ["this": 2, "is": 2, "a": 2, "test": 2, "only": 1]

