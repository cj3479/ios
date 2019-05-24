#import "SampleProtocol.h"

@implementation SampleProtocol

-(void)startSampleProcess{
    NSLog(@"1111111");
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
                                   selector:@selector(processCompleted) userInfo:nil repeats:NO];
    NSLog(@"dddddddddd");
}
@end
