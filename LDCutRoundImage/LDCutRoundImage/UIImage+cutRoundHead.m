

#import "UIImage+cutRoundHead.h"

@implementation UIImage (cutRoundHead)

+ (UIImage *)cutWithImage:(UIImage *)image color:(UIColor *)color edgeWidth:(NSInteger)width{
    
    return [LDCutRoundHead cutWithImage:image color:color edgeWidth:width];
    
}

+ (UIImage *)cutWithImage:(UIImage *)image color:(UIColor *)color{
    
    return [LDCutRoundHead cutWithImage:image color:color];
}

+ (UIImage *)cutWithImage:(UIImage *)image{
    
    return [LDCutRoundHead cutWithImage:image];
}

- (UIImage *)cutImage{
    
    return [LDCutRoundHead cutWithImage:self];

}

- (UIImage *)cutWithImageWithcolor:(UIColor *)color{

     return [LDCutRoundHead cutWithImage:self color:color];
}

- (UIImage *)cutWithImageWithcolor:(UIColor *)color edgeWidth:(NSInteger)width{

    return [LDCutRoundHead cutWithImage:self color:color edgeWidth:width];
}

@end
