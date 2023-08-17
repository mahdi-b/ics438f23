---
title: "In Class Practice: Temperature Converter"
published: true
morea_id: inclass-temperature-converter-js
morea_type: experience
morea_summary: "Implement a temperature converter"
morea_sort_order: 6
morea_labels: "WOD"
---

# In Class Practice: Temperature Converter

Divide up into teams of two. You will each complete this WOD on your own computer and create your own JSFiddle to hold your work, but you must work "synchronously"--i.e. both of you must type each line of code or perform each action at the same time, and thus you will both complete this WOD at the same time. This means you must talk to each other continuously about what you are doing.

Try to not share your screen, because you will not be allowed to share your screen during the WOD, so this is good practice. It also encourages your partner to actually think and not just copy your code. However, if it gets too hard to explain something to your partner, you can briefly share your screen with them to explain what you mean.

Your task is to implement a function called TemperatureConverter.   It takes two parameters:

  * temperature:  This is an integer indicating the temperature value in either F or C, depending upon the following argument.

  * temperatureType: A parameter which should be either the string "C" or "F". TempType indicates whether the preceding argument is in fahrenheit or celsius units.


Given these two arguments, your function should compute and return the corresponding value in the other temperature unit.  The formulas are:

    celsius = (fahrenheit - 32) * 5/9;
    fahrenheit = (celsius * 9/5) + 32;

You can assume your function will always be passed an integer and a string. However, if temperature type is not "F" or "C", then the program should return the string "Illegal temperature type".

Here are some examples:

    console.log(temperatureConverter(212, "F"));     // 100
    console.log(temperatureConverter(0, "C"));       // 32
    console.log(temperatureConverter(0, "X"));       // Illegal temperature type

Ready? Let's begin:

  2. Login to JSFiddle.

  4. Create a Javascript function called "TemperatureConverter".  The function should process its arguments and return a result as specified above.  If you declare a variable, be sure to use `let` or `const`, not `var`.

  5. Informally test your program by running it and inspecting the output.  Check that 0 degrees celsius equals 32 degrees fahrenheit and 100 degrees celsius equals 212 degrees fahrenheit, and that an illegal argument type prints out the appropriate string.  Try using the "Tidy" command to re-indent your code to make sure your braces are aligned correctly.

  9. Press "Save" when you are finished to create a URL to your completed JSFiddle.

  10. Raise your hands to let me know that both of you have finished.

{% include bit.ly.html url="https://bit.ly/2LdHu8u" %}
