//
//  ViewController.m
//  Sample020401
//
//  Created by tikomo on 2014/02/04.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    // インスタンス変数
    // NSInteger aa = 100; 初期化してはだめ！
    NSInteger aa;
    int bb;
    NSString *cc;
    
}

// ここに記述するとPublicだよな〜 ... Publicでは無いかも...Headerに記述するとPublic、ここだとPrivateかな
// 後で確認しないとな〜


// プロパティ変数
// NSInteger a; @property 付けないとだめ！
@property NSInteger a;
// @property int b = 10; 初期化してはだめ！
@property int b;

// @property NSString *c = @"Hello World"; 初期化してはだめ！
@property NSString *c;


// プロパティ宣言
@property (assign) NSInteger counter;

// インスタンスメソッド
// メソッド宣言
- (NSString *)fullName:(NSString *)sei lastName:(NSString *)mei;
- (void) countUp;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // @property にしたら "_" 付けないとだめ
    // a = 1;
    // b = 2;
    // c = @"Hello World";

    _a = 1;
    _b = 2;
    _c = @"Hello World";

    NSLog(@"%d", _a);
    NSLog(@"%d", _b);
    NSLog(@"%@", _c);
    
    self.a = 1;
    self.b = 2;
    self.c = @"Hello World";

    NSLog(@"%d", self.a);
    NSLog(@"%d", self.b);
    NSLog(@"%@", self.c);
    
    aa = 100;
    bb = 200;
    cc = @"Hi Mr.xxxxx";

    NSLog(@"%d", aa);
    NSLog(@"%d", bb);
    NSLog(@"%@", cc);

    
    _counter = 0;
    [self countUp];
    _counter++;
    self.counter++;
    
    NSLog(@"_counter = %d", _counter);
    
    NSString *str = [self fullName:@"aaaaa" lastName:@"bbbbb"];
    
    NSLog(@"%@", str);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSString *)fullName:(NSString *)sei lastName:(NSString *)mei {
    
    NSString *sei_mei = [NSString stringWithFormat:@"%@ %@", sei, mei];
    return sei_mei;
    
}

- (void) countUp {
    
    _counter++;
    
}


@end
