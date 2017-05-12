/*
 *  Copyright (C) 2014 The AppCan Open Source Project.
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Lesser General Public License for more details.
 
 *  You should have received a copy of the GNU Lesser General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#import "WidgetOnePseudoDelegate.h"
@implementation WidgetOnePseudoDelegate

- (id) init
{
	if (self = [super init]) {
		self.userStartReport = YES;
		self.useOpenControl = NO;
		self.useEmmControl = NO;
		self.usePushControl = YES;
		self.useUpdateControl = NO;
		self.useOnlineArgsControl = YES;
		self.useDataStatisticsControl = YES;//数据统计开关
        self.useAuthorsizeIDControl = NO;
        self.useCloseAppWithJaibroken = NO;
        self.useRC4EncryptWithLocalstorage = YES;
        self.useUpdateWgtHtmlControl = NO;
        self.useStartReportURL = @"https://emmtest.vanke.com/v4/";
        self.useAnalysisDataURL = @"https://emmtest.vanke.com/analyIn/4.0/service/";
        self.useBindUserPushURL = @"http://192.168.4.55/gateway/";
        self.useAppCanMAMURL = @"http://192.168.1.140:8080/mam/";
        self.useAppCanMCMURL = @"http://192.168.1.183:8443/mcmIn/";
        self.useAppCanMDMURL = @"http://192.168.1.183:8443/mdmIn/";
        self.useAppCanMDMURLControl = NO;
        self.useCertificatePassWord = @"123456";
        self.useCertificateControl = NO;
        self.useIsHiddenStatusBarControl = NO;
        self.useAppCanUpdateURL = @"";
        self.signVerifyControl = NO;
        
        self.useAppCanEMMTenantID = @"";
        self.useAppCanAppStoreHost = @"";
        self.useAppCanMBaaSHost = @"";
        self.useAppCanIMXMPPHost = @"";
        self.useAppCanIMHTTPHost = @"";
        self.useAppCanTaskSubmitSSOHost = @"";
        self.useAppCanTaskSubmitHost = @"";
        self.validatesSecureCertificate = NO;
	}
	return self;
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	return [super application:application didFinishLaunchingWithOptions:launchOptions];
}
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return [super application:application handleOpenURL:url];
}
- (void)applicationWillResignActive:(UIApplication *)application {
	[super applicationWillResignActive:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	[super applicationDidBecomeActive:application];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	[super applicationWillTerminate:application];
}
- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
	[super application:app didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
	
}
// 注册APNs错误

- (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)err {
	[super application:app didFailToRegisterForRemoteNotificationsWithError:err];
	
}
// 接收推送通知

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
	[super application:application didReceiveRemoteNotification:userInfo];
}

- (void)dealloc
{
	[super dealloc];
}
//-(void)terminateWithException:(NSException*)e{
//    [super terminateWithException:e];
//}
@end
