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
    
    UIView *superView = self.view;
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *leftView = [[UIView alloc] init];
    leftView.backgroundColor = [UIColor redColor];
    [superView addSubview:leftView];
    UIView *rightView = [[UIView alloc] init];
    rightView.backgroundColor = [UIColor redColor];
    [superView addSubview:rightView];
    UIView *midView = [[UIView alloc] init];
    midView.backgroundColor = [UIColor redColor];
    [superView addSubview:midView];
    

    _label_f = [[UILabel alloc] init];
    _label_s = [[UILabel alloc] init];
    
    _label_f.text = @"hhhhhhhh";
    _label_s.text = @"kkkkkkkk";
    _label_f.backgroundColor = [UIColor yellowColor];
    _label_s.backgroundColor = [UIColor yellowColor];
    [superView addSubview:_label_f];
    [superView addSubview:_label_s];
    

   
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(superView);
        make.left.equalTo(superView);
        make.height.mas_equalTo(21);
        
        
    }];
    [_label_f mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(leftView.mas_right);
        make.centerY.equalTo(superView);
        make.height.mas_equalTo(21);
    }];
    
    [midView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.height.mas_equalTo(21);
        make.left.mas_equalTo(_label_f.mas_right);
        make.centerY.equalTo(superView);
        make.width.equalTo(leftView);
        
    }];
    [_label_s mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(superView);
        make.left.equalTo(midView.mas_right);
        make.height.mas_equalTo(21);
    }];
   
    [rightView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(superView);
        make.left.mas_equalTo(_label_s.mas_right);
        make.height.mas_equalTo(21);
        make.right.equalTo(superView);
        make.width.equalTo(midView);
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
