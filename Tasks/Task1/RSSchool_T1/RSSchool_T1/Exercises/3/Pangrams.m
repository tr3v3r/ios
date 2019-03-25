#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    NSString *lower = [string lowercaseString];
    
    NSMutableSet *alphabet = [NSMutableSet new];
    
    unichar buffer[lower.length+1];
    [lower getCharacters:buffer range:NSMakeRange(0, lower.length)];
    
    for(int i = 0; i < lower.length; i++) {
        unichar ch = buffer[i];
        BOOL test = ch >= (char)"a";
        BOOL test2 = ch <= (unichar)"z";
        if(test && test2) {
            NSString *key = [NSString stringWithFormat:@"%c", buffer[i]];
            [alphabet addObject: key];
        }
        
    }

    if([alphabet count] != 26) {
        return NO;
    }
    
    return YES;
}

@end
