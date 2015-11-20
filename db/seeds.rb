User.create({name: "HackerGurl14", password_hash: "123"})
User.create({name: "CurlyFriesLover", password_hash: "123"})
Post.create({title: "Mouse 101: How to Click on Stuff", content: "http://digitalunite.com/guides/computer-basics/how-use-mouse", user_id: 1})
Comment.create({content: "Mice suck - joysticks are much better", user_id: 2, post_id: 1})
