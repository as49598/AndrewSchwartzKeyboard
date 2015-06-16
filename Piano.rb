require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 1200,400
    self.caption = "Piano"
    @background_image = Gosu::Image.new("Virtual_Piano.jpg", :tileable => false)

    #Sound Files
    @c = Gosu::Sample.new("c.aif")
    @csharp = Gosu::Sample.new("csharp.aif")
    @d = Gosu::Sample.new("d.aif")
    @dsharp = Gosu::Sample.new("dsharp.aif")
    @e = Gosu::Sample.new("e.aif")
    @f = Gosu::Sample.new("f.aif")
    @fsharp = Gosu::Sample.new("fsharp.aif")
    @g = Gosu::Sample.new("g.aif")
    @gsharp = Gosu::Sample.new("gsharp.aif")
    @a = Gosu::Sample.new("a.aif")
    @asharp = Gosu::Sample.new("asharp.aif")
    @b = Gosu::Sample.new("b.aif")


  end

  def draw
    @background_image.draw(0, 0, 0 )
  end
  def update
  end

  def button_down(id)
    if id == Gosu::KbA
      @c.play
    end
    if id == Gosu::KbW
      @csharp.play

    end
    if id == Gosu::KbS
      @d.play
    end
    if id == Gosu::KbE
      @dsharp.play
    end
    if id == Gosu::KbD
      @e.play
    end
    if id == Gosu::KbF
      @f.play
    end
    if id == Gosu::KbT
      @fsharp.play
    end
    if id == Gosu::KbG
      @g.play
    end
    if id == Gosu::KbY
      @gsharp.play
    end
    if id == Gosu::KbH
      @a.play
    end
    if id == Gosu::KbU
      @asharp.play
    end
    if id == Gosu::KbJ
      @b.play
    end
  end

  def needs_cursor?
    true
  end

end
window = GameWindow.new
window.show


