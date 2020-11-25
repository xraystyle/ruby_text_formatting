# This is a small extension to the string class which provides various color
# and formatting outputs for text in the terminal without adding any dependencies
# on additional gems. Credit for this goes to this StackOverflow answer: http://stackoverflow.com/a/11482430
# and this page for the references: http://misc.flogisoft.com/bash/tip_colors_and_formatting
# Colors and formatting are for 16 color terminals. Methods are chainable.

class String

  # Useful in IRB if you need a quick options list.
  def self.available_formatting
    puts "\nAvailable formatting options:"
    puts
    puts "bold\ndim\nunderlined\nblink\n\n"

    puts "Available text colors:"
    puts
    puts "red\ngreen\nyellow\nblue\nmagenta\ncyan\nlight_gray\ndark_gray\nlight_red\nlight_green\nlight_yellow\nlight_blue\nlight_magenta\nlight_cyan\nwhite\n\n"

    puts "Available highlight colors:"
    puts
    puts "red\ngreen\nyellow\nblue\nmagenta\ncyan\nlight gray\ndark gray\nlight red\nlight green\nlight yellow\nlight blue\nlight magenta\nlight cyan\nwhite\n\n"
  end


  # Add the color or formatting code escape characters to the string.
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  @color_codes = { bold: 1, dim: 2, underlined: 4, blink: 5,
                 hidden: 8, red: 31, green: 32, yellow: 33,
                 blue: 34, magenta: 35, cyan: 36, light_gray: 37,
                 dark_gray: 90, light_red: 91, light_green: 92,
                 light_yellow: 93, light_blue: 94, light_magenta: 95,
                 light_cyan: 96, white: 97, black: 30, highlight_red: 41,
                 highlight_green: 42, highlight_yellow: 43, highlight_blue: 44,
                 highlight_magenta: 45, highlight_cyan: 46,
                 highlight_light_gray: 47, highlight_dark_gray: 100,
                 highlight_light_red: 101, highlight_light_green: 102,
                 highlight_light_yellow: 103, highlight_light_blue: 104,
                 highlight_light_magenta: 105, highlight_light_cyan: 106,
                 highlight_white: 107 }

  # define the color methods to call #colorize with the
  # associated color code.
  @color_codes.each do |color, code|
    define_method(color) do
      colorize(code)
    end
  end

end
