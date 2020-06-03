//---Begin interface---
@interface MTMaterialView : UIView{

}
@property (assign,getter=isBlurEnabled,nonatomic) BOOL blurEnabled; 
@end
//---End interface---
//---Begin hook---
%hook MTMaterialView
-(void)setBlurEnabled:(BOOL)arg1{
	%orig;
	arg1 = true;
}
%end
//---End hook---