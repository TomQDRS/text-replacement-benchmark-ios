# text-replacement-benchmark-ios

This project was set up to demonstrate with minimal code an error that causes the text replacement suggestions to anchor at the wrong point.

https://developer.apple.com/forums/thread/720565

## Reproduction Steps

1. Tap the TextEditor field at the bottom of the screen
2. Make sure the keyboard is showing, and don't hide it
3. Enter a nonsensical word, just hit a few random keys (e.g.: "hjkl")
4. Make sure autocorrect doesn't correct it; The text should be underlined with a red dotted line
5. Drag on the ScrollView to close the keyboard
6. Tap the underlined word

The keyboard will now move up again, and the text replacement popup will appear with a big offset to where it should actually appear.

## Example image

![Simulator Screen Shot - iPhone 14 Pro - 2022-11-23 at 09 40 30](https://user-images.githubusercontent.com/12124446/203503900-23e96015-8044-4d1a-a846-37e8e7620280.png)
