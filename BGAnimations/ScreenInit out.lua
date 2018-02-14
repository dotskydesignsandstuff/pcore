local t = Def.ActorFrame {};
local bgc = THEME:GetMetric("EditableColors","BackgroundColor");

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(Center);
	Def.ActorFrame {
		Def.Quad {
			InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color(bgc);diffusealpha,0);
			OnCommand=cmd(linear,1;diffusealpha,1);
		};
	};
};

return t