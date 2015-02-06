# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Michael Byrd', email: 'michael@gmail.com', password: 'password') # id = 1
Student.create(user_id: 1, teacher_id: 1) # id = 1
Submission.create(student_id: 1, assignment_id: 1, submitted_at: DateTime.now, repository: "https://github.com/michaelbyrd/battleship", application: "#")

User.create(name: 'Mason Matthews', email: 'mason@gmail.com', password: 'password') # id = 2
Teacher.create(user_id: 2) # id = 1

Assignment.create( due_at: DateTime.new + 2.day, visable: true, name: "Battleship", description: "# Battleship

## Description

Write a program that plays the game of Battleship.  The user can act as Player 1, and the computer can act as Player 2.

## Objectives

### Learning Objectives

After completing this assignment, you should...

* Understand the basics of control flow, variables, and methods in Ruby.
* Understand the basics of Object Oriented Programming.
* Understand the basic use cases of Git for single-developer projects.
* Understand the purpose of test suites and how they can assist in development.
* Understand how frustrating it would have been to try to check and debug this assignment without written tests!

### Performance Objectives

After completing this assignment, you should be able to effectively...

* Accomplish all objectives from earlier in the week.
* Build a game-playing application that asks the user for input and provides output to the user.
* Create a computer player that can act like a human (albeit not necessarily an intelligent one).
* Write an program that can satisfy a test suite.

## Details

### Deliverables

* **A Repository.** Fork this repository to your own github account.
* **A README.** Wipe out this README and write your own.  It should tell readers how to play your version of the game.
* **Ruby Files.** You'll need a lot of these, and you'll be creating them from scratch.  Again, you should have one per class, plus at least one other to be executed from the command line to run the game.
* **A Playable Game.** When I clone your repository, I should be able to run your program and play through an entire game of Battleship.  I should be able to win and to lose.

When you are finished, create a pull request.
", teacher_id: 1)
Assignment.create( due_at: DateTime.new + 3.day, visable: true, name: "Currency", description: "# Currency

## Description

Create a ruby class for storing currencies using Test-Driven Development.

## Objectives

### Learning Objectives

After completing this assignment, you should...

* Understand the flow benefit of Test-Driven Development
* Understand how to override mathematical operators

### Performance Objectives

After completing this assignment, you should be able to effectively...

* Create a test suite while writing application code
* Raise exceptions/errors as appropriate

## Details

### Deliverables

* **A Repository.** Create a new github repository under your account.
* **A Currency Class.**
* **A Test Suite.** Not only must this test suite be conceptually complete, it must be written before the code that satisfies it.  This can be determined by git commits (so commit often!!!)

### Requirements

Currency:

* Should be created with an amount and a currency code
* Should equal another Currency object with the same amount and currency code
* Should be able to be added to another Currency object with the same currency code
* Should be able to be subtracted by another Currency object with the same currency code
* Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
* Should be able to be multiplied by a Fixnum or Float and return a Currency object
", teacher_id: 1)


Assignment.create( due_at: DateTime.new + 2.day, visable: true, name: "Battleship copy", description: "# Battleship

## Description

Write a program that plays the game of Battleship.  The user can act as Player 1, and the computer can act as Player 2.

## Objectives

### Learning Objectives

After completing this assignment, you should...

* Understand the basics of control flow, variables, and methods in Ruby.
* Understand the basics of Object Oriented Programming.
* Understand the basic use cases of Git for single-developer projects.
* Understand the purpose of test suites and how they can assist in development.
* Understand how frustrating it would have been to try to check and debug this assignment without written tests!

### Performance Objectives

After completing this assignment, you should be able to effectively...

* Accomplish all objectives from earlier in the week.
* Build a game-playing application that asks the user for input and provides output to the user.
* Create a computer player that can act like a human (albeit not necessarily an intelligent one).
* Write an program that can satisfy a test suite.

## Details

### Deliverables

* **A Repository.** Fork this repository to your own github account.
* **A README.** Wipe out this README and write your own.  It should tell readers how to play your version of the game.
* **Ruby Files.** You'll need a lot of these, and you'll be creating them from scratch.  Again, you should have one per class, plus at least one other to be executed from the command line to run the game.
* **A Playable Game.** When I clone your repository, I should be able to run your program and play through an entire game of Battleship.  I should be able to win and to lose.

When you are finished, create a pull request.
", teacher_id: 1)

Assignment.create( due_at: DateTime.new + 3.day, visable: true, name: "Currency copy", description: "# Currency

## Description

Create a ruby class for storing currencies using Test-Driven Development.

## Objectives

### Learning Objectives

After completing this assignment, you should...

* Understand the flow benefit of Test-Driven Development
* Understand how to override mathematical operators

### Performance Objectives

After completing this assignment, you should be able to effectively...

* Create a test suite while writing application code
* Raise exceptions/errors as appropriate

## Details

### Deliverables

* **A Repository.** Create a new github repository under your account.
* **A Currency Class.**
* **A Test Suite.** Not only must this test suite be conceptually complete, it must be written before the code that satisfies it.  This can be determined by git commits (so commit often!!!)

### Requirements

Currency:

* Should be created with an amount and a currency code
* Should equal another Currency object with the same amount and currency code
* Should be able to be added to another Currency object with the same currency code
* Should be able to be subtracted by another Currency object with the same currency code
* Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
* Should be able to be multiplied by a Fixnum or Float and return a Currency object
", teacher_id: 1)
