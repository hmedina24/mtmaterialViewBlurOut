#line 1 "Tweak.xm"

@interface SBDockView : UIView{

}

@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class MTMaterialView; 
static void (*_logos_orig$_ungrouped$MTMaterialView$setBackgroundAlpha$)(_LOGOS_SELF_TYPE_NORMAL MTMaterialView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$MTMaterialView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL MTMaterialView* _LOGOS_SELF_CONST, SEL, double); 

#line 9 "Tweak.xm"

static void _logos_method$_ungrouped$MTMaterialView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL MTMaterialView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){
	_logos_orig$_ungrouped$MTMaterialView$setBackgroundAlpha$(self, _cmd, arg1);
	arg1 = 0.5;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MTMaterialView = objc_getClass("MTMaterialView"); MSHookMessageEx(_logos_class$_ungrouped$MTMaterialView, @selector(setBackgroundAlpha:), (IMP)&_logos_method$_ungrouped$MTMaterialView$setBackgroundAlpha$, (IMP*)&_logos_orig$_ungrouped$MTMaterialView$setBackgroundAlpha$);} }
#line 16 "Tweak.xm"
