

#import "ViewController.h"
#import "UIImage+cutRoundHead.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.iconView.image = [UIImage imageNamed:@"2"].cutImage;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
