user_hash = [{user:'courtney', email: 'courtney@yahoo.com', password_hash:'12345'},
             {user:'beverly', email: 'beverly@yahoo.com', password_hash: '12345'},
             {user:'arthur', email: 'arthur@yahoo.com', password_hash: '12345'},
             {user:'lana', email: 'lana@yahoo.com', password_hash: '12345'},
             {user:'dominique', email: 'dominique@yahoo.com', password_hash: '12345'}]

  User.create!(user_hash)




hacker_content = [
  { :title => 'New Research Indicates That Candy Has Great Health Benefits',
    :body  => 'fkdfikdjflkjfdkfl;kfl;skfl;dkfdl;skfl;dkfl;dkf;ldskfl;dkfldkfl;dkfl;dkfl;dkfl;kflkflkflkflkfldkfldkfl;dkfldkfldkfl;kjifiosufdo;fodf;fdkfdlskfdl;fkdsl;fkl;dkflkdlfkldkfl;dkfl;skfld;kfls;kfl;dkfdl;kfld;kfl;dksfld;kfl;dsfkl;dfkdl;fkl;dskfdl;skfl;skfl;dskfl;dskfl;dkl;klf;kldkfl;kdl;fkl;kfl;kdl;kfl;kfl;sd' },
  { :title => 'A Songbird Bird Bridges The Communication Gap Between Cats And Dogs. ',
    :body  => 'fkdfikdjflkjfdkfl;kfl;skfl;dkfdl;skfl;dkfl;dkf;ldskfl;dkfldkfl;dkfl;dkfl;dkfl;kflkflkflkflkfldkfldkfl;dkfldkfldkfl;kjifiosufdo;fodf;fdkfdlskfdl;fkdsl;fkl;dkflkdlfkldkfl;dkfl;skfld;kfls;kfl;dkfdl;kfld;kfl;dksfld;kfl;dsfkl;dfkdl;fkl;dskfdl;skfl;skfl;dskfl;dskfl;dkl;klf;kldkfl;kdl;fkl;kfl;kdl;kfl;kfl;sd' },
  { :title => 'Free Drinks At Downtown Brothel Between 9am and 12pm Today!',
    :body  => 'fkdfikdjflkjfdkfl;kfl;skfl;dkfdl;skfl;dkfl;dkf;ldskfl;dkfldkfl;dkfl;dkfl;dkfl;kflkflkflkflkfldkfldkfl;dkfldkfldkfl;kjifiosufdo;fodf;fdkfdlskfdl;fkdsl;fkl;dkflkdlfkldkfl;dkfl;skfld;kfls;kfl;dkfdl;kfld;kfl;dksfld;kfl;dsfkl;dfkdl;fkl;dskfdl;skfl;skfl;dskfl;dskfl;dkl;klf;kldkfl;kdl;fkl;kfl;kdl;kfl;kfl;sd' },
  { :title => 'Yasssssssssss! 10 Things To Be Happy About In This Moment',
    :body  => 'fkdfikdjflkjfdkfl;kfl;skfl;dkfdl;skfl;dkfl;dkf;ldskfl;dkfldkfl;dkfl;dkfl;dkfl;kflkflkflkflkfldkfldkfl;dkfldkfldkfl;kjifiosufdo;fodf;fdkfdlskfdl;fkdsl;fkl;dkflkdlfkldkfl;dkfl;skfld;kfls;kfl;dkfdl;kfld;kfl;dksfld;kfl;dsfkl;dfkdl;fkl;dskfdl;skfl;skfl;dskfl;dskfl;dkl;klf;kldkfl;kdl;fkl;kfl;kdl;kfl;kfl;sd' },
  { :title => 'The Benefits Of Frying Turkey Fatback',
    :body  => 'fkdfikdjflkjfdkfl;kfl;skfl;dkfdl;skfl;dkfl;dkf;ldskfl;dkfldkfl;dkfl;dkfl;dkfl;kflkflkflkflkfldkfldkfl;dkfldkfldkfl;kjifiosufdo;fodf;fdkfdlskfdl;fkdsl;fkl;dkflkdlfkldkfl;dkfl;skfld;kfls;kfl;dkfdl;kfld;kfl;dksfld;kfl;dsfkl;dfkdl;fkl;dskfdl;skfl;skfl;dskfl;dskfl;dkl;klf;kldkfl;kdl;fkl;kfl;kdl;kfl;kfl;sd'}]


Post.create!(hacker_content)
