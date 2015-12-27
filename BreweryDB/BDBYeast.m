//
//  BDBYeast.m
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

#import "BDBYeast.h"

#pragma mark -
@implementation BDBYeast

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (!self)
        return nil;

    if (!dictionary)
        return self;

    @try
    {
        _yeastId = dictionary[@"id"];
        _name = dictionary[NSStringFromSelector(@selector(name))];
        _descriptionString = [dictionary[@"description"] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        _yeastType = dictionary[NSStringFromSelector(@selector(yeastType))];

        _attenuationMin = dictionary[NSStringFromSelector(@selector(attenuationMin))];
        _attenuationMax = dictionary[NSStringFromSelector(@selector(attenuationMax))];
        _fermentTempMin = dictionary[NSStringFromSelector(@selector(fermentTempMin))];
        _fermentTempMax = dictionary[NSStringFromSelector(@selector(fermentTempMax))];
        _alcoholToleranceMin = dictionary[NSStringFromSelector(@selector(alcoholToleranceMin))];
        _alcoholToleranceMax = dictionary[NSStringFromSelector(@selector(alcoholToleranceMax))];

        _productId = dictionary[NSStringFromSelector(@selector(productId))];
        _supplier = dictionary[NSStringFromSelector(@selector(supplier))];
        _yeastFormat = dictionary[NSStringFromSelector(@selector(yeastFormat))];
        
        _category = dictionary[NSStringFromSelector(@selector(category))];
        _categoryDisplay = dictionary[NSStringFromSelector(@selector(categoryDisplay))];

        _status = dictionary[NSStringFromSelector(@selector(status))];
    }
    @catch (NSException *exception)
    {
        NSLog(@"Could not parse beer: %@", exception);
        return nil;
    }

    return self;
}

@end
