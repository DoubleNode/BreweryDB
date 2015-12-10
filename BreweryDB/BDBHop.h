//
//  BDBHop.h
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
@interface BDBHop : NSObject

@property (nonatomic, copy, readonly) NSString *hopId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *descriptionString;
@property (nonatomic, copy) NSString *countryOfOrigin;

@property (nonatomic) NSNumber *alphaAcidMin;
@property (nonatomic) NSNumber *alphaAcidMax;
@property (nonatomic) NSNumber *betaAcidMin;
@property (nonatomic) NSNumber *betaAcidMax;
@property (nonatomic) NSNumber *humuleneMin;
@property (nonatomic) NSNumber *humuleneMax;
@property (nonatomic) NSNumber *caryophylleneMin;
@property (nonatomic) NSNumber *caryophylleneMax;
@property (nonatomic) NSNumber *cohumuloneMin;
@property (nonatomic) NSNumber *cohumuloneMax;
@property (nonatomic) NSNumber *myrceneMin;
@property (nonatomic) NSNumber *myrceneMax;
@property (nonatomic) NSNumber *farneseneMin;
@property (nonatomic) NSNumber *farneseneMax;
@property (nonatomic, assign, getter = isNobel) BOOL nobel;
@property (nonatomic, assign, getter = isForBittering) BOOL forBittering;
@property (nonatomic, assign, getter = isForFlavor) BOOL forFlavor;
@property (nonatomic, assign, getter = isForAroma) BOOL forAroma;
@property (nonatomic) NSString *category;
@property (nonatomic) NSString *categoryDisplay;
@property (nonatomic) NSDictionary *country;

@property (nonatomic, copy, readonly) NSString *status;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
