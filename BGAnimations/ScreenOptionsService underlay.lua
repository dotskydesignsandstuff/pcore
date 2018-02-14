local t = Def.ActorFrame {};
local ovc = THEME:GetMetric ('EditableColors','OverlayColor');
local ovf = THEME:GetMetric ('EditableColors','OverlayFont');
local gc = Var('GameCommand');

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(CenterY);	
	-- background
	Def.Quad {
		InitCommand=cmd(horizalign,left;zoomx,640;x,-640;diffuse,color(ovc);zoomy,SCREEN_HEIGHT;decelerate,0.5;addx,640);
	};
	
	-- the options wheel
	--[[
	LoadFont("Common Normal") .. {
		Text=THEME:GetString('ScreenOptionsService',gc:GetText());
		InitCommand=cmd(diffuse,color(ovf);y,40);
		GainFocusCommand=cmd(decelerate,0.1;x,8);
		LoseFocusCommand=cmd(decelerate,0.1;x,-8);
	};
	]]
};

return t