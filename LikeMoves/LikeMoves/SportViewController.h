//
//  SportViewController.h
//  LikeMoves
//
//  Created by 粒橙Leo on 14-9-22.
//  Copyright (c) 2014年 Licheng Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "wendu_yuan2.h"
#import "LMSportBLDelegate.h"
#import "LMSportBL.h"
#import "DKCircleButton.h"
#import "LMUserActBL.h"
#import "ZenPlayerButton.h"
#import "Reachability.h"
#import "DXAlertView.h"
@interface SportViewController : UIViewController<LMSportBLDelegate>{
    UIButton        *_getBtn;
    UIImageView     *_bagView;      //福袋图层
    NSMutableArray  *_coinTagsArr;  //存放生成的所有金币对应的tag值
    BOOL  isBag;
    CAAnimationGroup* group;
    CABasicAnimation* shake;
    
    Reachability * reach;
//    DXAlertView* alert;
   

}
@property (weak, nonatomic) IBOutlet UIView *sportCircle;
@property(nonatomic) wendu_yuan2 * wdSport;

@property (weak, nonatomic) IBOutlet UILabel *stepCount;
@property (weak, nonatomic) IBOutlet UILabel *monthMoveDays;



@property (strong, nonatomic)  UIImageView *calImg;
@property (strong, nonatomic)  UILabel *calCount;




@property (weak, nonatomic) IBOutlet UILabel *coinsCount;
@property (nonatomic) ZenPlayerButton *fireBtn;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIImageView *coinImg;

- (IBAction)share:(id)sender;

@property (weak, nonatomic) IBOutlet UINavigationItem *sportNaviItem;


@property (nonatomic,strong) LMSportBL* bl;
@property (nonatomic,strong) LMUserActBL* userBL;
@end
