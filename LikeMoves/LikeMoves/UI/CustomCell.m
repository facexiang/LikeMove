//
//  CustomCell.m
//  Custom Cell
//
//  Created by Yang on 12-6-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize imageView;
@synthesize nameLabel;


@synthesize image;
@synthesize name;
@synthesize nameDesc;


- (void)btnClick {
    if ([self.delegate respondsToSelector:@selector(CustomCellBtnClick:)]) {
        [self.delegate CustomCellBtnClick:self];
    }
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
//        imageView=[[UIImageView alloc] init];
//        imageView.frame=CGRectMake(15, 5, 50, 50);
//        [self.contentView addSubview:imageView];
        
        nameLabel=[[UILabel alloc] init];
        nameLabel.frame=CGRectMake(20, 19, 150, 20);
        nameLabel.font = [UIFont fontWithName:@"Helvetica" size:16];
        [self.contentView addSubview:nameLabel];
        
        _nameDescLabel=[[UILabel alloc] init];
        _nameDescLabel.frame=CGRectMake(20, 40, 150, 15);
        _nameDescLabel.font = [UIFont fontWithName:@"Helvetica" size:12];
        [self.contentView addSubview:_nameDescLabel];
        
        _btn=[UIButton buttonWithType:UIButtonTypeSystem];
        _btn.frame=CGRectMake(254, 15, 46, 30);
        
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        [_btn setTitle:@"邀请" forState:UIControlStateNormal];
        NSString *icon = [NSString stringWithFormat:@"smssdk.bundle/button2.png"];
        [_btn setBackgroundImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.contentView addSubview:_btn];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setImage:(UIImage *)img {
    if (![img isEqual:image]) {
        image = [img copy];
        self.imageView.image = image;
    }
}

-(void)setName:(NSString *)n {
    if (![n isEqualToString:name]) {
        name = [n copy];
        self.nameLabel.text = name;
    }
}

-(void)setNameDesc:(NSString *)nDesc
{
    if (![nDesc isEqualToString:nameDesc]) {
        nameDesc=[nDesc copy];
        self.nameDescLabel.text=nameDesc;
    }
}

@end
