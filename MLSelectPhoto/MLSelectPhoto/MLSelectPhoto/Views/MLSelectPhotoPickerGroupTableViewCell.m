//  github: https://github.com/MakeZL/MLSelectPhoto
//  author: @email <120886865@qq.com>
//
//  PickerGroupTableViewCell.m
//  ZLAssetsPickerDemo
//
//  Created by 张磊 on 14-11-13.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import "MLSelectPhotoPickerGroupTableViewCell.h"
#import "MLSelectPhotoPickerGroup.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface MLSelectPhotoPickerGroupTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *groupImageView;
@property (weak, nonatomic) IBOutlet UILabel *groupNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *groupPicCountLabel;
@end

@implementation MLSelectPhotoPickerGroupTableViewCell

- (void)setGroup:(MLSelectPhotoPickerGroup *)group{
    _group = group;
    
    self.groupNameLabel.text = group.groupName;
    self.groupImageView.image = group.thumbImage;
    self.groupPicCountLabel.text = [NSString stringWithFormat:@"(%ld)",group.assetsCount];
}


+ (instancetype) instanceCell{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] firstObject];
}

@end
