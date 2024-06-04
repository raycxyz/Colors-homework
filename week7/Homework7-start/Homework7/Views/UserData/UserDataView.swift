
import SwiftUI
import MapKit

struct UserDataView: View {
    var userData: JSONList = JSONList()
    @State private var currentTime = ""
    @State private var dobDate = ""
    @State private var registeredDate = ""
    
    var body: some View {
        
        if let user = userData.userDataAPI?.results.first {
            List {
                Section() {
                    VStack {
                        HStack {
                            Spacer()
                            AsyncImage(url: URL(string: user.picture.large)) { image in
                                image
                                    .image?.resizable()
                                    .frame(width: 150, height: 150)
                                    .clipShape(.circle)
                            }
                            Spacer()
                        }
                        Text("\(user.name.title) \(user.name.first) \(user.name.last)")
                        Text(user.gender.capitalized)
                    }
                }
                
                Section {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text(user.id.name)
                    }
                    HStack {
                        Text("Value")
                        Spacer()
                        Text(user.id.value ?? "null")
                    }
                } header: {
                    Text("ID")
                }
                
                Section {
                    HStack {
                        Text("Email")
                        Spacer()
                        Text(user.email)
                    }
                    HStack {
                        Text("Phone")
                        Spacer()
                        Text(user.phone)
                    }
                    HStack {
                        Text("Cell")
                        Spacer()
                        Text(user.cell)
                    }
                } header: {
                    Text("Contact Information")
                }
                
                Section {
                    MapView(latitude: Double(77.4968), longitude: Double(-141.5806))
                    
                    HStack {
                        Text("Address")
                        Spacer()
                        Text("\(user.location.street.number) \(user.location.street.name), \(user.location.city), \(user.location.state), \(user.location.postcode), \(user.location.country)")
                        //                            .font(.largeTitle)
                            .frame(maxWidth: 200, alignment: .trailing)
                    }
                    HStack {
                        Text("Timezone")
                        Spacer()
                        Text(currentTime)
                    }
                    .onAppear {
                        currentTimeZone()
                    }
                } header: {
                    Text("Location")
                }
                
                Section {
                    HStack {
                        Text("UUID")
                        Spacer()
                        Text(user.login.uuid)
                            .frame(maxWidth: 200, alignment: .trailing)
                    }
                    HStack {
                        Text("Username")
                        Spacer()
                        Text(user.login.username)
                    }
                    HStack {
                        Text("Password")
                        Spacer()
                        Text(user.login.password)
                    }
                    HStack {
                        Text("Salt")
                        Spacer()
                        Text(user.login.salt)
                    }
                    HStack {
                        Text("MD5")
                        Spacer()
                        Text(user.login.md5)
                            .frame(maxWidth: 200, alignment: .trailing)
                    }
                    HStack {
                        Text("SHA1")
                        Spacer()
                        Text(user.login.sha1)
                            .frame(maxWidth: 200, alignment: .trailing)
                    }
                    HStack {
                        Text("SHA256")
                        Spacer()
                        Text(user.login.sha256)
                            .frame(maxWidth: 200, alignment: .trailing)
                    }
                } header: {
                    Text("Login Information")
                }
                
                Section {
                    HStack {
                        Text("NAT")
                        Spacer()
                        Text(user.nat)
                    }
                }
                
                Section {
                    HStack {
                        Text("Birthday")
                        Spacer()
                        Text(ISODateFormatter(inputDate: user.dob.date))
                    }
                    HStack {
                        Text("Age")
                        Spacer()
                        Text("\(user.dob.age)")
                    }
                } header: {
                    Text("Date of Birth")
                }
                
                Section {
                    HStack {
                        Text("Date")
                        Spacer()
                        Text(ISODateFormatter(inputDate: user.registered.date))
                    }
                    HStack {
                        Text("Age")
                        Spacer()
                        Text("\(user.registered.age)")
                    }
                } header: {
                    Text("Registered")
                }
                

                if let info = userData.userDataAPI?.info {
                    Section {
                        HStack {
                            Text("Seed")
                            Spacer()
                            Text(info.seed)
                        }
                        HStack {
                            Text("Results")
                            Spacer()
                            Text("\(info.results)")
                        }
                        HStack {
                            Text("Page")
                            Spacer()
                            Text("\(info.page)")
                        }
                        HStack {
                            Text("Version")
                            Spacer()
                            Text(info.version)
                        }
                    } header: {
                        Text("Info")
                    }
                }
            }
        }
    }
    
    private func currentTimeZone() {
        if let targetTimeZone = TimeZone(secondsFromGMT: -11 * 3600) {
            let now = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.timeZone = targetTimeZone
            dateFormatter.timeStyle = .short
            currentTime = dateFormatter.string(from: now)
        } else {
            currentTime = "Invalid Timezone"
        }
    }
    
    
    private func ISODateFormatter(inputDate: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        let isoDateFormatter = ISO8601DateFormatter()
        isoDateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        isoDateFormatter.formatOptions = .withFullDate
        
        guard let realDate = isoDateFormatter.date(from: inputDate) else {
            return "Date not found"
        }
        
        return dateFormatter.string(from: realDate)
    }
    
    
}




//#Preview {
//    UserDataView(userData: JSONList())
//}


//struct UserDataView_Previews: PreviewProvider {
//    static var previews: some View {
//        let userData = JSONList()
//        UserDataView(userData: userData)
//    }
//}


