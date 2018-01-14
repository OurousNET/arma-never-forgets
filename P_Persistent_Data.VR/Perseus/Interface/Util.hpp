#ifndef _PERSEUS_UTIL
#define _PERSEUS_UTIL

#define QUOTE(ARG) #ARG
#define JOIN(ARG1,ARG2) ARG1##ARG2
#define RGBA(R,G,B,A) { __EVAL(R / 255 ), __EVAL(G / 255), __EVAL(B / 255), __EVAL(A / 255) }
#define ALPHA(RGB,A) { RGB, __EVAL(A / 255) }

#endif