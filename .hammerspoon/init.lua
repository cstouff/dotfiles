-- Local Definitions
local topScreen = "U28E590"
local bottomScreen = "LG HDR WFHD"

-- Hyper Configuration
local hyper = require('hyper')
hyper.install('F20') 

local topScreen = "U28E590"
local bottomScreen = "LG HDR WFHD"

hs.window.animationDuration = 0
units = {
  left50	= { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
  right50	= { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
  right30       = { x = 0.70, y = 0.00, w = 0.30, h = 1.00 },
  right70       = { x = 0.30, y = 0.00, w = 0.70, h = 1.00 },
  left70        = { x = 0.00, y = 0.00, w = 0.70, h = 1.00 },
  left30        = { x = 0.00, y = 0.00, w = 0.30, h = 1.00 },
  top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
  bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },
  upright30     = { x = 0.70, y = 0.00, w = 0.30, h = 0.50 },
  botright30    = { x = 0.70, y = 0.50, w = 0.30, h = 0.50 },
  upleft70      = { x = 0.00, y = 0.00, w = 0.70, h = 0.50 },
  botleft70     = { x = 0.00, y = 0.50, w = 0.70, h = 0.50 },
  maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 },
  center	= { x = 0.25, y = 0.00, w = 0.50, h = 1.00 }
}

-- Hyper Key Binds
hyper.bindKey('r', hs.reload)

hyper.bindKey('1', function() hs.window.focusedWindow():moveToScreen(topScreen) end)
hyper.bindKey('2', function() hs.window.focusedWindow():moveToScreen(bottomScreen) end)

mash = { 'shift', 'ctrl', 'cmd' }
hs.hotkey.bind(mash, 'o', function() hs.window.focusedWindow():move(units.left50,    nil, true) end)
hs.hotkey.bind(mash, 'p', function() hs.window.focusedWindow():move(units.right50,    nil, true) end)
hs.hotkey.bind(mash, 'm', function() hs.window.focusedWindow():move(units.maximum,    nil, true) end)
hs.hotkey.bind(mash, 'c', function() hs.window.focusedWindow():move(units.center, nil, true) end)

mash2 = { 'shift', 'ctrl' }
hs.hotkey.bind(mash2, 'q', function() hs.window.focusedWindow():move(units.center, topScreen, true) end)