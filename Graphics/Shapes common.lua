local function slantedRect (sizeX, sizeY, slant)
	-- Vert diagram:
	-- 1 --- 2
	-- |     |
	-- |     3
	-- |    /
	-- 5 - 4
	local verts = {
		{{0, 0, 0}, Color.White},
		{{sizeX, 0, 0}, Color.White},
		{{sizeX, (sizeY - slant), 0}, Color.White},
		{{(sizeX - slant), sizeY, 0}, Color.White},
		{{0, sizeY, 0}, Color.White},
	}
	return Def.ActorMultiVertex{
		Name='AMV_SlantedRect'
		InitCommand=
			function(self)
				self:visible(true):SetDrawState{Mode='DrawMode_QuadStrip'}
			end,
		OnCommand=
			function(self)
				self:SetDrawState{First=1, Num=-1}:SetVertices(verts)
			end
	}
end

local function testText ()
	return 'Test Text'
end