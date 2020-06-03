//---Begin interface---
@interface SBDockView : UIView{

}

@end
//---End interface---
//---Begin hook---
%hook MTMaterialView
-(void)setBackgroundAlpha:(double)arg1{
	%orig;
	arg1 = 0;
}
%end
//---End hook---