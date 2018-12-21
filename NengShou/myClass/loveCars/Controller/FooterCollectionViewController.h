//
//  FooterCollectionViewController.h
//  CarsStore
//
//  Created by Apple on 15-1-23.
//  Copyright (c) 2015年 蓝欧科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotCars.h"
@interface FooterCollectionViewController : UIViewController <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic,retain)HotCars *hotCars;

-(id)initWithFrame:(CGRect)frame hotCars:(HotCars *)hotCars; //初始化方法

@end
