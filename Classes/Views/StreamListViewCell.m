//
//  StreamListViewCell.m
//  Shiver
//
//  Created by Bryan Veloso on 6/8/13.
//  Copyright (c) 2013 Revyver, Inc. All rights reserved.
//

#import "StreamListViewCell.h"

#import "Channel.h"

@implementation StreamListViewCell

- (id)initWithReusableIdentifier: (NSString*)identifier
{
    if (self = [super initWithReusableIdentifier:identifier]) {
        // Initialization code here.
    }

    return self;
}

- (void)prepareForReuse
{
    [self.streamTitleLabel setStringValue:@""];
    [self.streamUserLabel setStringValue:@""];
    [self.streamViewerCountLabel setStringValue:@""];
}

- (void)drawRect:(NSRect)dirtyRect
{
    if ([self isSelected]) {
        [[NSColor selectedControlColor] set];
    }
    else {
        [[NSColor whiteColor] set];
    }

    //Draw the border and background
    NSBezierPath *roundedRect = [NSBezierPath bezierPathWithRoundedRect:[self bounds] xRadius:0.0 yRadius:0.0];
    [roundedRect fill];
}

- (IBAction)redirectToStream:(id)sender
{
    [[NSWorkspace sharedWorkspace] openURL:self.stream.channel.url];
}

@end
