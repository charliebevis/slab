{-# OPTIONS_GHC -fno-warn-orphans #-}

module Route where

import Import.NoFoundation
import AppType

mkYesodData "App" [parseRoutes|
/static StaticR Static appStatic
/auth   AuthR   Auth   getAuth

/favicon.ico FaviconR GET
/robots.txt RobotsR GET

/ HomeR GET
/posts         PostsR GET POST
/posts/#PostId PostR  GET PUT DELETE
/posts/#PostId/comments            CommentsR GET POST
/posts/#PostId/comments/#CommentId CommentR  GET DELETE
|]
