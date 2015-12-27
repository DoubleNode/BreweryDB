//
//  BDBLocation.m
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

#import "BDBLocation.h"
#import "BDBBrewery.h"

#pragma mark -
@implementation BDBLocation

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (!self)
        return nil;

    if (!dictionary)
        return self;

    @try
    {
        _locationId = dictionary[@"id"];
        _name = dictionary[NSStringFromSelector(@selector(name))];

        _streetAddress = dictionary[NSStringFromSelector(@selector(streetAddress))];
        _extendedAddress = dictionary[NSStringFromSelector(@selector(extendedAddress))];
        _city = dictionary[NSStringFromSelector(@selector(city))];
        _state = dictionary[NSStringFromSelector(@selector(state))];
        _postalCode = dictionary[NSStringFromSelector(@selector(postalCode))];
        _phone = dictionary[NSStringFromSelector(@selector(phone))];
        _website = dictionary[NSStringFromSelector(@selector(website))];
        _hoursOfOperation = dictionary[NSStringFromSelector(@selector(hoursOfOperation))];
        _hoursOfOperationExplicit = dictionary[NSStringFromSelector(@selector(hoursOfOperationExplicit))];
        _hoursOfOperationNotes = dictionary[NSStringFromSelector(@selector(hoursOfOperationNotes))];
        _tourInfo = dictionary[NSStringFromSelector(@selector(tourInfo))];
        _timezone = dictionary[NSStringFromSelector(@selector(timezone))];

        _latitude = dictionary[NSStringFromSelector(@selector(latitude))];
        _longitude = dictionary[NSStringFromSelector(@selector(longitude))];

        NSDictionary* breweryDictionary = dictionary[NSStringFromSelector(@selector(brewery))];
        _brewery = [[BDBBrewery alloc] initWithDictionary:breweryDictionary];

        _primary = [dictionary[NSStringFromSelector(@selector(isPrimary))] boolValue];
        _planning = [dictionary[NSStringFromSelector(@selector(inPlanning))] boolValue];
        _closed = [dictionary[NSStringFromSelector(@selector(isClosed))] boolValue];
        _openToPublic = [dictionary[NSStringFromSelector(@selector(isOpenToPublic))] boolValue];
        
        _locationType = dictionary[NSStringFromSelector(@selector(locationType))];
        _locationTypeDisplay = dictionary[NSStringFromSelector(@selector(locationTypeDisplay))];
        _countryIsoCode = dictionary[NSStringFromSelector(@selector(countryIsoCode))];
        
        _country = dictionary[NSStringFromSelector(@selector(country))];
        _yearOpened = dictionary[NSStringFromSelector(@selector(yearOpened))];

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
