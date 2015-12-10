//
//  BDBFermentable.m
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

#import "BDBFermentable.h"

#pragma mark -
@implementation BDBFermentable

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (!self)
        return nil;

    if (!dictionary)
        return self;

    @try
    {
        _fermentableId = dictionary[@"id"];
        _name = dictionary[NSStringFromSelector(@selector(name))];
        _descriptionString = [dictionary[@"description"] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        _countryOfOrigin = dictionary[NSStringFromSelector(@selector(countryOfOrigin))];
        _srmId = dictionary[NSStringFromSelector(@selector(srmId))];
        _srmPrecise = dictionary[NSStringFromSelector(@selector(srmPrecise))];
        _srm = dictionary[NSStringFromSelector(@selector(srm))];
        _moistureContent = dictionary[NSStringFromSelector(@selector(moistureContent))];
        _coarseFineDifference = dictionary[NSStringFromSelector(@selector(coarseFineDifference))];
        _diastaticPower = dictionary[NSStringFromSelector(@selector(diastaticPower))];
        _dryYield = dictionary[NSStringFromSelector(@selector(dryYield))];
        _potential = dictionary[NSStringFromSelector(@selector(potential))];
        _protein = dictionary[NSStringFromSelector(@selector(protein))];
        _solubleNitrogenRatio = dictionary[NSStringFromSelector(@selector(solubleNitrogenRatio))];
        _maxInBatch = dictionary[NSStringFromSelector(@selector(maxInBatch))];
        _mashing = [dictionary[NSStringFromSelector(@selector(requiresMashing))] boolValue];
        _category = dictionary[NSStringFromSelector(@selector(category))];
        _categoryDisplay = dictionary[NSStringFromSelector(@selector(categoryDisplay))];
        _country = dictionary[NSStringFromSelector(@selector(country))];
        _characteristics = dictionary[NSStringFromSelector(@selector(characteristics))];

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
