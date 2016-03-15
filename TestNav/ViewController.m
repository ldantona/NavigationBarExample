#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255. green:arc4random_uniform(255)/255. blue:arc4random_uniform(255)/255. alpha:1.];
    self.navigationController.interactivePopGestureRecognizer.delegate = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:(self.navigationController.viewControllers.count % 2 == 0) animated:animated];
}

- (IBAction)backward:(id)sender {
    if (self.navigationController.viewControllers.count > 1)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
