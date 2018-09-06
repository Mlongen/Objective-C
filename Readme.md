# Objective-C

This repository contains assignments done by me during my Objective-C course (4 weeks).

## Lab 1

We're going to create an OS X command-line app that does some simple string manipulation. The app will take in two pieces of data from the user:
- a number, to indicate which operation to do
- a string, to operate on
Wrap the whole app in an infinite while loop, so users can do multiple operations. Be sure to print out the menu of options at the start of each loop of the app.

#####Operations
1. Uppercase
```
Make string uppercase.
```
2. Lowercase
```
Make string lowercase.
```
3. Numberize
```
Convert string to integer.
```
4. Canadianize
```
Take the user's input and append ", eh?" to it, Print the resulting string.
```
5. Respond
```
If the user input ends with a question mark, answer "I don't know". If the input ends with an exclamation point, respond with "Whoa, calm down!".
```
6. De-space-it
```
Replace all spaces with "-". Print the resulting string.
```

## Lab 2

Create a new command-line application. Create a class called Box that is a subclass of NSOBject. We're making a blueprint to hold the properties and methods that will apply to multiple instances of boxes.
- Add three properties to the box: height, width and length (float).
- Create an instance method that intializes a Box by taking in three float as parameters.
- Create an instance methods that will calcualte the volume and return it as a float.
- Add a method that takes in a another box and returns how many times one box will fit inside the other.

##Lab 3 - Maths​ - A CommandLine Game App

Create a command line game called ​Maths​ that will generate a random addition question.

### Learning outcomes

- Can understand ​class​ vs ​instance​ method
- Can understand the difference between a method ​signature​, the method definition​ and calling a ​method
- Can decide when to override ​init​ versus creating a custom initialize
- Can override ​init
- Can understand why we set the "backing store" of properties inside ​init using ​_​ (underscore) rather than calling ​self
- Can strip white space and new characters from string using NSCharacterSet
- Can call a class convenience method on ​NSCharacterSet
- Can generate random integers between a given range usingarc4random_uniform()
- Can convert ​NSString*​ to a primitive ​NSInteger
- Can understand how to modularize functionality into separate classes
- Can refactor code to move functionality into a class
- Can decide when to use a ​class​ vs an ​instance​ method



###Goal
- To prompt the user to input their answer
- To parse the user's inputted answer and convert it to a primitive NSInteger
- The app will log "Right!" for correct and "Wrong!" for incorrect answers
- The app will present the ​next​ question immediately after the app outputsthe evaluation of the user's input (for now there's no exit option)
- To add the ability to exit the game
- To add a scoring function to the game

## Developed with

* [XCODE](https://developer.apple.com/xcode/)

## Author

[Marcelo Longen](http://www.marcelolongen.com) - Student at [CICCC](http://www.ciccc.ca)