//
//  YUGPUImageHighPassSkinSmoothing
//
//  Created by YuAo on 1/24/16.
//
//

@import GPUImage;

typedef NS_ENUM(NSInteger, YUGPUImageHighPassSkinSmoothingRadiusUnit) {
    YUGPUImageHighPassSkinSmoothingRadiusUnitPixel = 1,
    YUGPUImageHighPassSkinSmoothingRadiusUnitFractionOfImageWidth = 2
};

@interface YUGPUImageHighPassSkinSmoothingRadius : NSObject <NSCopying,NSSecureCoding>

@property (nonatomic,readonly) CGFloat value;
@property (nonatomic,readonly) YUGPUImageHighPassSkinSmoothingRadiusUnit unit;

- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)radiusInPixels:(CGFloat)pixels;
+ (instancetype)radiusAsFractionOfImageWidth:(CGFloat)fraction;

@end

@interface YUGPUImageHighPassSkinSmoothingFilter : GPUImageFilterGroup

@property (nonatomic) CGFloat amount;

@property (nonatomic,copy) NSArray<NSValue *> *controlPoints; //value of Point

@property (nonatomic,copy) YUGPUImageHighPassSkinSmoothingRadius *radius;

@property (nonatomic) CGFloat sharpnessFactor;

@end
