//
//  AENavigationController.m
//  NavigationBackButton
//
//  Created by TalabatMac on 5/16/16.
//  Copyright © 2016 TalabatMac. All rights reserved.
//

#import "AENavigationController.h"

@interface AENavigationController ()

@end

@implementation AENavigationController

- (id)initWithRootViewController:(UIViewController *)rootViewController {
    self = [super initWithRootViewController:rootViewController];
    if (self) {
        [self setCloseButtonToController:rootViewController];
    }
    return self;
}

- (void)dismissController {
    [self dismissViewControllerAnimated:YES completion:nil];
    [super popViewControllerAnimated:YES];
}

- (void)setCloseButtonToController:(UIViewController *)viewController {
    
     UIBarButtonItem *closeItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_back@3x"] style:UIBarButtonItemStylePlain target:self action:@selector(dismissController)];
    [viewController.navigationItem setLeftBarButtonItem:closeItem];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super pushViewController:viewController animated:animated];
    
    [self setCloseButtonToController:viewController];
    
}

@end
