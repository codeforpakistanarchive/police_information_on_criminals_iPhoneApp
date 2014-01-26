//
//  AddressAnnotation.h
//  pinplacing2
//
//  Created by Umair Aamir on 9/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
 #import <MapKit/Mapkit.h>



@interface AddressAnnotation : NSObject<MKAnnotation>

@property NSInteger pinID;
@property (nonatomic,copy) NSString * subtitle;
@property (nonatomic,copy) NSString * title;
@property (nonatomic,copy) NSString * address;
@property (nonatomic,copy) NSString * pinAge;
@property (nonatomic,copy) NSString * confirmedByOthers;
@property (nonatomic,copy) NSString * creditText;
@property (nonatomic) CLLocationDistance distanceFromCurrLoc;
@property (nonatomic,readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic) BOOL isInRange;
@property (nonatomic) BOOL isCloseToPin;






/*-(id)initWithPinID:(NSInteger)pinId withCoordinate:(CLLocationCoordinate2D)annotCoordinate title:(NSString *)annotTitle subtitle:(NSString *)annotSubtitle address:(NSString *)pinAddress annotationType:(AddressAnnotationType)type pinAge:(NSString *)age andConfirmedByOthers:(NSString *)confirmedOthers inRange:(BOOL)isInRangeM isClose:(BOOL)closeToPinM  withCreditText:(NSString *)creditTextM;*/




-(id)initWithPinID:(NSInteger)pinId withCoordinate:(CLLocationCoordinate2D)annotCoordinate title:(NSString *)annotTitle subtitle:(NSString *)annotSubtitle address:(NSString *)pinAddress pinAge:(NSString *)age andConfirmedByOthers:(NSString *)confirmedOthers inRange:(BOOL)isInRangeM isClose:(BOOL)closeToPinM  withCreditText:(NSString *)creditTextM andWithDistanceFromCurrentLocation:(CLLocationDistance)distance;


@end
