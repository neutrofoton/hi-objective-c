//
//  Foo.h
//  GobalVariable
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject
{
    
}

+(Foo*) allocF;
+(int) count;
-(void)setGlobalVariable:(int)val;

@end
