#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    double difference = 0;
    int i;   
    
    for(i = 0; i < array.count; i++) {
        NSArray * rowArray = [array[i] componentsSeparatedByString:@" "];
        difference = difference + [rowArray[i] doubleValue] - [rowArray[rowArray.count - i - 1] doubleValue];
    }    
    
    return [NSNumber numberWithDouble:fabs(difference)];
}

@end
