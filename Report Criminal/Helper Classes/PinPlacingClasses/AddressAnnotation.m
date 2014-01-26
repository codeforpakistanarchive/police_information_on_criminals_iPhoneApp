//
//  AddressAnnotation.m
//  pinplacing2
//
//  Created by Umair Aamir on 9/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddressAnnotation.h"

@implementation AddressAnnotation

@synthesize pinID;
@synthesize title;
@synthesize subtitle,address;
@synthesize coordinate;
@synthesize pinAge;
@synthesize confirmedByOthers;
@synthesize creditText;
@synthesize isInRange,isCloseToPin;
@synthesize distanceFromCurrLoc;


/*-(id)initWithPinID:(NSInteger)pinId withCoordinate:(CLLocationCoordinate2D)annotCoordinate title:(NSString *)annotTitle subtitle:(NSString *)annotSubtitle address:(NSString *)pinAddress annotationType:(AddressAnnotationType)type pinAge:(NSString *)age andConfirmedByOthers:(NSString *)confirmedOthers inRange:(BOOL)isInRangeM isClose:(BOOL)closeToPinM  withCreditText:(NSString *)creditTextM{
    
    self = [super init];
    if (self){
        pinID = pinId;
        coordinate = annotCoordinate;
        title = annotTitle;
        subtitle = annotSubtitle;
        address = pinAddress;
        annotationType = type;
        pinAge = age;
        confirmedByOthers = confirmedOthers;
        isInRange=isInRangeM;
        isCloseToPin=closeToPinM;
        creditText = creditTextM;
    }
    return self;
}*/


-(id)initWithPinID:(NSInteger)pinId withCoordinate:(CLLocationCoordinate2D)annotCoordinate title:(NSString *)annotTitle subtitle:(NSString *)annotSubtitle address:(NSString *)pinAddress pinAge:(NSString *)age andConfirmedByOthers:(NSString *)confirmedOthers inRange:(BOOL)isInRangeM isClose:(BOOL)closeToPinM  withCreditText:(NSString *)creditTextM andWithDistanceFromCurrentLocation:(CLLocationDistance)distance{
    
    self = [super init];
    if (self){
        pinID = pinId;
        coordinate = annotCoordinate;
        title = annotTitle;
        subtitle = annotSubtitle;
        address = pinAddress;
        pinAge = age;
        confirmedByOthers = confirmedOthers;
        isInRange=isInRangeM;
        isCloseToPin=closeToPinM;
        creditText = creditTextM;
        distanceFromCurrLoc = distance;
    }
    return self;
}

@end
