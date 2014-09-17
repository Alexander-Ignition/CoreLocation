//
//  OGTableViewController.m
//  CoreLocation
//
//  Created by Alexander Ignition on 10.06.14.
//  Copyright (c) 2014 Original Group. All rights reserved.
//


#import "OGTableViewController.h"
#import <CoreLocation/CoreLocation.h>


@interface OGTableViewController () <CLLocationManagerDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;

@end


@implementation OGTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.locationManager = [CLLocationManager new];
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingHeading];
    [self.locationManager startUpdatingLocation];
}


#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    self.latitudeLable.text  = [NSString stringWithFormat:@"%f", newLocation.coordinate.latitude];
    self.longitudeLable.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.longitude];
    self.altitudeLable.text  = [NSString stringWithFormat:@"%f", newLocation.altitude];
    
    self.horizontalAccuracyLable.text = [NSString stringWithFormat:@"%f", newLocation.horizontalAccuracy];
    self.verticalAccuracyLable.text   = [NSString stringWithFormat:@"%f", newLocation.verticalAccuracy];
    
    self.courseLable.text = [NSString stringWithFormat:@"%f", newLocation.course];
    self.speedLable.text  = [NSString stringWithFormat:@"%f", newLocation.speed];
    
    self.timestampLable.text = [NSString stringWithFormat:@"%@", newLocation.timestamp];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    self.magneticHeadingLable.text  = [NSString stringWithFormat:@"%f", newHeading.magneticHeading];
    self.trueHeadingLable.text      = [NSString stringWithFormat:@"%f", newHeading.trueHeading];
    self.headingAccuracyLable.text  = [NSString stringWithFormat:@"%f", newHeading.headingAccuracy];
    self.timestampHeadingLable.text = [NSString stringWithFormat:@"%@", newHeading.timestamp];
}

@end
