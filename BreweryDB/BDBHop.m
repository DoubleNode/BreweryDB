//
//  BDBHop.m
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

#import "BDBHop.h"

#pragma mark -
@implementation BDBHop

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (!self)
        return nil;

    if (!dictionary)
        return self;

    @try
    {
        _hopId = dictionary[@"id"];
        _name = dictionary[NSStringFromSelector(@selector(name))];
        _descriptionString = [dictionary[@"description"] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        _countryOfOrigin = dictionary[NSStringFromSelector(@selector(countryOfOrigin))];
        
        _alphaAcidMin = dictionary[NSStringFromSelector(@selector(alphaAcidMin))];
        _alphaAcidMax = dictionary[NSStringFromSelector(@selector(alphaAcidMax))];
        _betaAcidMin = dictionary[NSStringFromSelector(@selector(betaAcidMin))];
        _betaAcidMax = dictionary[NSStringFromSelector(@selector(betaAcidMax))];
        _humuleneMin = dictionary[NSStringFromSelector(@selector(humuleneMin))];
        _humuleneMax = dictionary[NSStringFromSelector(@selector(humuleneMax))];
        _caryophylleneMin = dictionary[NSStringFromSelector(@selector(caryophylleneMin))];
        _caryophylleneMax = dictionary[NSStringFromSelector(@selector(caryophylleneMax))];
        _cohumuloneMin = dictionary[NSStringFromSelector(@selector(cohumuloneMin))];
        _cohumuloneMax = dictionary[NSStringFromSelector(@selector(cohumuloneMax))];
        _myrceneMin = dictionary[NSStringFromSelector(@selector(myrceneMin))];
        _myrceneMax = dictionary[NSStringFromSelector(@selector(myrceneMax))];
        _farneseneMin = dictionary[NSStringFromSelector(@selector(farneseneMin))];
        _farneseneMax = dictionary[NSStringFromSelector(@selector(farneseneMax))];

        _nobel = [dictionary[NSStringFromSelector(@selector(isNobel))] boolValue];
        _forBittering = [dictionary[NSStringFromSelector(@selector(isForBittering))] boolValue];
        _forFlavor = [dictionary[NSStringFromSelector(@selector(isForFlavor))] boolValue];
        _forAroma = [dictionary[NSStringFromSelector(@selector(isForAroma))] boolValue];

        _category = dictionary[NSStringFromSelector(@selector(category))];
        _categoryDisplay = dictionary[NSStringFromSelector(@selector(categoryDisplay))];
        _country = dictionary[NSStringFromSelector(@selector(country))];

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
