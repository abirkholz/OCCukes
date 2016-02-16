/* OCCukesTests WireSteps
 *
 * Copyright © 2012, 2013, The OCCukes Organisation. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the “Software”), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 *	The above copyright notice and this permission notice shall be included in
 *	all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED “AS IS,” WITHOUT WARRANTY OF ANY KIND, EITHER
 * EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO
 * EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
 * OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 ******************************************************************************/

#import <OCCukes/OCCukes.h>

__attribute__((constructor))
static void StepDefinitions()
{
    [OCCucumber given:@"^a sleep duration of \"(.*?)\"$" step:^(NSArray *arguments) {
        NSInteger duration = [arguments[0] integerValue];
        NSLog(@"Sleeping for %ld seconds total",(long)duration);
        
        for (NSInteger i=0; i < duration; i++) {
            NSLog(@"Sleep %lu", (long)i);
            [NSThread sleepForTimeInterval:1.0f];
        }
        
    } file:__FILE__ line:__LINE__];
    
    [OCCucumber then:@"^the wire server should respond with \"(.*?)\"$" step:^(NSArray *arguments) {
        NSString *response = arguments[0];
        NSLog(@"Wire received response: %@", response);
        
    } file:__FILE__ line:__LINE__];


}
