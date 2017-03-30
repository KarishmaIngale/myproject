//
//  ViewController.m
//  ki_day23
//
//  Created by Student 6 on 30/03/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self printFile:@"Property List.plist"];
}
-(void)printFile:(NSString *)fileName

{
    NSString *destinationPath=[(NSHomeDirectory())stringByAppendingFormat:@"/Documents/%@",fileName];
    bool isDestinationPathExists=[[NSFileManager defaultManager]fileExistsAtPath:destinationPath];
    if(isDestinationPathExists)
    {
        NSDictionary *myDIctionary=[NSDictionary dictionaryWithContentsOfFile:destinationPath];
        NSLog(@"%@",myDIctionary);
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
