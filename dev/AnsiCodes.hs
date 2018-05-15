import System.Console.ANSI (Color (Black, Blue, Green, Magenta, Red, Yellow),
		ColorIntensity (Dull, Vivid), ConsoleLayer (Foreground),
		SGR (Reset, SetColor), setSGRCode)

fromString :: a -> a
fromString = id

-- rio/src/RIO/Prelude/Logger.hs
reset = fromString $ setSGRCode [Reset]
setBlack = fromString $ setSGRCode [SetColor Foreground Vivid Black]
setGreen = fromString $ setSGRCode [SetColor Foreground Dull Green]
setBlue = fromString $ setSGRCode [SetColor Foreground Dull Blue]
setYellow = fromString $ setSGRCode [SetColor Foreground Dull Yellow]
setRed = fromString $ setSGRCode [SetColor Foreground Dull Red]
setMagenta = fromString $ setSGRCode [SetColor Foreground Dull Magenta]


-- rio/src/RIO/Process.hs
setLightGreen = fromString $ setSGRCode [SetColor Foreground Vivid Green]
-- reset = fromString $ setSGRCode [Reset]

