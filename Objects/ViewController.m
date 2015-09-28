//
//  ViewController.m
//  Objects
//
//  Created by Spider on 9/23/15.
//  Copyright (c) 2015 Spider. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "Bike.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *test;
@property (weak, nonatomic) IBOutlet UILabel *test1;
@property (weak, nonatomic) IBOutlet UILabel *test2;
@property (weak, nonatomic) IBOutlet UILabel *test3;
@property (weak, nonatomic) IBOutlet UILabel *arraytext;

@property (weak, nonatomic) NSMutableArray *personArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *personsArray = [[NSMutableArray alloc] initWithCapacity:40];
    
    Car *toyota = [[Car alloc] init];  // instantiate an object called toyota
    
    [toyota setModel:@"Toyota Corolla"];      // set model
    NSLog(@"Created a %@", [toyota model]);
    self.test.text = toyota.model;
    
    // add to array
    [personsArray addObject:toyota];
    
    toyota.model = @"Toyota Camry";
    NSLog(@"Changed the car to a %@", toyota.model);
    self.test1.text = toyota.model;
    
    [toyota drive];
    
    Bike *fixie = [[Bike alloc] init];
    [fixie setBrand:@"Fixie Mega"];
    NSLog(@"I love my %@", fixie.brand);
    self.test2.text = fixie.brand;
    
    // add to array
    [personsArray addObject:fixie];
    
    Bike *billyyo = [[Bike alloc] init];
    [billyyo setBrand:@"Billy Yo Bikes"];
    NSLog(@"I love my %@", billyyo.brand);
    self.test3.text = billyyo.brand;
    
    [personsArray addObject:billyyo];

     self.arraytext.text = personsArray[1];
 
 //   NSString *element = personsArray;
    
   NSLog(@"Things in my array: %@", personsArray);
    
    [billyyo popAWheelie];
    
   // [Car setDefaultModel:@"Nissan VVersa"];
  
    // Instantiating objects
    Car *nissan = [[Car alloc] init];
    NSLog(@"Created a %@", nissan.model);
    
    Car *chevy = [[Car alloc] initWithModel:@"Chevy Corvette"];
    NSLog(@"Created a %@, too.", chevy.model);
    
    NSLog(@"%@",[Car class]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
