#import "TestModule.h"
#import <UserNotifications/UserNotifications.h>

@implementation TestModule

//Return the icon of your module here
- (UIImage *)glyphImage
{
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

//Return the color selection color of your module here
/*
- (UIColor *)selectedColor
{
	return [UIColor blueColor];
}

- (BOOL)isSelected
{
  return _selected;
}
*/
- (void)buttonTapped:(id)arg1 forEvent:(id)arg2
{
	[self action];
}

-(void)action
{
	UNMutableNotificationContent *objNotificationContent = [[UNMutableNotificationContent alloc] init];
	objNotificationContent.title = @"TestModule";
	objNotificationContent.body = @"Module pressed";
	objNotificationContent.sound = nil;

	UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:1 repeats:0];

	UNNotificationRequest *notificationRequest = [UNNotificationRequest requestWithIdentifier:@"testmoduleidentifier"
																																										content:objNotificationContent
																																										trigger:trigger];

	UNUserNotificationCenter *notificationCenter = [UNUserNotificationCenter currentNotificationCenter];

	[notificationCenter addNotificationRequest:notificationRequest withCompletionHandler:^(NSError * _Nullable error) {
		if (error) {
			NSLog(@"Notification Error: %@", error.localizedDescription);
		}
	}];
}

@end
