module Web.FrontController where

import IHP.RouterPrelude
import Web.Controller.Prelude
import Web.View.Layout (defaultLayout)
import IHP.LoginSupport.Middleware
import Web.Controller.SessionsController

-- Controller Imports
import Web.Controller.Comments
import Web.Controller.Posts
import Web.Controller.Static


instance FrontController WebApplication where
    controllers = 
        [ startPage WelcomeAction
        , parseRoute @SessionsController
        -- Generator Marker
        , parseRoute @CommentsController
        , parseRoute @PostsController
        ]

instance InitControllerContext WebApplication where
    initContext = do
        setLayout defaultLayout
        initAutoRefresh
        initAuthentication @User
