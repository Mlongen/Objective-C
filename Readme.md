# Objective-C

This repository contains assignments done by me during my Objective-C course (4 weeks).

## Lab 1

<!-- ![Complexity low](https://img.shields.io/badge/complexity-low-green.svg) -->

We're going to create an OS X command-line app that does some simple string manipulation. The app will take in two pieces of data from the user:
- a number, to indicate which operation to do
- a string, to operate on
Wrap the whole app in an infinite while loop, so users can do multiple operations. Be sure to print out the menu of options at the start of each loop of the app.

##### Operations
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

<!-- ![Complexity low](https://img.shields.io/badge/complexity-low-green.svg) -->

Create a new command-line application. Create a class called Box that is a subclass of NSOBject. We're making a blueprint to hold the properties and methods that will apply to multiple instances of boxes.
- Add three properties to the box: height, width and length (float).
- Create an instance method that intializes a Box by taking in three float as parameters.
- Create an instance methods that will calcualte the volume and return it as a float.
- Add a method that takes in a another box and returns how many times one box will fit inside the other.

## Lab 3 - Maths​ - A CommandLine Game App
<!-- ![Complexity low](https://img.shields.io/badge/complexity-low-green.svg) -->

Create a command line game called ​Maths​ that will generate a random addition question.

### Learning outcomes

- Can understand ​class​ vs ​instance​ method
- Can understand the difference between a method ​signature​, the method definition​ and calling a ​method
- Can decide when to override ​init​ versus creating a custom initialize
- Can override ​init
- Can understand why we set the "backing store" of properties inside ​init using ​_​ (underscore) rather than calling ​self
- Can strip white space and new characters from string using NSCharacterSet
- Can call a class convenience method on ​NSCharacterSet
- Can generate random integers between a given range using arc4random_uniform()
- Can convert ​NSString*​ to a primitive ​NSInteger
- Can understand how to modularize functionality into separate classes
- Can refactor code to move functionality into a class
- Can decide when to use a ​class​ vs an ​instance​ method



### Goal
- To prompt the user to input their answer
- To parse the user's inputted answer and convert it to a primitive NSInteger
- The app will log "Right!" for correct and "Wrong!" for incorrect answers
- The app will present the ​next​ question immediately after the app outputsthe evaluation of the user's input (for now there's no exit option)
- To add the ability to exit the game
- To add a scoring function to the game


## Lab 4 - ContactList - help users manage their contacts
<!-- ![Complexity medium](https://img.shields.io/badge/complexity-medium-yellow.svg) -->

<img src="http://marcelo.co.technology/img/lab4.gif?raw=true" width="320px">
#### Goal
Build a command line application to help users manage their contacts. The project will be written in an Object Oriented way. Each contact will be represented by an instance of the ​Contact​ object. The ​Contact​ objects will beorganized by a ​ContactList​ object. User input will be handled by an InputCollector​ object. The main application logic, your "controller", will be located on main.m.

#### Task breakdown

##### Task 1
###### Main menu and user input
When the app starts up it should initially display a menu with options. It then prompts them for input.

##### Task 2
###### Implement exit functionality (`quit` command)
Now that you're taking input, it's time to do something with it. The user inputs quit, then the app should break out of the ​REPL​, causing the program to terminate.

##### Task 3
###### Implement contact creation (`new` command)
If the user types in ​new​ into the prompt at the main menu, the command line app should further prompt the user for information about the contact they wish to create. Eg: take a full name and email (separately).

##### Task 4
###### Implement contact index (`list` command)
When on the main menu, the user can type in "list" to display a list of all contacts within the app, printed one on each line.

##### Bonus task 1
###### Contact details (`show` command)
When on the main menu, the user can type in ​"show"​ along with an id (index) of the contact to display their details. If a contact with that index/id is found,display their details, with each field being printed on an individual line. If the contact cannot be found, display a "not found" message.

##### Bonus task 2
###### Implement contact search (`find` command)
After typing in a ​find​ command, along with a search term, the app will search through the names of the contacts and print the contact details of any contacts which have the search term contained within their name or email. (ie. the search term is a substring of the contact’s email or name).

##### Bonus task 3
###### Prevent duplicate entries
If a user tries to input a contact with the exact same email address twice, the app should output an error saying that the contact already exists and cannot
be created. If you are asking for name first and then email, for a better user experience, it may make more sense to ask for their email first and then their name.

##### Bonus task 4
###### Multiple phone numbers
Implement the ability to add contact’s phone numbers. Contacts can have a limitless amount of phone numbers. Each phone number has a label and the number itself (eg: "Mobile" and "444-555-3123").

##### Bonus task 5
###### History
Every time the user enters a command, log it in an array property on your input class. If the user enters ​history​, print the last 3 commands the user has entered.

## Developed with

* [XCODE](https://developer.apple.com/xcode/)

## Author

[Marcelo Longen](http://www.marcelolongen.com) - Student at [CICCC](http://www.ciccc.ca)