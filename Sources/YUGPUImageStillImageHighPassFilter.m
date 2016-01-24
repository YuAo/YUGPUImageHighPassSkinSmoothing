//
//  YUGPUImageHighPassStillImageFilter.m
//  Pods
//
//  Created by YuAo on 1/24/16.
//
//

#import "YUGPUImageStillImageHighPassFilter.h"
#import "YUGPUImageDefines.h"

NSString * const YUGPUImageStillImageHighPassFilterFragmentShaderString =
SHADER_STRING
(
 YU_GLSL_FLOAT_PRECISION_LOW
 varying YU_GLSL_PRECISION_HIGH vec2 textureCoordinate;
 varying YU_GLSL_PRECISION_HIGH vec2 textureCoordinate2;
 
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2;
 
 void main() {
     vec4 image = texture2D(inputImageTexture, textureCoordinate);
     vec4 blurredImage = texture2D(inputImageTexture2, textureCoordinate);
     gl_FragColor = vec4((image.rgb - blurredImage.rgb + vec3(0.5,0.5,0.5)), image.a);
 }
);

@interface YUGPUImageStillImageHighPassFilter ()

@property (nonatomic,weak) GPUImageGaussianBlurFilter *blurFilter;

@end

@implementation YUGPUImageStillImageHighPassFilter

- (instancetype)init {
    if (self = [super init]) {
        GPUImageGaussianBlurFilter *blurFilter = [[GPUImageGaussianBlurFilter alloc] init];
        [self addFilter:blurFilter];
        self.blurFilter = blurFilter;
        
        GPUImageTwoInputFilter *filter = [[GPUImageTwoInputFilter alloc] initWithFragmentShaderFromString:YUGPUImageStillImageHighPassFilterFragmentShaderString];
        [self addFilter:filter];
        
        [blurFilter addTarget:filter atTextureLocation:1];
        
        self.initialFilters = @[blurFilter,filter];
        self.terminalFilter = filter;
    }
    return self;
}

- (void)setRadiusInPixels:(CGFloat)radiusInPixels {
    self.blurFilter.blurRadiusInPixels = radiusInPixels;
}

- (CGFloat)radiusInPixels {
    return self.blurFilter.blurRadiusInPixels;
}

@end
