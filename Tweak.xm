//---Begin interface---
@interface SBDockView : UIView{

}

@end
//---End interface---
//---Begin hook---
%hook MTMaterialView
-(void)setBackgroundAlpha:(double)arg1{
	%orig;
	arg1 = 0.5;
}
%end
//---End hook---