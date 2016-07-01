//
//  ViewController.m
//  testAf
//
//  Created by HuRay on 16/6/25.
//  Copyright © 2016年 HuRay. All rights reserved.
//

#import "ViewController.h"

#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //http://m.ieforex.com/talkforexdata/res/getHead.do?
    NSString *urlString = @"http://nbct01.baidupcs.com/file/7be6c70e27a748c4715482fbc55bb1c9?bkt=p2-nb-858&fid=3070291169-250528-916905042959954&time=1466864155&sign=FDTAXGERLBH-DCb740ccc5511e5e8fedcff06b081203-kyZAzbkgJlZxPJnHM7eHj6VPoaE%3D&to=nbhb&fm=Nin,B,U,nc&sta_dx=202&sta_cs=0&sta_ft=mp4&sta_ct=6&fm2=Ningbo,B,U,nc&newver=1&newfm=1&secfm=1&flow_ver=3&pkey=140007494d70bd5d2965eb2f2d24a97924a2ea60364800000ca4b181&sl=73138254&expires=8h&rt=pr&r=908508237&mlogid=4103453582494378484&vuk=3070291169&vbdid=4205477688&fin=VID_20151018_141922.mp4&slt=pm&uta=0&rtype=1&iv=0&isw=0&dp-logid=4103453582494378484&dp-callid=0.1.1";
    
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
    sessionManager.requestSerializer = [AFHTTPRequestSerializer serializer];
    sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    //application/json
    
    //text/html
    
    
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
    [sessionManager GET:urlString parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"progress:%lld %lld", downloadProgress.completedUnitCount, downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"responseobject:%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error:%@",error);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
