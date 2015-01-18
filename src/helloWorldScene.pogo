res = require './resources'

HelloWorldScene = cc.Scene.extend {
  
  onEnter () =
    this._super ()
    layer = @new HelloWorldLayer ()
    this.addChild (layer)

}

HelloWorldLayer = cc.Layer.extend {
  
  sprite = null
  
  ctor () =

    self._super()

    size = cc.winSize

    closeItem = @new cc.MenuItemImage (
      res "CloseNormal.png"
      res "CloseSelected.png"
      @() @{ cc.log "Menu was clicked!" }
      this
    )
    
    closeItem.attr {
      x = size.width - 20
      y = 20
      anchorX = 0.5
      anchorY = 0.5
    }

    menu = @new cc.Menu (closeItem)
    menu.x = 0
    menu.y = 0
    self.addChild (menu, 1)

    helloLabel = @new cc.LabelTTF ("Hello, Pogo", "Helvetica", 38)

    helloLabel.x = size.width / 2
    helloLabel.y = 0

    this.addChild(helloLabel, 5)

    this.sprite = @new cc.Sprite (res "HelloWorld.png")
    this.sprite.attr {
      x = size.width / 2
      y = size.height / 2
      scale = 0.5
      rotation = 180
    }
    this.addChild (this.sprite, 0)

    this.sprite.runAction (
      cc.sequence (
        cc.rotateTo (2, 0)
        cc.scaleTo (2, 1, 1)
      )
    )
    helloLabel.runAction (
      cc.spawn(
        cc.moveBy (2.5, cc.p (0, size.height - 40))
        cc.tintTo (2.5, 255, 125, 0)
      )
    )
    
    true
}

module.exports = HelloWorldScene
