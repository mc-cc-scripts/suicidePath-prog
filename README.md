# suicidePath-prog
A very simple program for one-block wide bridges over stupidly large gaps.

# How to use
The turtle refuels from slot 1 on start. It wont refuel again and it will use everything it can at once.
Every other slot should be used as building block. There are now checks. If the block is not suitable, too bad.

If no parameter is given, the turtle will move forward untill it has no more items to place.

You can specify the amount of steps the turtle should move with your first parameter:
```lua
suicidePath.lua <steps>
```