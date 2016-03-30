

#import "LDCutRoundHead.h"

//static NSMutableDictionary * _imgDict;


@implementation LDCutRoundHead

//+ (void)initialize{
//
//    _imgDict = [NSMutableDictionary dictionary];
//
//}

+ (UIImage *)cutWithImage:(UIImage *)image{

    return [LDCutRoundHead cutWithImage:image color:nil edgeWidth:0];

}


+ (UIImage *)cutWithImage:(UIImage *)image color:(UIColor *)color{

   return  [LDCutRoundHead cutWithImage:image color:color edgeWidth:10];

}

+ (UIImage *)cutWithImage:(UIImage *)image color:(UIColor *)color edgeWidth:(NSInteger)width{
    NSLog(@"%@",[image description]);
    //如果图片存在则直接返回,不需要再裁剪图片
//    if (_imgDict[[image description]] == image)return _imgDict[[image description]];
    
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0.0);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGPoint centerP = CGPointMake(image.size.width * 0.5, image.size.height * 0.5);
    
    CGFloat lineW = width;
    
    CGFloat radius = MIN(image.size.width * 0.5, image.size.height * 0.5) - lineW * 2;
    
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:centerP radius:radius startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    
    CGContextSetLineWidth(ctx, width);
    
    [color set];
    
    CGContextAddPath( ctx, path.CGPath);
    
    CGContextDrawPath(ctx, kCGPathStroke);
    
    UIBezierPath * circleClip = [UIBezierPath bezierPathWithArcCenter:centerP radius:radius startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    
    CGContextAddPath(ctx, circleClip.CGPath);
    
    CGContextClip(ctx);
    
    [image drawAtPoint:CGPointZero];
    
    UIImage * imgClip = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    CGFloat clipedX = (image.size.width - (radius * 2 + lineW * 2) ) * 0.5 + lineW *0.5;
    CGFloat clipedY = (image.size.height - (radius * 2 + lineW * 2)) * 0.5 + lineW *0.5;
    CGFloat clipedW = (radius + lineW * 0.5) * 2 ;
    CGFloat clipedH = clipedW;
    
    CGFloat scale = [UIScreen mainScreen].scale;
    clipedX *= scale;
    clipedY *= scale;
    clipedW *= scale;
    clipedH *= scale;
    
    CGRect clipedRect = CGRectMake(clipedX, clipedY, clipedW, clipedH);
    
    CGImageRef imgRef = CGImageCreateWithImageInRect(imgClip.CGImage, clipedRect);
    
    imgClip = [UIImage imageWithCGImage:imgRef];
    
    CFRelease(imgRef);
    
    return imgClip;

}
@end
