//---Begin interface---
@interface SBDockView : UIView{

}

@end
//---End interface---
//---Begin hook---
%hook SBDockView
-(void)setBackgroundAlpha:(double)arg1{
	%orig;
	arg1 = 0;
}
%end
//---End hook---
