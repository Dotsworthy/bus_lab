# CodeClan paired lab for week 2 day 2
based on the following brief:

## Multiple Classes Lab
Using TDD, your task is to model a Bus which can pick up and drop off passengers.

1. Create a Bus class.
2. The Bus should have a route number (e.g. 22) and a destination (e.g. "Ocean Terminal").
3. The Bus should have a drive method that returns a string (e.g. "Brum brum").
4. Create a Person class.
5. The Person class should have attributes of a name and age.
6. Give the Bus class a new property, 'passengers'. This should be an array, which starts off empty.
7. Add a method to the Bus class which returns how many passengers are on the bus.
8. Add a method to the Bus class which takes in a Person and adds it to the array of passengers. The method could look something like bus.pick_up(passenger1)
9. Add a method that drops off a passenger and removes them from the array. This could look like bus.drop_off(passenger2)
10. Add an 'empty' method to remove all of the passengers - this might be used when the bus reaches its destination, or if the bus breaks down. It should remove all of the passengers from the array.
