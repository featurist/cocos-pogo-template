cc.game.onStart () =
  cc.view.adjustViewPort (true)
  cc.view.setDesignResolutionSize(800, 450, cc.ResolutionPolicy.SHOW_ALL)
  cc.view.resizeWithBrowserSize(true)
  
  HelloWorldScene = require './helloWorldScene'
  resources = require './resources'

  cc.LoaderScene.preload (resources.all)
    cc.director.runScene (@new HelloWorldScene())
  (this)

cc.game.run ()
