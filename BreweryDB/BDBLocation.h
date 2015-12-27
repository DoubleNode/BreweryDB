//
//  BDBLocation.h
//
//  Copyright (c) 2013 Bradley David Bergeron
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import <Foundation/Foundation.h>

@class BDBBrewery;

#pragma mark -
@interface BDBLocation : NSObject

@property (nonatomic, copy, readonly) NSString *locationId;
@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *streetAddress;
@property (nonatomic, copy) NSString *extendedAddress;
@property (nonatomic, copy) NSString *locality;
@property (nonatomic, copy) NSString *region;
@property (nonatomic, copy) NSString *postalCode;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *website;
@property (nonatomic, copy) NSString *hoursOfOperation;
@property (nonatomic, copy) NSString *hoursOfOperationExplicit;
@property (nonatomic, copy) NSString *hoursOfOperationNotes;
@property (nonatomic, copy) NSString *tourInfo;
@property (nonatomic, copy) NSString *timezone;

@property (nonatomic)       NSNumber *latitude;
@property (nonatomic)       NSNumber *longitude;

@property (nonatomic) BDBBrewery *brewery;

@property (nonatomic, assign, getter = isPrimary)       BOOL primary;
@property (nonatomic, assign, getter = inPlanning)      BOOL planning;
@property (nonatomic, assign, getter = isClosed)        BOOL closed;
@property (nonatomic, assign, getter = isOpenToPublic)  BOOL openToPublic;

@property (nonatomic, copy) NSString *locationType;
@property (nonatomic, copy) NSString *locationTypeDisplay;
@property (nonatomic, copy) NSString *countryIsoCode;

@property (nonatomic, copy) NSDictionary *country;

@property (nonatomic)       NSNumber *yearOpened;
@property (nonatomic)       NSNumber *yearClosed;

@property (nonatomic, copy, readonly) NSString *status;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
