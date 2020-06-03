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
@interface _UIStatusBarStringView : UILabel{

}
@end
%hook_UIStatusBarStringView 
-(void)setText:(id)arg1{
	%orig;
	if([arg1 isEqualToString(:@"T-Mobile")]){
		self.textColor = [UIColor colorWithRed: 0.92 green: 0.04 blue: 0.56 alpha: 1.00];
	}
}
%end