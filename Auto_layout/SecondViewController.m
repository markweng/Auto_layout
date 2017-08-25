//
//  SecondViewController.m
//  Auto_layout
//
//  Created by Wong on 2017/8/25.
//  Copyright © 2017年 com.wong.t.c.h. All rights reserved.
//

#import "SecondViewController.h"
#import "Masonry.h"

@interface SecondViewController ()
@property(strong, nonatomic) UILabel *label_f;
@property(strong, nonatomic) UILabel *label_s;
@property (weak, nonatomic) IBOutlet UITextField *tf_1;
@property (weak, nonatomic) IBOutlet UITextField *tf_2;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *leftView = [[UIView alloc] init];
//    leftView.backgroundColor = [UIColor redColor];
    [self.view addSubview:leftView];
    
    UIView *backView = [[UIView alloc] init];
    backView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:backView];
    UILabel *label = [[UILabel alloc] init];
    [self.view addSubview:label];
    
    _label_f = [[UILabel alloc] init];
    _label_s = [[UILabel alloc] init];
    
    _label_f.text = @"hhhhhhhh";
    _label_s.text = @"kkkkkkkk";
    _label_f.backgroundColor = [UIColor yellowColor];
    _label_s.backgroundColor = [UIColor yellowColor];
    [backView addSubview:_label_f];
    [backView addSubview:_label_s];
    
    UIView *midView = [[UIView alloc] init];
    [backView addSubview:midView];
    
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.mas_equalTo(21);
    }];
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(backView);
        make.left.equalTo(self.view);
        make.right.mas_equalTo(backView.mas_left);
        make.height.equalTo(backView);
    }];
    [_label_f mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(backView);
        make.top.equalTo(backView);
        make.bottom.equalTo(backView);
    }];
    [_label_s mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(backView);
        make.top.equalTo(backView);
        make.bottom.equalTo(backView);
    }];
    [midView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_label_f.mas_right);
        make.right.mas_equalTo(_label_s.mas_left);
        make.top.equalTo(backView);
        make.bottom.equalTo(backView);
        make.width.equalTo(leftView);
        
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)action:(id)sender {
    
    _label_f.text = _tf_1.text;
    _label_s.text = _tf_2.text;
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

@end
