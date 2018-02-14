local judge = Var "JudgementLine";

return Def.ActorFrame {
	-- REMINDER: left on top, right on bottom
	-- background box
	Def.Quad {
		InitCommand=cmd(zoomto,300,30;horizalign,left);
		OnCommand=cmd(diffuse,color("Black"));
	};
	Def.Quad {
		InitCommand=cmd(zoomto,300,30;horizalign,right);
		OnCommand=cmd(diffuse,color("Black"));
	};
};