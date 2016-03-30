

#import <UIKit/UIKit.h>

@interface LDCutRoundHead : NSObject
/**
 *用类调用此方法传入一个图片则返回一个裁剪好的圆形图片
 */
+ (UIImage *)cutWithImage:(UIImage *)image;
/**
 *用类调用此方法传入一个图片和边缘的颜色,则返回一个裁剪好的圆形图片并且边缘的线宽默认是10个像素
 */
+ (UIImage *)cutWithImage:(UIImage *)image color:(UIColor *)color;
/**
 *用类调用此方法裁剪圆形图片并且设置边缘线宽与颜色
 */
+ (UIImage *)cutWithImage:(UIImage *)image color:(UIColor *)color edgeWidth:(NSInteger)width;

@end
