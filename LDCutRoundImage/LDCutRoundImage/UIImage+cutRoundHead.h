

#import <UIKit/UIKit.h>
#import "LDCutRoundHead.h"

@interface UIImage (cutRoundHead)
/**
 *用UIImage调用此方法传入一个图片则返回一个裁剪好的圆形图片
 */
+ (UIImage *)cutWithImage:(UIImage *)image;
/**
 *用UIImage调用此方法传入一个图片和边缘的颜色,则返回一个裁剪好的圆形图片并且边缘的线宽默认是10个像素
 */
+ (UIImage *)cutWithImage:(UIImage *)image color:(UIColor *)color;
/**
 *用UIImage调用此方法传入一个图片和边缘的颜色和边缘线宽,则返回一个裁剪好的圆形图片并且边缘的线宽与颜色都与传入的参数一致
 */
+ (UIImage *)cutWithImage:(UIImage *)image color:(UIColor *)color edgeWidth:(NSInteger)width;
/**
 *即可以直接调用也可以通过点语法去裁剪圆形头像
 */
- (UIImage *)cutImage;
/**
 *将图片自己裁剪,并设置边缘颜色,默认边缘线宽是10个像素
 */
- (UIImage *)cutWithImageWithcolor:(UIColor *)color;
/**
 *将图片自己裁剪,并设置边缘颜色与边缘线宽
 */
- (UIImage *)cutWithImageWithcolor:(UIColor *)color edgeWidth:(NSInteger)width;

@end
