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

@class SBDockView; @class SBIconListPageControl; 
static void (*_logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SBIconListPageControl$setFrame$)(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$_ungrouped$SBIconListPageControl$setFrame$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, CGRect); 

#line 9 "Tweak.xm"

static void _logos_method$_ungrouped$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){

	

	_logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$(self, _cmd, arg1);
	arg1 = 0;
}




@interface SBIconListPageControl : UIPageControl {

}
@end



static void _logos_method$_ungrouped$SBIconListPageControl$setFrame$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect arg1){

	_logos_orig$_ungrouped$SBIconListPageControl$setFrame$(self, _cmd, arg1);
	self.hidden= YES;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDockView = objc_getClass("SBDockView"); MSHookMessageEx(_logos_class$_ungrouped$SBDockView, @selector(setBackgroundAlpha:), (IMP)&_logos_method$_ungrouped$SBDockView$setBackgroundAlpha$, (IMP*)&_logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$);Class _logos_class$_ungrouped$SBIconListPageControl = objc_getClass("SBIconListPageControl"); MSHookMessageEx(_logos_class$_ungrouped$SBIconListPageControl, @selector(setFrame:), (IMP)&_logos_method$_ungrouped$SBIconListPageControl$setFrame$, (IMP*)&_logos_orig$_ungrouped$SBIconListPageControl$setFrame$);} }
#line 35 "Tweak.xm"
