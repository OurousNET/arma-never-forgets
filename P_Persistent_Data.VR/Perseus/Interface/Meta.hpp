#ifndef _PERSEUS_META
#define _PERSEUS_META


#define ANIM_BUTTON_PREAMBLE disableSerialization;_ctrl=_this select 0;if(ctrlEnabled _ctrl)then{
#define ANIM_BUTTON_HELPER_0(ARG) ANIM_BUTTON_PREAMBLE _ctrl ctrlSetText 'Perseus\Interface\Textures\##ARG##.paa';};
#define ANIM_BUTTON_HELPER_1(ARG) ANIM_BUTTON_PREAMBLE if([ctrlPosition _ctrl,[_this select 2,_this select 3]]call perseus_fnc_ui_checkAreaIntersect)then{_ctrl ctrlSetText 'Perseus\Interface\Textures\##ARG##_mOVER.paa';}else{_ctrl ctrlSetText 'Perseus\Interface\Textures\##ARG##_NORM.paa';};};
#define ANIM_BUTTON(ARG) onMouseEnter=QUOTE(ANIM_BUTTON_HELPER_0(JOIN(ARG,_mOVER)));\
onMouseExit=QUOTE(ANIM_BUTTON_HELPER_0(JOIN(ARG,_NORM)));\
onMouseButtonDown=QUOTE(ANIM_BUTTON_HELPER_0(JOIN(ARG,_CLICK)));\
onMouseButtonUp=QUOTE(ANIM_BUTTON_HELPER_1(ARG))


#endif