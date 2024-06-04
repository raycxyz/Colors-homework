import Foundation

class JSONList: ObservableObject {
    var apiURL = URL(filePath: "apilist", relativeTo: FileManager.documentDirectory).appendingPathExtension("json")
    var userDataURL = URL(filePath: "1-week7aboveandbeyond", relativeTo: FileManager.documentDirectory).appendingPathExtension("json")

    @Published var listOfAPI: APIs = APIs(count: 0, entries: []) {
        didSet {
            writeAPIList(fileName: "apilist", extensionName: "json")
        }
    }
    
    @Published var userDataAPI: UserData? {
        didSet {
            writeUserData(fileName: "1-week7aboveandbeyond", extensionName: "json")
        }
    }

    
    init() {
        loadAPIList(fileName: "apilist", extensionName: "json")
        loadUserData(fileName: "1-week7aboveandbeyond", extensionName: "json")
    }
    
    
    func loadAPIList(fileName: String, extensionName: String) {
        let decoder = JSONDecoder()
        let directoryURL = URL(string: fileName, relativeTo: FileManager.documentDirectory)?.appendingPathExtension(extensionName)
        let bundleURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)

     
        if let directoryURL = directoryURL, FileManager.default.fileExists(atPath: directoryURL.path) {
            do {
                let apiData = try Data(contentsOf: directoryURL)
                let apis = try decoder.decode(APIs.self, from: apiData)
                listOfAPI = apis
                
            } catch let error {
                print(error.localizedDescription)
            }
            
        } else {
            
            if let bundleURL = bundleURL, FileManager.default.fileExists(atPath: bundleURL.path) {
                do {
                    let apiData = try Data(contentsOf: bundleURL)
                    let apis = try decoder.decode(APIs.self, from: apiData)
                    listOfAPI = apis
                    
                } catch let error {
                    print(error.localizedDescription)
                }
                
            } else {
                print("API can not found in App Bundle or Document's Directory.")
                return
            }
        }
    }
    
    
    func loadUserData(fileName: String, extensionName: String) {
        let decoder = JSONDecoder()
        let directoryURL = URL(string: fileName, relativeTo: FileManager.documentDirectory)?.appendingPathExtension(extensionName)
        let bundleURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        
        if let directoryURL = directoryURL, FileManager.default.fileExists(atPath: directoryURL.path) {
            do {
                let apiData = try Data(contentsOf: directoryURL)
                let apis = try decoder.decode(UserData.self, from: apiData)
                userDataAPI = apis
                
            } catch let error {
                print(error.localizedDescription)
            }
            
        } else {
            
            if let bundleURL = bundleURL, FileManager.default.fileExists(atPath: bundleURL.path) {
                do {
                    let apiData = try Data(contentsOf: bundleURL)
                    let apis = try decoder.decode(UserData.self, from: apiData)
                    userDataAPI = apis
                    
                } catch let error {
                    print(error.localizedDescription)
                }
            } else {
                print("User Data can not be found in App Bundle or Document's Directory.")
            }
        }
    }
        
       
    
    
    func writeAPIList(fileName: String, extensionName: String) {
        let encoder = JSONEncoder()
        print(apiURL)
        
        do {
            let apiData = try encoder.encode(listOfAPI)
            try apiData.write(to: URL(filePath: fileName, relativeTo: FileManager.documentDirectory).appendingPathExtension(extensionName))
            
        } catch let error {
            print(error.localizedDescription)
        }

    }
    
    func writeUserData(fileName: String, extensionName: String) {
        let encoder = JSONEncoder()
        print(apiURL)
        
        do {
            let apiData = try encoder.encode(userDataAPI)
            try apiData.write(to: URL(filePath: fileName, relativeTo: FileManager.documentDirectory).appendingPathExtension(extensionName))
            
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
}



