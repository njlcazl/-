//
//  PickerView.h
//  zsfy
//
//  Created by tiannuo on 15/11/12.
//  Copyright (c) 2015年 wzy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerView : UIView

@property(nonatomic,strong) id delegate;
@property(nonatomic,strong) UIButton *btnFinish;
@property(nonatomic,strong) UIPickerView *picker;
@end
