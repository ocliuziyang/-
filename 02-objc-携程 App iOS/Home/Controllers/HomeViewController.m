//
//  HomeViewController.m
//  02-objc-携程 App iOS
//
//  Created by LZY on 07/11/2016.
//  Copyright © 2016 https://github.com/ocliuziyang . All rights reserved.
//

#import "HomeViewController.h"
#import "CTCycleView.h"
@interface HomeViewController ()

@property (nonatomic, strong)CTCycleView *ctCycleView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.ctCycleView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.ctCycleView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (CTCycleView *)ctCycleView {
    if (!_ctCycleView) {
        
        NSArray *images = @[@"http://dimg04.c-ctrip.com/images/700c0a0000004e6u9A70B_750_150_25.jpg",
                            @"http://dimg04.c-ctrip.com/images/700c0a0000004e6u9A70B_750_150_25.jpg",
                            @"http://dimg04.c-ctrip.com/images/700c0a0000004e6u9A70B_750_150_25.jpg",
                            @"http://dimg04.c-ctrip.com/images/700c0a0000004e6u9A70B_750_150_25.jpg"];
        NSArray *titles = @[@"测试", @"测试", @"测试", @"测试", @"测试"];
        _ctCycleView = [CTCycleView cycleViewWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 80) images:images titles:titles];
    }
    return _ctCycleView;
}

@end
