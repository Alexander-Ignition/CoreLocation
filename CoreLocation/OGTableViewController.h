//
//  OGTableViewController.h
//  CoreLocation
//
//  Created by Alexander Ignition on 10.06.14.
//  Copyright (c) 2014 Original Group. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface OGTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *latitudeLable;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLable;

@property (weak, nonatomic) IBOutlet UILabel *altitudeLable;

@property (weak, nonatomic) IBOutlet UILabel *horizontalAccuracyLable;
@property (weak, nonatomic) IBOutlet UILabel *verticalAccuracyLable;

@property (weak, nonatomic) IBOutlet UILabel *courseLable;
@property (weak, nonatomic) IBOutlet UILabel *speedLable;

@property (weak, nonatomic) IBOutlet UILabel *timestampLable;

@property (weak, nonatomic) IBOutlet UILabel *magneticHeadingLable;
@property (weak, nonatomic) IBOutlet UILabel *trueHeadingLable;
@property (weak, nonatomic) IBOutlet UILabel *headingAccuracyLable;
@property (weak, nonatomic) IBOutlet UILabel *timestampHeadingLable;

@end
