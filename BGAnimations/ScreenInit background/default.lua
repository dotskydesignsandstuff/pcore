local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(Center);
	Def.ActorFrame {
		Def.Quad {
			InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT);
			OnCommand=cmd(diffusealpha,1;sleep,1.5;linear,0.25);
		};
		LoadActor("ssc") .. {
			OnCommand=cmd(diffusealpha,0;zoom,2;linear,1;diffusealpha,1;sleep,0.75;linear,0.25;diffusealpha,0);
		};
		LoadActor("DotSky") .. {
			OnCommand=cmd(diffusealpha,0;zoom,2;sleep,2;linear,0.25;diffusealpha,1;sleep,0.75;linear,0.25;diffusealpha,0);
		};
	};
};
return t
