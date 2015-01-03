Ruby Text Formatting
------------------------

This is a small extension to the string class which provides various color and formatting outputs for text in the terminal without adding any dependencies on additional gems.

Make your text blink, add highlights, underline it, etc. Get creative with your output!

Credit for this goes to this StackOverflow answer: http://stackoverflow.com/a/11482430 and this page for the references: http://misc.flogisoft.com/bash/tip_colors_and_formatting

This should work with any 16 color capable terminal, and the methods are chainable. 

Usage:

```
require 'text_formatting'

string = "Hello world!"

puts string.highlight_blue.white.blink
```

![screenshot.gif](http://xraystyle.com/images/text_formatting.gif)

Feel free to include this in any of your projects. 