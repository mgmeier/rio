-- https://github.com/mgmeier/rio/blob/master/rio/src/RIO/Prelude/Logger.hs


import qualified RIO as RIO
imoprt System.IO (stdout)

main :: IO ()
main = do
    opts <- RIO.logOptionsHandle stdout True
    RIO.withLogFunc opts $ \logFunc    
