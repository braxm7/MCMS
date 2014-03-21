//
//  ViewController.m
//  MCMS
//
//  Created by Matt Brax on 3/18/14.
//  Copyright (c) 2014 MattBrax. All rights reserved.
//

#import "ViewController.h"
#import "CreatureViewController.h"


@interface ViewController () <UITableViewDelegate,UITableViewDataSource, UITextFieldDelegate>
{
    NSMutableArray *creatures;
}
@property (weak, nonatomic) IBOutlet UITextField *magicalCreaturesTextField;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;


@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    MagicalCreature *dragon = [MagicalCreature new];
    dragon.name = @"Dragon";
    dragon.description =@" He's a bad MOFO";
    dragon.weapon = @"Fire";
    dragon.image = [UIImage imageNamed:@"dragon"];
    
    MagicalCreature *unicorn = [MagicalCreature new];
    unicorn.name = @"Unicorn";
    unicorn.description = @"Is Magical";
    unicorn.weapon = @"Spiral Horn";
    unicorn.image = [UIImage imageNamed:@"unicorn"];
    
    MagicalCreature *mermaid = [MagicalCreature new];
    mermaid.name = @"Mermaid";
    mermaid.description = @"Queen of the ocean";
    mermaid.weapon = @"Tail Whip";
    mermaid.image = [UIImage imageNamed:@"mermaid"];
    
    MagicalCreature *mentor = [MagicalCreature new];
    mentor.name = @"Mentor";
    mentor.description = @"God of code";
    mentor.weapon = @"Knowledge";
    mentor.image = [UIImage imageNamed:@"mentor"];
    

    creatures = [[NSMutableArray alloc]initWithObjects: dragon, unicorn, mermaid, mentor, nil];
}

    



- (IBAction)onAddButtonPressed:(UIButton *)sender
{
    MagicalCreature *creature = [MagicalCreature new];
    creature.name =self.magicalCreaturesTextField.text;
    [self.magicalCreaturesTextField resignFirstResponder];
    self.magicalCreaturesTextField.text = nil;
    [self.myTableView reloadData];
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return creatures.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MagicalCreature *creature = [creatures objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellNameID"];
    cell.textLabel.text = creature.name;
    return cell;
}

#pragma mark Segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    CreatureViewController *destinationController =[segue destinationViewController];
    
    int selectedRow = [[self.myTableView indexPathForSelectedRow] row];
   
    destinationController.creature = creatures [selectedRow];
    
    

}















@end
