# Object Relations Code Challenge

### Concert Planner
You've been tasked with building an application for bands and venues to keep track of their concerts.  A given band will play at many venues, and many different bands will play at a given venue.  A concert consists of a single band playing at a single venue.  **Before you go further, sketch out the domain and the relationships this implies.**

## Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

**Remember!** This is a code challenge without tests. You cannot run `rspec` you cannot run `learn`. You'll need to create your own sample instances for testing purposes. Make sure your associations and methods work in the console before submitting.

## Deliverables

### Tier One (Do these first!)
#### `Band`
- `Band` should initialize with a name and hometown
- `Band` should respond to `Band#name` and `Band#hometown`, returning those respective values.
- `Band` should be able to change its name with an accessor
- `Band` should have a method `Band.all` that returns all the instances of `Band`
- `Band` should have a method `Band.all_introductions` that puts out a list of messages in the format of `"Hello, we are {insert band name here} and we're from {insert hometown here}"` for every band.

#### `Venue`
- `Venue` should initialize with a title and city
- `Venue` should have a method `Venue.all` method which returns all the instances of `Venue`


________________
### Tier Two (Do these last!)
#### `Concert`
- `Concert` should initialize with a date (as a string), band, and venue
- `Concert` should have methods `Concert#band` and `Concert#venue` that return the `Band` instance and `Venue` instance associated to the concert
- `Concert` should have a `Concert.all` method which returns all the instances of `Concert`
- `Concert` should have a method `Concert#hometown_show?` that returns true if the concert is in the band's hometown and false if it is not

#### `Band`
- `Band` should have a method `Band#play_in_venue` that takes a venue and date (as a string) as arguments and associates the band to that venue.  **Hint:  What part of the code base is responsible for associating a band and a venue?**
- `Band` should have a method `Band#concerts` should return an array of all the concerts that the band has played in

#### `Venue`
- `Venue` should have a method `Venue#concerts` that lists all the concerts that have ever been performed in that venue
- `Venue` should have a method `Venue#bands` that lists all the bands that have ever played in that venue

#### `Vera Comments`
### BAND CLASS 
1. `Band.all_introductions`
-  doesnt iterate over the array and print intro for each band instance 

## Didnt complete: 
-`Concert` should have methods `Concert#band` and `Concert#venue` that return the `Band` instance and `Venue` instance associated to the concert

#Concert class 
1. `Concert` should have a method `Concert#hometown_show?` that returns true if the concert is in the band's hometown and false if it is not
- Concert is at a venue, that has a city. if that city is the same as the venue's band hometown return true 
- what is self here? 

2. `venue` method: what is self referring to? 

#Venue class 
1. `bands` method: what is self, what is performance argument refer to in each iteration? 

2. `venue` method: what is self referring to? 

