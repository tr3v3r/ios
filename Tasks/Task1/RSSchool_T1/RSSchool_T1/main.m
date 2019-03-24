#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Diagonal.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Diagonal *test = [[Diagonal alloc] init];
        [test diagonalDifference: @[@"1 2 3"]];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
