a) The ____FileManager____ __________ class allows you to interact with the file system and its contents.


b) Apps on iOS are ________sandboxed_________ from each other.


c) True or False: 
FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0] will give the document directories for all Apps the user has on their device.

- False


d)The ______Sources_________ folder is a good place to put re-usable code when using Playgrounds.


e) What URL property allows you to view the URL’s path? .path
________.appending(path)________________ allows you to add a file name to a directory.


f) Name at least three Swift Data Types you have used up to this point in the bootcamp.
Int, Double, Float, String, Bool


g) How can you find the number of bytes a Data Type uses?
MemoryLayout.size(ofValue: )



h) Using Playgrounds, how can you tell that the Data.write operation succeeded?
- Playgrounds run successfully, and you see other readouts on the sidebar
- you can check the file where the Data wrote to and see if the file is there


i) You can mostly treat Data objects like ______array_________ of bytes.


j) The write and read methods of Data require a _____URL__________.


k) What JavaScript calls an object is the same concept as a heterogenous _____dictionary________ in Swift with _______string___________ for keys.


l) How do you resolve the error: Use of unresolved identifier ‘Bundle’?
- import Foundation


m) Give an example of Snake Case.
- favorite_toy


n) A struct that will be used in the reading and writing of data must conform to the _____Codable_____________ Protocol


o) Show the line of code used to access the user’s document directory for the running app.
FileManager.default.urls(for: .documentDirectory, in: userDomainMask).first

p) Files added to the project that will be used by the app can be found in the _____temporary Directory_____ _________ when the app is running.


