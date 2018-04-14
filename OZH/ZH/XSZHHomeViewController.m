//
//  XSZHHomeViewController.m
//  OZH
//
//  Created by 李兴东 on 2018/4/14.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSZHHomeViewController.h"
#import "XSClientManager.h"

@interface XSZHHomeViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) XSZHTopStory *topStory;

@end

@implementation XSZHHomeViewController

- (instancetype)init{
    self = [super init];
    if (self) {
        [self setupSubviews];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[XSClientManager sharedInstance] getTopstory:10 success:^(XSZHTopStory *topStory) {
        self.topStory = topStory;
        [self.tableView reloadData];
    } failure:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupSubviews{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.topStory.questions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    XSZHQuestion *question = _topStory.questions[indexPath.row];
    cell.textLabel.text = question.answer.title;
    return cell;
}

#pragma mark - UITableViewDelegate

@end
