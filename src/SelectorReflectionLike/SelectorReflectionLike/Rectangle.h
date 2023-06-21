//
//  Rectangle.h
//  SelectorReflectionLike
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    int width;
    int height;
}

@property int width,height;

-(int) area;
-(int) perimeter;
-(void) setWidth:(int)w andHeight:(int)h;

@end
