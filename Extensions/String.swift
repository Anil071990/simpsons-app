import UIKit

extension String {
    func removeWhiteSpaces(query: String) -> String? {
        var searchText = ""
        searchText = query.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if searchText.isEmpty {
            return nil
        }
        
        return searchText
    }
}
