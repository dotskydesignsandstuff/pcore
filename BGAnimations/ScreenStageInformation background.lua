local t = Def.ActorFrame {};
local bgc = THEME:GetMetric('EditableColors','BackgroundColor');
-- background color
t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(Center);
	Def.ActorFrame {
		Def.Quad {
			InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,Color.Black);
		};
	};
};

return t