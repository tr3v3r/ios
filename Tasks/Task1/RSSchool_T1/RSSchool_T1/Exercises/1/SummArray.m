#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
    double sum = 0;
    long int size = array.count;
    long int i;
    
    for (i = 0; i < size; i++) {
        sum = sum + [array[i] doubleValue];
    }
    return [NSNumber numberWithDouble:sum];
}

@end
