module Main where

import Network.HTTP.Client
import Network.HTTP.Client.TLS

main = do
    manager <- newManager tlsManagerSettings
    request <- parseRequest "https://localhost"
    response <- httpLbs request manager
    putStrLn $ "The status code was: " ++ (show $ responseStatus response)
    print $ responseBody response
