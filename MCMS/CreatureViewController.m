//
//  CreatureViewController.m
//  MCMS
//
//  Created by Matt Brax on 3/18/14.
//  Copyright (c) 2014 MattBrax. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()


@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *weaponLabel;
@property (weak, nonatomic) IBOutlet UIImageView *creatureImage;



@end

@implementation CreatureViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    self.nameLabel.text = self.creature.name;
    
    self.descriptionLabel.text = self.creature.description;
    
    self.weaponLabel.text = self.creature.weapon;
    
    self.creatureImage.image = self.creature.image;
    
    
}

@end
