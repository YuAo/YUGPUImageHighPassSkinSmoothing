//
//  YUGPUImageDefines.h
//  Pods
//
//  Created by YuAo on 1/24/16.
//
//

#if TARGET_OS_IOS
#define YU_GLSL_PRECISION_HIGH highp
#define YU_GLSL_PRECISION_LOW lowp
#define YU_GLSL_FLOAT_PRECISION_LOW  precision YU_GLSL_PRECISION_LOW float;
#else
#define YU_GLSL_PRECISION_HIGH
#define YU_GLSL_PRECISION_LOW
#define YU_GLSL_FLOAT_PRECISION_LOW
#endif