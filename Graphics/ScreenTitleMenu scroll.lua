local t = Def.ActorFrame {};
local txc = THEME:GetMetric ('EditableColors','FontColor');
local gc = Var('GameCommand');

-- menu selections
t[#t+1] = Def.ActorFrame {
	LoadFont("Common Normal") .. {
		Text=THEME:GetString('ScreenTitleMenu',gc:GetText());
		InitCommand=cmd(diffuse,color(txc);y,60;horizalign,right);
		GainFocusCommand=cmd(decelerate,0.1;x,-10);
		LoseFocusCommand=cmd(decelerate,0.1;x,10);
	};
};

return t