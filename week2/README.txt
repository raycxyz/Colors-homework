a) Describe the two size classes in iOS.

- compact and regular
- lets you know if you currently have regular size or compact size for the horizontal and vertical length of the device


b) What is Continuous Learning, and why is it important in mobile development?

Always try to keep learning and reuse the previous skills you have acquired, this will allow you to remember the old skills better and at the same time, acquiring new skills to stay current. 



c) How can you find out what modifiers a View has?

- underneath a view, we apply modifiers to a view
- or sometimes we make a SwiftUI view that just contains ViewModifiers, inside it will contain all the modifiers


d) What is a breakpoint?

- make Xcode stop at that line of code that you sat breakpoint, so you can examine what is happening


e) How can you access environment values in your App?

- @Environment(\.nameProperty) var name
- the nameProperty can be anything like colorScheme or verticalSizeClass



f) How can you determine, in code, if the App is in Dark or Light Mode?

- look for @Environment(.\colorScheme) var lightOrDark
- at the contentView just add this: Text(lightOrDark == .light ? "Light" : "Dark"


g) Why are magic numbers an issue, and how should you avoid them?

- if another member of your team looks at your code, they see random numbers, numbers with no meaning
- to solve this, give the same numbers that appear frequently a name constant using enum
- whenever you apply the number, use enum with a property name instead


h) How can you view your App in Light and Dark Modes simultaneously?

- have 2 #previews, one with only contentView(), the other contentView() with modifier .preferredColorScheme(.dark)


i) Below is an image of the Canvas from Xcode. The Canvas is in selectable mode. Can you explain why the red background does not cover the entire button area?

- the order of modifier matters. Every time you apply a view modifier, it returns a copy of the view with the modifier. And you need to apply padding modifier first in order to get a full button.



j) Modifier padding(10) adds padding to the view's top, bottom, left, and right sides. How could a padding of 10 be added to only the left and right sides of the view? The answer for this question should be a short section of code.

.padding(.horizontal, 10)


k) Provide two reasons why you would want to extract views.

- reusable code
- cleaner to read


l) How can you determine, in code, if the device is in Portrait or Landscape mode?

Use @Environment(\.verticalSizeClass) and @Environment(\.horizontalSizeClass) to determine the size

m) What is a literal value?

- any negative values will become positive value


o) What are the safe areas?

- the content that is below the menu bar, but above the home bar where it the content won't be blocked


p) This line of code was in the lesson on animation. Can you state in English what the line means? 
.frame(width: wideShapes ? 200 : 100)

- if wideShape is true, width will be 200, if false, width will be 100


q) Describe the two transitions you were introduced to in this week’s lesson.

- scale
- opacity

r) In Bullseye, the Game struct is what type of object?

- Game type

s) What are SFSymbols?

- library of icons that Apple created for their OS which can be accessed using systemName(: nameOfSymbol)


t) What is the difference between “step into” and “step over " in the debugger?”

- step into: move into next line, step into any method (basically go into any method step by step)
- step over: move onto the next line of code, if there is method, it will move over without calling it


u) Name some items you would place in the Asset Catalog (Assets.)

- ButtonColors
- TextColors
- BackgroundColors



v) How do you change the Display Name of your app?

- Navigator -> Project -> click on the App -> General Tab -> Identity -> Display Name













