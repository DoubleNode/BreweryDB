//
//  BDBYeast.h
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
@interface BDBYeast : NSObject

@property (nonatomic, copy, readonly) NSString *yeastId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *descriptionString;

@property (nonatomic, copy) NSString *yeastType;

@property (nonatomic) NSNumber *attenuationMin;
@property (nonatomic) NSNumber *attenuationMax;
@property (nonatomic) NSNumber *fermentTempMin;
@property (nonatomic) NSNumber *fermentTempMax;
@property (nonatomic) NSNumber *alcoholToleranceMin;
@property (nonatomic) NSNumber *alcoholToleranceMax;

@property (nonatomic, copy) NSString *productId;
@property (nonatomic, copy) NSString *supplier;
@property (nonatomic, copy) NSString *yeastFormat;

@property (nonatomic, copy) NSString *category;
@property (nonatomic, copy) NSString *categoryDisplay;

@property (nonatomic, copy, readonly) NSString *status;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
