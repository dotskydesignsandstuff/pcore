local t = Def.ActorFrame {};
local bgc = THEME:GetMetric ('EditableColors','BackgroundColor');
local txc = THEME:GetMetric ('EditableColors','FontColor');
local shp = THEME:GetPathG ('Shapes','common');

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(Center);
		Def.ActorFrame {
			--shp:slantedRect(600,300,50);
			LoadFont('XL Bold') .. {
				Text=shp:testText();
				InitCommand=cmd(diffuse,color(bgc));
			};
			--InitCommand=cmd(diffuse,color(bgc));
		};
};

return t