class DarkModeButton
    attr_reader :foreground_color, :color_code

    def initialize(foreground_color, color_code)
        @foreground_color = foreground_color
        @color_code = color_code
     end
end

def is_dark_mode(button_text, original_foreground_color, is_dark_mode)
    if is_dark_mode
        # darken foreground color for dark mode
        new DarkModeButton(original_foreground_color - 10, '#111111')
    else
        # lighten foreground color for non-dark mode
        new DarkModeButton(original_foreground_color + 10, '#E0E0E0')
    end
end

def draw_button(label_text, x, y, foreground_color, is_dark_mode)
    button_text = label_text
    original_foreground_color = foreground_color

    if is_dark_mode
        # darken foreground color for dark mode
        paint(button_text, x, y, foreground_color - 10, '#111111')
    else
        # lighten foreground color for non-dark mode
        paint(button_text, x, y, foreground_color + 10, '#E0E0E0')
    end
end