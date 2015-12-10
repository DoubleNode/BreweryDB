//
//  BDBFermentable.h
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

#pragma mark -
@interface BDBFermentable : NSObject

@property (nonatomic, copy, readonly) NSString *fermentableId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *descriptionString;
@property (nonatomic, copy) NSString *countryOfOrigin;
@property (nonatomic) NSNumber *srmId;
@property (nonatomic) NSNumber *srmPrecise;
@property (nonatomic) NSDictionary *srm;
@property (nonatomic) NSNumber *moistureContent;
@property (nonatomic) NSNumber *coarseFineDifference;
@property (nonatomic) NSNumber *diastaticPower;
@property (nonatomic) NSNumber *dryYield;
@property (nonatomic) NSNumber *potential;
@property (nonatomic) NSNumber *protein;
@property (nonatomic) NSNumber *solubleNitrogenRatio;
@property (nonatomic) NSNumber *maxInBatch;
@property (nonatomic, assign, getter = requiresMashing) BOOL mashing;
@property (nonatomic, copy) NSString *category;
@property (nonatomic, copy) NSString *categoryDisplay;
@property (nonatomic) NSDictionary *country;
@property (nonatomic) NSDictionary *characteristics;

@property (nonatomic, copy, readonly) NSString *status;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
