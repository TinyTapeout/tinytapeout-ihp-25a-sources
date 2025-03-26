<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

# Tiny Tapeout 7-Segment Spinner

![](animations/l.gif)
![](animations/e200.gif)
![](animations/b166.gif)
![](animations/d117.gif)
![](animations/ee66.gif)
![](animations/t33.gif)
![](animations/ll133.gif)


## How it works

Use the 8-pin DIP switch to create various spinning animations on the 7-segment display.

Possible modes:
- Large circle spinner
- Small circle spinner (top)
- Small circle spinner (bottom)
- Figure 8 spinner

Additional features:
- Change spinning direction
- Show clock pulse on decimal point

Wokwi project link:
https://wokwi.com/projects/425498675799185409

### General settings (for all modes)

- Press the reset switch to load the configuration into the spinner.
- Use the clock input to set the spinning speed. Every clock pulse will make the spinner advance by one segment.
- Use switch 7 to change the spin direction.
- Use switch 8 to show or hide the clock pulse on the decimal point.

### Specific settings for each mode

#### Large circle spinner

![](animations/l.gif)

This spinner uses the six outer segments for the spinner.

- Set switch 6 to 0.
- Use switches 1 through 5 to configure which segments should start lit up. Segment 6 will always be off.

#### Small circle spinner

![](animations/t.gif)

This spinner uses the top or bottom four segments for the spinner.

- Set switch 6 to 1.
- Set switch 4 to 0.
- Set switch 5 to 0 for the top four segments, set to 1 for the bottom four segments.
- Use switches 1 through 3 to configure which segments should start lit up. Segment 4 will always be off.

#### Figure 8 spinner

![](animations/e.gif)

This spinner uses all seven segments for the spinner.
- Set switch 6 to 1.
- Set switch 4 to 1.
- Switch 5 has no function.
- Use switches 1 through 3 to configure which segments should start lit up. Segment 4 will always be off.

## How to test

Use the hardware on the demo board and follow the instructions above to see the different modes.

## External hardware

8-pin DIP switch on input, 7-segment display on output, reset switch, clock in.
