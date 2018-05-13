//
//  Rectangle.m
//  SelectorReflectionLike
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize height, width;


-(int) area{
    
    return width * height;
}
-(int) perimeter{
    return (width+height) * 2;
}

-(void) setWidth:(int)w andHeight:(int)h{
    
    height = h;
    width = w;
}


@end
