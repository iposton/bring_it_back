# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create(name: "Ian", email: "ian@yahoo.com", password: "password")

Movie.create!([

	         {title: "THE THEORY OF EVERYTHING",
	         link: "http://www.rottentomatoes.com/m/the_theory_of_everything_2014/", 
	         release_date: "2014", 
	         actor1: "Eddie Redmayne", 
	         actor2: "Felicity Jones", 
	         actor3: "David Thewlis", 
	         description: "The Theory of Everything is the story of the most brilliant and celebrated physicist of our time, Stephen Hawking, and Jane Wilde the arts student he fell in love with whilst studying at Cambridge in the 1960s. Little was expected from Stephen Hawking, a bright but shiftless student of cosmology, given just two years to live following the diagnosis of a fatal illness at 21 years of age. He became galvanized, however, by the love of fellow Cambridge student, Jane Wilde, and he went on to be called the successor to Einstein, as well as a husband and father to their three children. Over the course of their marriage as Stephen's body collapsed and his academic renown soared, fault lines were exposed that tested the lineaments of their relationship and dramatically altered the course of both of their lives.",
	         reminders: "in 2 weeks"},

	         {title: "NIGHTCRAWLER",
	         link: "http://www.rottentomatoes.com/m/nightcrawler/",
	         release_date: "2014", 
	         actor1: "Jake Gyllenhaal", 
	         actor2: "Bill Paxton", 
	         actor3: "Rene Russo", 
	         description: "NIGHTCRAWLER is a pulse-pounding thriller set in the nocturnal underbelly of contemporary Los Angeles. Jake Gyllenhaal stars as Lou Bloom, a driven young man desperate for work who discovers the high-speed world of L.A. crime journalism. Finding a group of freelance camera crews who film crashes, fires, murder and other mayhem, Lou muscles into the cut-throat, dangerous realm of nightcrawling -- where each police siren wail equals a possible windfall and victims are converted into dollars and cents. Aided by Rene Russo as Nina, a veteran of the blood-sport that is local TV news, Lou thrives. In the breakneck, ceaseless search for footage, he becomes the star of his own story.",
	         reminders: "in 2 weeks"},


	         {title: "GONE GIRL", 
	         link: "http://www.rottentomatoes.com/m/gone_girl/", 
	         release_date: "2014", 
	         actor1: "Ben Affleck", 
	         actor2: "Rosamund Pike", 
	         actor3: "Tyler Perry", 
	         description: "GONE GIRL - directed by David Fincher and based upon the global bestseller by Gillian Flynn - unearths the secrets at the heart of a modern marriage. On the occasion of his fifth wedding anniversary, Nick Dunne (Ben Affleck) reports that his beautiful wife, Amy (Rosamund Pike), has gone missing. Under pressure from the police and a growing media frenzy, Nick's portrait of a blissful union begins to crumble. Soon his lies, deceits and strange behavior have everyone asking the same dark question: Did Nick Dunne kill his wife?",
	         reminders: "in 2 weeks"},

	         {title: "BOYHOOD",
	         link: "http://www.rottentomatoes.com/m/boyhood/", 
	         release_date: "2014", 
	         actor1: "Ethan Hawke", 
	         actor2: "Ellar Coltrane", 
	         actor3: "Patricia Arquette", 
	         description: "Filmed over 12 years with the same cast, Richard Linklater's BOYHOOD is a groundbreaking story of growing up as seen through the eyes of a child named Mason (a breakthrough performance by Ellar Coltrane), who literally grows up on screen before our eyes. Starring Ethan Hawke and Patricia Arquette as Mason's parents and newcomer Lorelei Linklater as his sister Samantha, BOYHOOD charts the rocky terrain of childhood like no other film has before. Snapshots of adolescence from road trips and family dinners to birthdays and graduations and all the moments in between become transcendent, set to a soundtrack spanning the years from Coldplay's Yellow to Arcade Fire's Deep Blue. BOYHOOD is both a nostalgic time capsule of the recent past and an ode to growing up and parenting. It's impossible to watch Mason and his family without thinking about our own journey.",
	         reminders: "in 2 weeks"},

	         {title: "FURY",
	         link: "http://www.rottentomatoes.com/m/fury_2015/", 
	         release_date: "2014", 
	         actor1: "Brad Pitt", 
	         actor2: "Michael Peña", 
	         actor3: "Shia LaBeouf", 
	         description: "April, 1945. As the Allies make their final push in the European Theatre, a battle-hardened army sergeant named Wardaddy (Brad Pitt) commands a Sherman tank and her five-man crew on a deadly mission behind enemy lines. Outnumbered and outgunned, and with a rookie soldier thrust into their platoon, Wardaddy and his men face overwhelming odds in their heroic attempts to strike at the heart of Nazi Germany.",
	         reminders: "in 2 weeks"},

	         {actor1: "Jim Carrey",
			  actor2: "Jeff Daniels",
			  actor3: "Rob Riggle",
			  description: "Jim Carrey and Jeff Daniels reprise their signature roles as Lloyd and Harry in the sequel to the smash hit that took the physical comedy and kicked it in the nuts: Dumb and Dumber To. The original film's directors, Peter and Bobby Farrelly, take Lloyd and Harry on a road trip to find a child Harry never knew he had and the responsibility neither should ever, ever be given. The Farrelly brothers produce Dumb and Dumber To alongside Riza Aziz and Joey McFarland of Red Granite Pictures. They are joined by fellow producers Charles B. Wessler and Bradley Thomas. Universal Pictures will distribute the film in the United States, Canada and select international territories.",
			  link: "http://www.rottentomatoes.com/m/dumb_and_dumber_to/",
			  release_date: "2014",
			  reminders: "In 3 weeks",
			  title: "DUMB AND DUMBER TO"},

			  {actor1: "Bradley Cooper",
               actor2: "Sienna Miller",
			   actor3: "Luke Grimes",
			   description: "From director Clint Eastwood comes American Sniper, starring Bradley Cooper as Chris Kyle, the most lethal sniper in U.S. military history. But there was much more to this true American hero than his skill with a rifle. U.S. Navy SEAL sniper Chris Kyle is sent to Iraq with only one mission: to protect his brothers-in-arms. His pinpoint accuracy saves countless lives on the battlefield and, as stories of his courageous exploits spread, he earns the nickname Legend. However, his reputation is also growing behind enemy lines, putting a price on his head and making him a prime target of insurgents. Despite the danger, as well as the toll on his family at home, Chris serves through four harrowing tours of duty in Iraq, becoming emblematic of the SEAL creed to leave no man behind. But upon returning home, Chris finds that it is the war he can't leave behind.",
			   link: "http://www.rottentomatoes.com/m/american_sniper/",
			   release_date: "2014",
			   reminders: "In 3 weeks",
			   title: "AMERICAN SNIPER"},

			   {actor1: "Benedict Cumberbatch",
               actor2: "Keira Knightley",
			   actor3: "Allen Leech",
			   description: "During the winter of 1952, British authorities entered the home of mathematician, cryptanalyst and war hero Alan Turing (Benedict Cumberbatch) to investigate a reported burglary. They instead ended up arresting Turing himself on charges of 'gross indecency', an accusation that would lead to his devastating conviction for the criminal offense of homosexuality - little did officials know, they were actually incriminating the pioneer of modern-day computing. Famously leading a motley group of scholars, linguists, chess champions and intelligence officers, he was credited with cracking the so-called unbreakable codes of Germany's World War II Enigma machine. An intense and haunting portrayal of a brilliant, complicated man, THE IMITATION GAME follows a genius who under nail-biting pressure helped to shorten the war and, in turn, save thousands of lives.",
			   link: "http://www.rottentomatoes.com/m/the_imitation_game/",
			   release_date: "2014",
			   reminders: "In 3 weeks",
			   title: "THE IMITATION GAME"},

			   {actor1: "Mila Kunis",
               actor2: "Channing Tatum",
			   actor3: "Eddie Redmayne",
			   description: "From the streets of Chicago to the far-flung galaxies whirling through space, Jupiter Ascending tells the story of Jupiter Jones (Mila Kunis), who was born under a night sky, with signs predicting she was destined for great things. Now grown, Jupiter dreams of the stars but wakes up to the cold reality of a job cleaning other people's houses and an endless run of bad breaks. Only when Caine (Channing Tatum), a genetically engineered ex-military hunter, arrives on Earth to track her down does Jupiter begin to glimpse the fate that has been waiting for her all along-her genetic signature marks her as next in line for an extraordinary inheritance that could alter the balance of the cosmos.",
			   link: "http://www.rottentomatoes.com/m/jupiter_ascending_2014/",
			   release_date: "2014",
			   reminders: "In 3 weeks",
			   title: "JUPITER ASCENDING"}



	          ])

