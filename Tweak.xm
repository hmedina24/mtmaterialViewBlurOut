//---Begin interface---
@interface SBDockView : UIView{

}

@end
//---End interface---
//---Begin hook---
%hook SBDockView
-(void)setBackgroundAlpha:(double)arg1{

	%orig(0.0);

	// %orig;
	// arg1 = 0;
}
%end
//---End hook---

//---Begin interface---
@interface SBIconListPageControl : UIPageControl {

}
@end
//---End interface---
//---Begin hook---
%hook SBIconListPageControl
-(void)setFrame:(CGRect)arg1{

	%orig;
	self.hidden= YES;
}
%end
//---End hook---