import 'mock_database.dart';

// ── Books 201–400 ─────────────────────────────────────────────────────────────
const List<MockBook> booksPartB = [
  // More Sci-Fi
  MockBook(id:'201',title:'Snow Crash',author:'Neal Stephenson',description:'A delivery man navigates a future America dominated by corporations.',genre:'Sci-Fi',rating:4.4,price:17.00,isAudioAvailable:true,pages:468,difficulty:'Intermediate'),
  MockBook(id:'202',title:'The Forever War',author:'Joe Haldeman',description:'A soldier fights an interstellar war that spans centuries.',genre:'Sci-Fi',rating:4.5,price:15.00,isAudioAvailable:false,pages:236,difficulty:'Intermediate'),
  MockBook(id:'203',title:'Speaker for the Dead',author:'Orson Scott Card',description:'Ender Wiggin speaks for an alien species.',genre:'Sci-Fi',rating:4.5,price:16.00,isAudioAvailable:true,pages:382,difficulty:'Intermediate'),
  MockBook(id:'204',title:'Rendezvous with Rama',author:'Arthur C. Clarke',description:'Astronauts explore a mysterious alien spacecraft.',genre:'Sci-Fi',rating:4.5,price:14.00,isAudioAvailable:false,pages:243,difficulty:'Beginner'),
  MockBook(id:'205',title:'The Power',author:'Naomi Alderman',description:'Women develop the power to release electrical jolts — and everything changes.',genre:'Sci-Fi',rating:4.2,price:16.00,isAudioAvailable:true,pages:386,difficulty:'Intermediate'),
  MockBook(id:'206',title:'Childhood\'s End',author:'Arthur C. Clarke',description:'Benevolent aliens oversee Earth\'s transformation.',genre:'Sci-Fi',rating:4.4,price:13.00,isAudioAvailable:false,pages:224,difficulty:'Intermediate'),
  MockBook(id:'207',title:'The Dispossessed',author:'Ursula K. Le Guin',description:'A physicist travels between an anarchist moon and its capitalist planet.',genre:'Sci-Fi',rating:4.5,price:14.00,isAudioAvailable:false,pages:341,difficulty:'Intermediate'),
  MockBook(id:'208',title:'Slaughterhouse-Five',author:'Kurt Vonnegut',description:'A soldier experiences the firebombing of Dresden and time travel.',genre:'Sci-Fi',rating:4.6,price:13.00,isAudioAvailable:true,pages:215,difficulty:'Beginner'),
  MockBook(id:'209',title:'Fahrenheit 451',author:'Ray Bradbury',description:'A fireman whose job is burning books begins to question the system.',genre:'Sci-Fi',rating:4.6,price:12.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'210',title:'Cat\'s Cradle',author:'Kurt Vonnegut',description:'A satirical look at science, religion, and humanity.',genre:'Sci-Fi',rating:4.4,price:13.00,isAudioAvailable:true,pages:287,difficulty:'Intermediate'),

  // More Fantasy
  MockBook(id:'211',title:'The Eye of the World',author:'Robert Jordan',description:'The first book of The Wheel of Time epic saga.',genre:'Fantasy',rating:4.6,price:20.00,isAudioAvailable:true,pages:782,difficulty:'Intermediate'),
  MockBook(id:'212',title:'Coraline',author:'Neil Gaiman',description:'A girl finds a secret door to a parallel world.',genre:'Fantasy',rating:4.5,price:12.00,isAudioAvailable:true,pages:163,difficulty:'Beginner'),
  MockBook(id:'213',title:'Good Omens',author:'Neil Gaiman & Terry Pratchett',description:'An angel and demon team up to stop Armageddon.',genre:'Fantasy',rating:4.7,price:16.00,isAudioAvailable:true,pages:412,difficulty:'Beginner'),
  MockBook(id:'214',title:'Jonathan Strange & Mr Norrell',author:'Susanna Clarke',description:'Two magicians attempt to revive English magic in 19th-century Britain.',genre:'Fantasy',rating:4.4,price:19.00,isAudioAvailable:true,pages:782,difficulty:'Advanced'),
  MockBook(id:'215',title:'Piranesi',author:'Susanna Clarke',description:'A man lives in a labyrinthine house with infinite halls.',genre:'Fantasy',rating:4.6,price:16.00,isAudioAvailable:true,pages:272,difficulty:'Intermediate'),
  MockBook(id:'216',title:'The Bear and the Nightingale',author:'Katherine Arden',description:'A girl with a gift for seeing the magical spirits of Russia.',genre:'Fantasy',rating:4.6,price:17.00,isAudioAvailable:true,pages:323,difficulty:'Beginner'),
  MockBook(id:'217',title:'Uprooted',author:'Naomi Novik',description:'A wizard demands a village girl as payment for his protection.',genre:'Fantasy',rating:4.5,price:16.00,isAudioAvailable:true,pages:438,difficulty:'Beginner'),
  MockBook(id:'218',title:'The Rage of Dragons',author:'Evan Winter',description:'A young man seeks vengeance for his people in a brutal war.',genre:'Fantasy',rating:4.5,price:18.00,isAudioAvailable:true,pages:544,difficulty:'Intermediate'),
  MockBook(id:'219',title:'Children of Blood and Bone',author:'Tomi Adeyemi',description:'A girl tries to restore magic to a war-torn land.',genre:'Fantasy',rating:4.4,price:17.00,isAudioAvailable:true,pages:531,difficulty:'Beginner'),
  MockBook(id:'220',title:'Assassin\'s Apprentice',author:'Robin Hobb',description:'A royal bastard is trained as an assassin.',genre:'Fantasy',rating:4.6,price:16.00,isAudioAvailable:true,pages:356,difficulty:'Intermediate'),

  // More Thrillers
  MockBook(id:'221',title:'The Girl on the Train',author:'Paula Hawkins',description:'A commuter becomes embroiled in a missing-person investigation.',genre:'Thriller',rating:4.2,price:16.00,isAudioAvailable:true,pages:323,difficulty:'Beginner'),
  MockBook(id:'222',title:'Behind Closed Doors',author:'B.A. Paris',description:'The perfect marriage hides a terrifying secret.',genre:'Thriller',rating:4.2,price:15.00,isAudioAvailable:true,pages:294,difficulty:'Beginner'),
  MockBook(id:'223',title:'The Shining',author:'Stephen King',description:'A family caretaking a haunted hotel over a brutal winter.',genre:'Thriller',rating:4.7,price:18.00,isAudioAvailable:true,pages:447,difficulty:'Intermediate'),
  MockBook(id:'224',title:'It',author:'Stephen King',description:'A group of childhood friends reunite to battle a shapeshifting monster.',genre:'Thriller',rating:4.7,price:22.00,isAudioAvailable:true,pages:1138,difficulty:'Intermediate'),
  MockBook(id:'225',title:'The Firm',author:'John Grisham',description:'A Harvard law graduate joins a Memphis law firm with dark secrets.',genre:'Thriller',rating:4.4,price:16.00,isAudioAvailable:true,pages:432,difficulty:'Beginner'),
  MockBook(id:'226',title:'The Pelican Brief',author:'John Grisham',description:'A law student uncovers the motive behind two Supreme Court murders.',genre:'Thriller',rating:4.4,price:16.00,isAudioAvailable:true,pages:384,difficulty:'Beginner'),
  MockBook(id:'227',title:'Misery',author:'Stephen King',description:'A novelist is held captive by his obsessive fan.',genre:'Thriller',rating:4.5,price:17.00,isAudioAvailable:true,pages:420,difficulty:'Beginner'),
  MockBook(id:'228',title:'The Snowman',author:'Jo Nesbø',description:'A detective hunts a serial killer who leaves snowmen at crime scenes.',genre:'Thriller',rating:4.3,price:17.00,isAudioAvailable:true,pages:550,difficulty:'Intermediate'),
  MockBook(id:'229',title:'The No.1 Ladies\' Detective Agency',author:'Alexander McCall Smith',description:'Africa\'s only female detective solves mysteries with wisdom.',genre:'Thriller',rating:4.5,price:14.00,isAudioAvailable:true,pages:235,difficulty:'Beginner'),
  MockBook(id:'230',title:'Rebecca',author:'Daphne du Maurier',description:'A young woman marries a widower and is haunted by his first wife.',genre:'Thriller',rating:4.6,price:14.00,isAudioAvailable:true,pages:449,difficulty:'Intermediate'),

  // More Romance
  MockBook(id:'231',title:'The Time Traveler\'s Wife',author:'Audrey Niffenegger',description:'A man involuntarily time-travels and his wife must endure.',genre:'Romance',rating:4.5,price:17.00,isAudioAvailable:true,pages:518,difficulty:'Beginner'),
  MockBook(id:'232',title:'Eleanor & Park',author:'Rainbow Rowell',description:'Two misfits fall in love over comic books and mix tapes.',genre:'Romance',rating:4.5,price:14.00,isAudioAvailable:true,pages:328,difficulty:'Beginner'),
  MockBook(id:'233',title:'One Day',author:'David Nicholls',description:'Two friends and the one day each year that defines their lives.',genre:'Romance',rating:4.4,price:15.00,isAudioAvailable:true,pages:437,difficulty:'Beginner'),
  MockBook(id:'234',title:'The Light We Lost',author:'Jill Santopolo',description:'A love story spanning thirteen years and three continents.',genre:'Romance',rating:4.4,price:15.00,isAudioAvailable:true,pages:290,difficulty:'Beginner'),
  MockBook(id:'235',title:'Attachments',author:'Rainbow Rowell',description:'A man hired to monitor employee emails falls for one of the women.',genre:'Romance',rating:4.3,price:14.00,isAudioAvailable:false,pages:323,difficulty:'Beginner'),
  MockBook(id:'236',title:'To All the Boys I\'ve Loved Before',author:'Jenny Han',description:'Secret love letters are sent out to every crush.',genre:'Romance',rating:4.4,price:14.00,isAudioAvailable:true,pages:355,difficulty:'Beginner'),
  MockBook(id:'237',title:'The Rosie Project',author:'Graeme Simsion',description:'A genetics professor embarks on a project to find a wife.',genre:'Romance',rating:4.4,price:14.00,isAudioAvailable:true,pages:295,difficulty:'Beginner'),
  MockBook(id:'238',title:'Nora Goes Off Script',author:'Annabel Monaghan',description:'A screenwriter\'s romantic comedy becomes real life.',genre:'Romance',rating:4.3,price:15.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'239',title:'Act Your Age, Eve Brown',author:'Talia Hibbert',description:'A free-spirited woman crashes into the life of a grumpy B&B owner.',genre:'Romance',rating:4.4,price:14.00,isAudioAvailable:true,pages:384,difficulty:'Beginner'),
  MockBook(id:'240',title:'The Spanish Love Deception',author:'Elena Armas',description:'A fake-date to a wedding becomes something more.',genre:'Romance',rating:4.3,price:14.00,isAudioAvailable:false,pages:432,difficulty:'Beginner'),

  // Business Extended
  MockBook(id:'241',title:'The E-Myth Revisited',author:'Michael Gerber',description:'Why most small businesses don\'t work and what to do about it.',genre:'Business',rating:4.4,price:17.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'242',title:'Crossing the Chasm',author:'Geoffrey Moore',description:'Marketing and selling disruptive products to mainstream customers.',genre:'Business',rating:4.4,price:20.00,isAudioAvailable:false,pages:227,difficulty:'Intermediate'),
  MockBook(id:'243',title:'The Tipping Point',author:'Malcolm Gladwell',description:'How little things can make a big difference.',genre:'Business',rating:4.5,price:17.00,isAudioAvailable:true,pages:301,difficulty:'Beginner'),
  MockBook(id:'244',title:'Outliers',author:'Malcolm Gladwell',description:'The story of success.',genre:'Business',rating:4.5,price:17.00,isAudioAvailable:true,pages:309,difficulty:'Beginner'),
  MockBook(id:'245',title:'Blink',author:'Malcolm Gladwell',description:'The power of thinking without thinking.',genre:'Business',rating:4.3,price:16.00,isAudioAvailable:true,pages:296,difficulty:'Beginner'),
  MockBook(id:'246',title:'Never Eat Alone',author:'Keith Ferrazzi',description:'And other secrets to success, one relationship at a time.',genre:'Business',rating:4.3,price:18.00,isAudioAvailable:true,pages:320,difficulty:'Beginner'),
  MockBook(id:'247',title:'The Mom Test',author:'Rob Fitzpatrick',description:'How to talk to customers and learn if your business is a good idea.',genre:'Business',rating:4.5,price:15.00,isAudioAvailable:false,pages:130,difficulty:'Beginner'),
  MockBook(id:'248',title:'Sprint',author:'Jake Knapp',description:'How to solve big problems and test new ideas in just five days.',genre:'Business',rating:4.3,price:20.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'249',title:'Obviously Awesome',author:'April Dunford',description:'How to nail product positioning so customers get it.',genre:'Business',rating:4.5,price:18.00,isAudioAvailable:true,pages:188,difficulty:'Beginner'),
  MockBook(id:'250',title:'Continuous Discovery Habits',author:'Teresa Torres',description:'Discover products that create customer value and business value.',genre:'Business',rating:4.5,price:22.00,isAudioAvailable:false,pages:272,difficulty:'Intermediate'),

  // More Health
  MockBook(id:'251',title:'The Miracle Morning',author:'Hal Elrod',description:'The not-so-obvious secret guaranteed to transform your life.',genre:'Health',rating:4.4,price:16.00,isAudioAvailable:true,pages:220,difficulty:'Beginner'),
  MockBook(id:'252',title:'How an Economy Grows and Why It Crashes',author:'Peter Schiff',description:'Economics explained with a simple fable.',genre:'Finance',rating:4.4,price:18.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'253',title:'The Longevity Diet',author:'Valter Longo',description:'Discover the new science behind stem cell activation.',genre:'Health',rating:4.3,price:20.00,isAudioAvailable:true,pages:320,difficulty:'Intermediate'),
  MockBook(id:'254',title:'In Defense of Food',author:'Michael Pollan',description:'An eater\'s manifesto.',genre:'Health',rating:4.5,price:17.00,isAudioAvailable:true,pages:244,difficulty:'Beginner'),
  MockBook(id:'255',title:'The Omnivore\'s Dilemma',author:'Michael Pollan',description:'A natural history of four meals.',genre:'Health',rating:4.4,price:19.00,isAudioAvailable:true,pages:464,difficulty:'Intermediate'),
  MockBook(id:'256',title:'Breath',author:'James Nestor',description:'The new science of a lost art.',genre:'Health',rating:4.5,price:20.00,isAudioAvailable:true,pages:308,difficulty:'Beginner'),
  MockBook(id:'257',title:'The Circadian Code',author:'Satchin Panda',description:'Lose weight, supercharge your energy, and transform your health.',genre:'Health',rating:4.4,price:20.00,isAudioAvailable:true,pages:304,difficulty:'Intermediate'),
  MockBook(id:'258',title:'Outlive',author:'Peter Attia',description:'The science and art of longevity.',genre:'Health',rating:4.7,price:28.00,isAudioAvailable:true,pages:496,difficulty:'Intermediate'),
  MockBook(id:'259',title:'The Blue Zones',author:'Dan Buettner',description:'Lessons for living longer from the people who\'ve lived the longest.',genre:'Health',rating:4.4,price:18.00,isAudioAvailable:true,pages:320,difficulty:'Beginner'),
  MockBook(id:'260',title:'Brain Rules',author:'John Medina',description:'12 principles for surviving and thriving at work, home, and school.',genre:'Health',rating:4.5,price:18.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),

  // More History
  MockBook(id:'261',title:'The Fifth Season',author:'N.K. Jemisin',description:'A world where catastrophic seasons destroy civilizations.',genre:'Sci-Fi',rating:4.5,price:16.00,isAudioAvailable:true,pages:468,difficulty:'Intermediate'),
  MockBook(id:'262',title:'Empire of the Summer Moon',author:'S.C. Gwynne',description:'Rise and fall of the Comanche empire.',genre:'History',rating:4.6,price:18.00,isAudioAvailable:true,pages:371,difficulty:'Intermediate'),
  MockBook(id:'263',title:'Destiny of the Republic',author:'Candice Millard',description:'The assassination of President Garfield.',genre:'History',rating:4.6,price:17.00,isAudioAvailable:true,pages:339,difficulty:'Beginner'),
  MockBook(id:'264',title:'The Splendid and the Vile',author:'Erik Larson',description:'Churchill and his family during the Blitz.',genre:'History',rating:4.6,price:20.00,isAudioAvailable:true,pages:585,difficulty:'Beginner'),
  MockBook(id:'265',title:'Benjamin Franklin',author:'Walter Isaacson',description:'An American life.',genre:'History',rating:4.6,price:22.00,isAudioAvailable:true,pages:590,difficulty:'Intermediate'),
  MockBook(id:'266',title:'Team of Rivals',author:'Doris Kearns Goodwin',description:'The political genius of Abraham Lincoln.',genre:'History',rating:4.7,price:22.00,isAudioAvailable:true,pages:916,difficulty:'Intermediate'),
  MockBook(id:'267',title:'The Power Broker',author:'Robert Caro',description:'Robert Moses and the fall of New York.',genre:'History',rating:4.8,price:30.00,isAudioAvailable:false,pages:1336,difficulty:'Advanced'),
  MockBook(id:'268',title:'The Warmth of Other Suns',author:'Isabel Wilkerson',description:'The epic story of America\'s great migration.',genre:'History',rating:4.8,price:20.00,isAudioAvailable:true,pages:622,difficulty:'Intermediate'),
  MockBook(id:'269',title:'Caste',author:'Isabel Wilkerson',description:'The origins of our discontents.',genre:'History',rating:4.7,price:22.00,isAudioAvailable:true,pages:496,difficulty:'Intermediate'),
  MockBook(id:'270',title:'The Looming Tower',author:'Lawrence Wright',description:'Al-Qaeda and the road to 9/11.',genre:'History',rating:4.6,price:18.00,isAudioAvailable:true,pages:480,difficulty:'Intermediate'),

  // Young Adult
  MockBook(id:'271',title:'The Hunger Games',author:'Suzanne Collins',description:'Teens fight to the death in a dystopian society.',genre:'Sci-Fi',rating:4.7,price:14.00,isAudioAvailable:true,pages:374,difficulty:'Beginner'),
  MockBook(id:'272',title:'Divergent',author:'Veronica Roth',description:'A girl questions her faction in a divided society.',genre:'Sci-Fi',rating:4.5,price:14.00,isAudioAvailable:true,pages:487,difficulty:'Beginner'),
  MockBook(id:'273',title:'The Maze Runner',author:'James Dashner',description:'A boy wakes in a maze with no memory.',genre:'Sci-Fi',rating:4.4,price:14.00,isAudioAvailable:true,pages:375,difficulty:'Beginner'),
  MockBook(id:'274',title:'Twilight',author:'Stephenie Meyer',description:'A girl falls in love with a vampire in a Washington town.',genre:'Romance',rating:4.1,price:13.00,isAudioAvailable:true,pages:498,difficulty:'Beginner'),
  MockBook(id:'275',title:'Percy Jackson and the Lightning Thief',author:'Rick Riordan',description:'A boy discovers he is a demi-god.',genre:'Fantasy',rating:4.7,price:13.00,isAudioAvailable:true,pages:377,difficulty:'Beginner'),
  MockBook(id:'276',title:'The Giver',author:'Lois Lowry',description:'A boy discovers the dark side of his utopian community.',genre:'Sci-Fi',rating:4.6,price:12.00,isAudioAvailable:true,pages:179,difficulty:'Beginner'),
  MockBook(id:'277',title:'Wonder',author:'R.J. Palacio',description:'A boy with facial differences navigates his first year in school.',genre:'Fiction',rating:4.8,price:13.00,isAudioAvailable:true,pages:315,difficulty:'Beginner'),
  MockBook(id:'278',title:'The Maze Runner',author:'James Dashner',description:'A dystopian adventure of boys trapped in a maze.',genre:'Sci-Fi',rating:4.4,price:14.00,isAudioAvailable:true,pages:375,difficulty:'Beginner'),
  MockBook(id:'279',title:'Hatchet',author:'Gary Paulsen',description:'A boy survives alone in the Canadian wilderness.',genre:'Fiction',rating:4.6,price:10.00,isAudioAvailable:true,pages:195,difficulty:'Beginner'),
  MockBook(id:'280',title:'Island of the Blue Dolphins',author:'Scott O\'Dell',description:'A Native American girl survives alone on an island.',genre:'Fiction',rating:4.4,price:10.00,isAudioAvailable:true,pages:184,difficulty:'Beginner'),

  // Science Popular
  MockBook(id:'281',title:'The Elegant Universe',author:'Brian Greene',description:'Superstrings, hidden dimensions, and the quest for the ultimate theory.',genre:'Academic',rating:4.5,price:20.00,isAudioAvailable:true,pages:464,difficulty:'Advanced'),
  MockBook(id:'282',title:'Seven Brief Lessons on Physics',author:'Carlo Rovelli',description:'Physics at its most beautiful.',genre:'Academic',rating:4.6,price:14.00,isAudioAvailable:true,pages:96,difficulty:'Beginner'),
  MockBook(id:'283',title:'The Gene',author:'Siddhartha Mukherjee',description:'An intimate history of humanity\'s genetic blueprint.',genre:'Academic',rating:4.6,price:22.00,isAudioAvailable:true,pages:608,difficulty:'Intermediate'),
  MockBook(id:'284',title:'The Emperor of All Maladies',author:'Siddhartha Mukherjee',description:'A biography of cancer.',genre:'Academic',rating:4.7,price:22.00,isAudioAvailable:true,pages:608,difficulty:'Intermediate'),
  MockBook(id:'285',title:'The Double Helix',author:'James Watson',description:'The discovery of genetic structure.',genre:'Academic',rating:4.3,price:14.00,isAudioAvailable:false,pages:226,difficulty:'Intermediate'),
  MockBook(id:'286',title:'Cosmos',author:'Carl Sagan',description:'A personal voyage through the universe.',genre:'Academic',rating:4.7,price:18.00,isAudioAvailable:true,pages:365,difficulty:'Beginner'),
  MockBook(id:'287',title:'Pale Blue Dot',author:'Carl Sagan',description:'A vision of the human future in space.',genre:'Academic',rating:4.7,price:17.00,isAudioAvailable:true,pages:429,difficulty:'Beginner'),
  MockBook(id:'288',title:'The Selfish Gene',author:'Richard Dawkins',description:'Genes as the unit of selection in evolution.',genre:'Academic',rating:4.5,price:18.00,isAudioAvailable:true,pages:360,difficulty:'Intermediate'),
  MockBook(id:'289',title:'What Is Life?',author:'Erwin Schrödinger',description:'Physics and biology intersect in a profoundly influential lecture.',genre:'Academic',rating:4.4,price:13.00,isAudioAvailable:false,pages:184,difficulty:'Advanced'),
  MockBook(id:'290',title:'The Order of Time',author:'Carlo Rovelli',description:'A physicist explores the nature of time.',genre:'Academic',rating:4.5,price:16.00,isAudioAvailable:true,pages:240,difficulty:'Intermediate'),

  // More Fiction
  MockBook(id:'291',title:'Shantaram',author:'Gregory David Roberts',description:'An escaped Australian convict finds redemption in Bombay\'s underworld.',genre:'Fiction',rating:4.6,price:20.00,isAudioAvailable:true,pages:936,difficulty:'Advanced'),
  MockBook(id:'292',title:'The Shadow of the Wind',author:'Carlos Ruiz Zafón',description:'A post-war Barcelona mystery blending romance and thriller.',genre:'Fiction',rating:4.6,price:16.00,isAudioAvailable:false,pages:487,difficulty:'Intermediate'),
  MockBook(id:'293',title:'Where the Crawdads Sing',author:'Delia Owens',description:'A girl who raised herself in the marshes is accused of murder.',genre:'Fiction',rating:4.7,price:18.00,isAudioAvailable:true,pages:384,difficulty:'Beginner'),
  MockBook(id:'294',title:'The Lincoln Highway',author:'Amor Towles',description:'A cross-country road trip and the bonds of brotherhood.',genre:'Fiction',rating:4.5,price:20.00,isAudioAvailable:true,pages:592,difficulty:'Intermediate'),
  MockBook(id:'295',title:'A Gentleman in Moscow',author:'Amor Towles',description:'A count is sentenced to lifetime house arrest in a luxury hotel.',genre:'Fiction',rating:4.8,price:18.00,isAudioAvailable:true,pages:462,difficulty:'Intermediate'),
  MockBook(id:'296',title:'Pachinko',author:'Min Jin Lee',description:'A multigenerational saga of a Korean family in Japan.',genre:'Fiction',rating:4.7,price:18.00,isAudioAvailable:true,pages:490,difficulty:'Intermediate'),
  MockBook(id:'297',title:'Crying in H Mart',author:'Michelle Zauner',description:'A memoir about loss, grief, and Korean food.',genre:'Biography',rating:4.7,price:18.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'298',title:'The House in the Cerulean Sea',author:'T.J. Klune',description:'A caseworker discovers magical children in a remote location.',genre:'Fantasy',rating:4.7,price:18.00,isAudioAvailable:true,pages:394,difficulty:'Beginner'),
  MockBook(id:'299',title:'Piranesi',author:'Susanna Clarke',description:'A man lives alone in a labyrinthian magical house.',genre:'Fantasy',rating:4.6,price:16.00,isAudioAvailable:true,pages:272,difficulty:'Intermediate'),
  MockBook(id:'300',title:'Mexican Gothic',author:'Silvia Moreno-Garcia',description:'A socialite investigates a mysterious mansion in 1950s Mexico.',genre:'Thriller',rating:4.4,price:16.00,isAudioAvailable:true,pages:301,difficulty:'Intermediate'),

  // More Self-Help / Philosophy
  MockBook(id:'301',title:'The Daily Stoic',author:'Ryan Holiday',description:'366 meditations on wisdom, perseverance, and the art of living.',genre:'Philosophy',rating:4.7,price:20.00,isAudioAvailable:true,pages:416,difficulty:'Beginner'),
  MockBook(id:'302',title:'Ego is the Enemy',author:'Ryan Holiday',description:'The fight to master our own worst enemy.',genre:'Philosophy',rating:4.6,price:18.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'303',title:'The Obstacle is the Way',author:'Ryan Holiday',description:'The timeless art of turning trials into triumph.',genre:'Philosophy',rating:4.7,price:17.00,isAudioAvailable:true,pages:224,difficulty:'Beginner'),
  MockBook(id:'304',title:'Stillness is the Key',author:'Ryan Holiday',description:'An ancient strategy for modern life.',genre:'Philosophy',rating:4.6,price:19.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'305',title:'A Guide to the Good Life',author:'William Irvine',description:'The ancient art of Stoic joy.',genre:'Philosophy',rating:4.6,price:18.00,isAudioAvailable:true,pages:326,difficulty:'Intermediate'),
  MockBook(id:'306',title:'The Courage to Be Disliked',author:'Ichiro Kishimi',description:'The Japanese phenomenon that shows you how to change your life.',genre:'Philosophy',rating:4.6,price:17.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'307',title:'The Lessons of History',author:'Will Durant',description:'Insights from the study of human history.',genre:'Philosophy',rating:4.6,price:14.00,isAudioAvailable:true,pages:160,difficulty:'Intermediate'),
  MockBook(id:'308',title:'The Story of Philosophy',author:'Will Durant',description:'The lives and opinions of the great philosophers.',genre:'Philosophy',rating:4.5,price:18.00,isAudioAvailable:true,pages:412,difficulty:'Intermediate'),
  MockBook(id:'309',title:'How to Think Like a Roman Emperor',author:'Donald Robertson',description:'Stoic wisdom for modern life.',genre:'Philosophy',rating:4.6,price:18.00,isAudioAvailable:true,pages:304,difficulty:'Beginner'),
  MockBook(id:'310',title:'When Breath Becomes Air',author:'Paul Kalanithi',description:'A neurosurgeon faces his own death.',genre:'Biography',rating:4.8,price:17.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),

  // More Technology & Business  
  MockBook(id:'311',title:'Alchemy',author:'Rory Sutherland',description:'The dark art and curious science of creating magic in brands.',genre:'Business',rating:4.4,price:21.00,isAudioAvailable:true,pages:306,difficulty:'Intermediate'),
  MockBook(id:'312',title:'The Everything Store',author:'Brad Stone',description:'Jeff Bezos and the age of Amazon.',genre:'Biography',rating:4.5,price:20.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),
  MockBook(id:'313',title:'Hatching Twitter',author:'Nick Bilton',description:'A true story of money, power, friendship, and betrayal.',genre:'Biography',rating:4.2,price:18.00,isAudioAvailable:true,pages:320,difficulty:'Beginner'),
  MockBook(id:'314',title:'The Founder\'s Dilemmas',author:'Noam Wasserman',description:'Anticipating and avoiding the pitfalls that can sink a startup.',genre:'Business',rating:4.4,price:22.00,isAudioAvailable:false,pages:496,difficulty:'Advanced'),
  MockBook(id:'315',title:'How Google Works',author:'Eric Schmidt',description:'Inside one of the world\'s most innovative companies.',genre:'Business',rating:4.3,price:20.00,isAudioAvailable:true,pages:357,difficulty:'Beginner'),
  MockBook(id:'316',title:'Losing the Signal',author:'Jacquie McNish',description:'The spectacular rise and fall of BlackBerry.',genre:'Biography',rating:4.2,price:18.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),
  MockBook(id:'317',title:'Bad Blood',author:'John Carreyrou',description:'Secrets and lies in a Silicon Valley startup.',genre:'Biography',rating:4.6,price:21.00,isAudioAvailable:true,pages:339,difficulty:'Beginner'),
  MockBook(id:'318',title:'Super Pumped',author:'Mike Isaac',description:'The battle for Uber.',genre:'Biography',rating:4.2,price:20.00,isAudioAvailable:true,pages:368,difficulty:'Beginner'),
  MockBook(id:'319',title:'The Ride of a Lifetime',author:'Robert Iger',description:'Lessons learned from 15 years as CEO of the Walt Disney Company.',genre:'Biography',rating:4.5,price:22.00,isAudioAvailable:true,pages:272,difficulty:'Beginner'),
  MockBook(id:'320',title:'Creativity Inc.',author:'Ed Catmull',description:'An inspiring look at how creativity flourishes at Pixar.',genre:'Biography',rating:4.6,price:20.00,isAudioAvailable:true,pages:368,difficulty:'Beginner'),

  // Indian Authors
  MockBook(id:'321',title:'The Palace of Illusions',author:'Chitra Banerjee Divakaruni',description:'The Mahabharata retold from Draupadi\'s perspective.',genre:'Fiction',rating:4.6,price:15.00,isAudioAvailable:true,pages:360,difficulty:'Beginner'),
  MockBook(id:'322',title:'A Fine Balance',author:'Rohinton Mistry',description:'Four characters in 1970s India navigating profound hardship.',genre:'Fiction',rating:4.7,price:16.00,isAudioAvailable:true,pages:603,difficulty:'Advanced'),
  MockBook(id:'323',title:'The Space Between Us',author:'Thrity Umrigar',description:'A wealthy Parsi woman and her maid in Bombay.',genre:'Fiction',rating:4.4,price:14.00,isAudioAvailable:true,pages:321,difficulty:'Beginner'),
  MockBook(id:'324',title:'English, August',author:'Upamanyu Chatterjee',description:'An IAS officer discovers small-town India.',genre:'Fiction',rating:4.3,price:14.00,isAudioAvailable:false,pages:320,difficulty:'Intermediate'),
  MockBook(id:'325',title:'Five Point Someone',author:'Chetan Bhagat',description:'Three friends at IIT trying to survive.',genre:'Fiction',rating:4.1,price:10.00,isAudioAvailable:false,pages:236,difficulty:'Beginner'),
  MockBook(id:'326',title:'Revolution 2020',author:'Chetan Bhagat',description:'Love, corruption, and ambition in small-town India.',genre:'Fiction',rating:3.9,price:10.00,isAudioAvailable:false,pages:307,difficulty:'Beginner'),
  MockBook(id:'327',title:'The Rozabal Line',author:'Ashwin Sanghi',description:'A thriller weaving Indian history and global conspiracy.',genre:'Thriller',rating:4.2,price:14.00,isAudioAvailable:false,pages:400,difficulty:'Intermediate'),
  MockBook(id:'328',title:'Chanakya\'s Chant',author:'Ashwin Sanghi',description:'Two parallel tales of power — ancient and modern India.',genre:'Thriller',rating:4.4,price:14.00,isAudioAvailable:true,pages:418,difficulty:'Intermediate'),
  MockBook(id:'329',title:'The Oath of the Vayuputras',author:'Amish Tripathi',description:'The final book in the Shiva Trilogy.',genre:'Fantasy',rating:4.4,price:15.00,isAudioAvailable:true,pages:673,difficulty:'Beginner'),
  MockBook(id:'330',title:'Scion of Ikshvaku',author:'Amish Tripathi',description:'Reimagining the life of Lord Ram.',genre:'Fantasy',rating:4.5,price:14.00,isAudioAvailable:true,pages:358,difficulty:'Beginner'),

  // Environment / Nature
  MockBook(id:'331',title:'Silent Spring',author:'Rachel Carson',description:'The book that launched the modern environmental movement.',genre:'Academic',rating:4.6,price:15.00,isAudioAvailable:true,pages:378,difficulty:'Intermediate'),
  MockBook(id:'332',title:'The Hidden Life of Trees',author:'Peter Wohlleben',description:'What trees feel, how they communicate.',genre:'Academic',rating:4.6,price:18.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'333',title:'Braiding Sweetgrass',author:'Robin Wall Kimmerer',description:'Indigenous wisdom, scientific knowledge, and the teachings of plants.',genre:'Academic',rating:4.8,price:20.00,isAudioAvailable:true,pages:528,difficulty:'Intermediate'),
  MockBook(id:'334',title:'The Sixth Extinction',author:'Elizabeth Kolbert',description:'An unnatural history of species loss.',genre:'Academic',rating:4.5,price:18.00,isAudioAvailable:true,pages:319,difficulty:'Intermediate'),
  MockBook(id:'335',title:'The Uninhabitable Earth',author:'David Wallace-Wells',description:'Life after warming.',genre:'Academic',rating:4.3,price:20.00,isAudioAvailable:true,pages:320,difficulty:'Intermediate'),

  // Economics
  MockBook(id:'336',title:'Freakonomics',author:'Steven Levitt',description:'A rogue economist explores the hidden side of everything.',genre:'Finance',rating:4.5,price:16.00,isAudioAvailable:true,pages:336,difficulty:'Beginner'),
  MockBook(id:'337',title:'SuperFreakonomics',author:'Steven Levitt',description:'Global cooling, patriotic prostitutes, and why suicide bombers should buy life insurance.',genre:'Finance',rating:4.3,price:17.00,isAudioAvailable:true,pages:270,difficulty:'Beginner'),
  MockBook(id:'338',title:'The Wealth of Nations',author:'Adam Smith',description:'The foundational text of modern economics.',genre:'Finance',rating:4.4,price:15.00,isAudioAvailable:true,pages:1264,difficulty:'Advanced'),
  MockBook(id:'339',title:'Capitalism and Freedom',author:'Milton Friedman',description:'The role of competitive capitalism in economic freedom.',genre:'Finance',rating:4.4,price:17.00,isAudioAvailable:false,pages:209,difficulty:'Advanced'),
  MockBook(id:'340',title:'Doughnut Economics',author:'Kate Raworth',description:'Seven ways to think like a 21st-century economist.',genre:'Finance',rating:4.4,price:19.00,isAudioAvailable:true,pages:320,difficulty:'Intermediate'),

  // More Biography
  MockBook(id:'341',title:'My Experiments with Truth',author:'Mahatma Gandhi',description:'Gandhi\'s autobiography excerpted.',genre:'Biography',rating:4.7,price:13.00,isAudioAvailable:true,pages:560,difficulty:'Intermediate'),
  MockBook(id:'342',title:'The Diary of a CEO',author:'Steven Bartlett',description:'21 laws for building the life and business you want.',genre:'Biography',rating:4.5,price:22.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),
  MockBook(id:'343',title:'Educated',author:'Tara Westover',description:'A memoir of a girl kept out of school by survivalist parents.',genre:'Biography',rating:4.7,price:18.00,isAudioAvailable:true,pages:334,difficulty:'Beginner'),
  MockBook(id:'344',title:'Glass Castle',author:'Jeannette Walls',description:'A story of a childhood with eccentric, nomadic parents.',genre:'Biography',rating:4.6,price:16.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'345',title:'Wild',author:'Cheryl Strayed',description:'Lost and found on the Pacific Crest Trail.',genre:'Biography',rating:4.5,price:16.00,isAudioAvailable:true,pages:315,difficulty:'Beginner'),
  MockBook(id:'346',title:'The Year of Magical Thinking',author:'Joan Didion',description:'A memoir of grief after the sudden death of a husband.',genre:'Biography',rating:4.5,price:16.00,isAudioAvailable:true,pages:227,difficulty:'Intermediate'),
  MockBook(id:'347',title:'Hillbilly Elegy',author:'J.D. Vance',description:'A memoir of a family and culture in crisis.',genre:'Biography',rating:4.2,price:16.00,isAudioAvailable:true,pages:264,difficulty:'Beginner'),
  MockBook(id:'348',title:'The Woman in Me',author:'Britney Spears',description:'A memoir by the pop icon.',genre:'Biography',rating:4.3,price:22.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'349',title:'My Own Words',author:'Ruth Bader Ginsburg',description:'Reflections from a Supreme Court justice.',genre:'Biography',rating:4.6,price:20.00,isAudioAvailable:true,pages:368,difficulty:'Beginner'),
  MockBook(id:'350',title:'Just Kids',author:'Patti Smith',description:'A memoir of friendship and art in 1960s New York.',genre:'Biography',rating:4.5,price:16.00,isAudioAvailable:true,pages:304,difficulty:'Beginner'),

  // AI / Future
  MockBook(id:'351',title:'Human Compatible',author:'Stuart Russell',description:'Artificial Intelligence and the problem of control.',genre:'Technology',rating:4.5,price:22.00,isAudioAvailable:true,pages:352,difficulty:'Intermediate'),
  MockBook(id:'352',title:'The Age of AI',author:'Henry Kissinger',description:'Man and Machine in a time of transition.',genre:'Technology',rating:4.3,price:24.00,isAudioAvailable:true,pages:272,difficulty:'Intermediate'),
  MockBook(id:'353',title:'AI Superpowers',author:'Kai-Fu Lee',description:'China, Silicon Valley, and the new world order.',genre:'Technology',rating:4.4,price:22.00,isAudioAvailable:true,pages:272,difficulty:'Intermediate'),
  MockBook(id:'354',title:'Deep Learning',author:'Ian Goodfellow',description:'The comprehensive guide to deep learning.',genre:'Technology',rating:4.5,price:45.00,isAudioAvailable:false,pages:800,difficulty:'Advanced'),
  MockBook(id:'355',title:'Machine Learning Yearning',author:'Andrew Ng',description:'Technical strategy for AI engineers.',genre:'Technology',rating:4.5,price:0.00,isAudioAvailable:false,pages:118,difficulty:'Intermediate'),
  MockBook(id:'356',title:'You Look Like a Thing and I Love You',author:'Janelle Shane',description:'How AI works and why it\'s making the world a weirder place.',genre:'Technology',rating:4.4,price:18.00,isAudioAvailable:true,pages:272,difficulty:'Beginner'),
  MockBook(id:'357',title:'The Alignment Problem',author:'Brian Christian',description:'Machine learning and human values.',genre:'Technology',rating:4.5,price:22.00,isAudioAvailable:true,pages:464,difficulty:'Intermediate'),
  MockBook(id:'358',title:'Power and Prediction',author:'Ajay Agrawal',description:'The disruptive economics of artificial intelligence.',genre:'Technology',rating:4.3,price:24.00,isAudioAvailable:false,pages:304,difficulty:'Advanced'),
  MockBook(id:'359',title:'The Coming Wave',author:'Mustafa Suleyman',description:'Technology, power, and the twenty-first century\'s greatest dilemma.',genre:'Technology',rating:4.4,price:26.00,isAudioAvailable:true,pages:320,difficulty:'Intermediate'),
  MockBook(id:'360',title:'Atlas of AI',author:'Kate Crawford',description:'Power, politics, and the planetary costs of artificial intelligence.',genre:'Technology',rating:4.3,price:22.00,isAudioAvailable:false,pages:336,difficulty:'Advanced'),

  // Leadership
  MockBook(id:'361',title:'Extreme Ownership',author:'Jocko Willink',description:'How US Navy SEALs lead and win.',genre:'Business',rating:4.6,price:20.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),
  MockBook(id:'362',title:'Trillion Dollar Coach',author:'Eric Schmidt',description:'The leadership playbook of Silicon Valley\'s Bill Campbell.',genre:'Business',rating:4.5,price:22.00,isAudioAvailable:true,pages:240,difficulty:'Beginner'),
  MockBook(id:'363',title:'The 21 Irrefutable Laws of Leadership',author:'John Maxwell',description:'Follow them and people will follow you.',genre:'Business',rating:4.4,price:18.00,isAudioAvailable:true,pages:336,difficulty:'Beginner'),
  MockBook(id:'364',title:'High Output Management',author:'Andrew Grove',description:'How to manage a team and an organization.',genre:'Business',rating:4.6,price:20.00,isAudioAvailable:false,pages:272,difficulty:'Intermediate'),
  MockBook(id:'365',title:'Drive',author:'Daniel Pink',description:'The surprising truth about what motivates us.',genre:'Business',rating:4.5,price:18.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'366',title:'Radical Candor',author:'Kim Scott',description:'Be a kick-ass boss without losing your humanity.',genre:'Business',rating:4.5,price:20.00,isAudioAvailable:true,pages:272,difficulty:'Beginner'),
  MockBook(id:'367',title:'The Five Dysfunctions of a Team',author:'Patrick Lencioni',description:'A leadership fable about building a cohesive team.',genre:'Business',rating:4.5,price:18.00,isAudioAvailable:true,pages:240,difficulty:'Beginner'),
  MockBook(id:'368',title:'Turn the Ship Around!',author:'L. David Marquet',description:'A true story of turning followers into leaders.',genre:'Business',rating:4.6,price:19.00,isAudioAvailable:true,pages:272,difficulty:'Beginner'),
  MockBook(id:'369',title:'An Elegant Puzzle',author:'Will Larson',description:'Systems of engineering management.',genre:'Technology',rating:4.4,price:22.00,isAudioAvailable:false,pages:288,difficulty:'Intermediate'),
  MockBook(id:'370',title:'The Manager\'s Path',author:'Camille Fournier',description:'A guide for tech leaders navigating growth and change.',genre:'Technology',rating:4.5,price:25.00,isAudioAvailable:false,pages:244,difficulty:'Intermediate'),

  // More Literary Fiction
  MockBook(id:'371',title:'The Old Man and the Sea',author:'Ernest Hemingway',description:'An aging fisherman struggles to catch a giant marlin.',genre:'Fiction',rating:4.5,price:11.00,isAudioAvailable:true,pages:132,difficulty:'Beginner'),
  MockBook(id:'372',title:'East of Eden',author:'John Steinbeck',description:'Two families in the Salinas Valley play out themes of good and evil.',genre:'Fiction',rating:4.7,price:17.00,isAudioAvailable:true,pages:601,difficulty:'Intermediate'),
  MockBook(id:'373',title:'Catch-22',author:'Joseph Heller',description:'A satirical novel set during World War II.',genre:'Fiction',rating:4.5,price:15.00,isAudioAvailable:true,pages:453,difficulty:'Advanced'),
  MockBook(id:'374',title:'The Brothers Karamazov',author:'Fyodor Dostoevsky',description:'A murder mystery, moral philosophy, and spiritual crisis.',genre:'Fiction',rating:4.7,price:16.00,isAudioAvailable:true,pages:824,difficulty:'Advanced'),
  MockBook(id:'375',title:'Ulysses',author:'James Joyce',description:'The odyssey of Leopold Bloom through a single day in Dublin.',genre:'Fiction',rating:4.1,price:16.00,isAudioAvailable:false,pages:732,difficulty:'Advanced'),
  MockBook(id:'376',title:'Invisible Man',author:'Ralph Ellison',description:'An African American man\'s experience of racism.',genre:'Fiction',rating:4.6,price:15.00,isAudioAvailable:true,pages:581,difficulty:'Intermediate'),
  MockBook(id:'377',title:'Their Eyes Were Watching God',author:'Zora Neale Hurston',description:'A woman\'s journey to identity and independence.',genre:'Fiction',rating:4.5,price:14.00,isAudioAvailable:true,pages:256,difficulty:'Intermediate'),
  MockBook(id:'378',title:'Beloved',author:'Toni Morrison',description:'A freed slave is haunted by her baby\'s ghost.',genre:'Fiction',rating:4.6,price:15.00,isAudioAvailable:true,pages:324,difficulty:'Advanced'),
  MockBook(id:'379',title:'Song of Solomon',author:'Toni Morrison',description:'A Black man\'s quest for his identity and heritage.',genre:'Fiction',rating:4.5,price:14.00,isAudioAvailable:true,pages:337,difficulty:'Advanced'),
  MockBook(id:'380',title:'The Color Purple',author:'Alice Walker',description:'Celie\'s story of abuse and liberation in 1930s Georgia.',genre:'Fiction',rating:4.6,price:14.00,isAudioAvailable:true,pages:245,difficulty:'Intermediate'),

  // Graphic Novels / Manga
  MockBook(id:'381',title:'Maus',author:'Art Spiegelman',description:'A Pulitzer Prize-winning Holocaust memoir in graphic novel form.',genre:'Fiction',rating:4.7,price:18.00,isAudioAvailable:false,pages:296,difficulty:'Beginner'),
  MockBook(id:'382',title:'Persepolis',author:'Marjane Satrapi',description:'A girl grows up during the Islamic Revolution in Iran.',genre:'Biography',rating:4.7,price:16.00,isAudioAvailable:false,pages:160,difficulty:'Beginner'),
  MockBook(id:'383',title:'Watchmen',author:'Alan Moore',description:'Superheroes investigate a murder in an alternate America.',genre:'Fantasy',rating:4.6,price:20.00,isAudioAvailable:false,pages:416,difficulty:'Intermediate'),
  MockBook(id:'384',title:'V for Vendetta',author:'Alan Moore',description:'A masked anarchist fights a totalitarian Britain.',genre:'Fantasy',rating:4.6,price:18.00,isAudioAvailable:false,pages:296,difficulty:'Intermediate'),
  MockBook(id:'385',title:'The Complete Calvin and Hobbes',author:'Bill Watterson',description:'The complete collection of the beloved comic strip.',genre:'Fiction',rating:4.9,price:60.00,isAudioAvailable:false,pages:1456,difficulty:'Beginner'),

  // More Academic - Competitive Exams
  MockBook(id:'386',title:'Environment for UPSC',author:'Shankar IAS',description:'Comprehensive environment guide for UPSC Civil Services.',genre:'Academic',rating:4.7,price:18.00,isAudioAvailable:false,pages:400,difficulty:'Advanced'),
  MockBook(id:'387',title:'Spectrum Modern History',author:'Rajiv Ahir',description:'A brief history of modern India.',genre:'Academic',rating:4.8,price:17.00,isAudioAvailable:false,pages:452,difficulty:'Intermediate'),
  MockBook(id:'388',title:'Ancient and Medieval India',author:'Poonam Dalal Dahiya',description:'Comprehensive UPSC guide to Indian history.',genre:'Academic',rating:4.6,price:20.00,isAudioAvailable:false,pages:600,difficulty:'Advanced'),
  MockBook(id:'389',title:'Certificate Physical and Human Geography',author:'G.C. Leong',description:'Standard geography textbook for competitive exams.',genre:'Academic',rating:4.6,price:20.00,isAudioAvailable:false,pages:558,difficulty:'Intermediate'),
  MockBook(id:'390',title:'Oxford School Atlas',author:'Oxford Press',description:'The essential geography reference atlas.',genre:'Academic',rating:4.7,price:25.00,isAudioAvailable:false,pages:320,difficulty:'Beginner'),

  // Cooking / Lifestyle
  MockBook(id:'391',title:'Salt, Fat, Acid, Heat',author:'Samin Nosrat',description:'Mastering the elements of good cooking.',genre:'Health',rating:4.7,price:35.00,isAudioAvailable:true,pages:480,difficulty:'Beginner'),
  MockBook(id:'392',title:'The Joy of Cooking',author:'Irma Rombauer',description:'The definitive American cooking reference.',genre:'Health',rating:4.6,price:40.00,isAudioAvailable:false,pages:1152,difficulty:'Intermediate'),
  MockBook(id:'393',title:'Plenty',author:'Yotam Ottolenghi',description:'A celebrated Israeli chef\'s vegetarian cookbook.',genre:'Health',rating:4.6,price:35.00,isAudioAvailable:false,pages:288,difficulty:'Beginner'),
  MockBook(id:'394',title:'The Life-Changing Magic of Tidying Up',author:'Marie Kondo',description:'The Japanese art of decluttering and organizing.',genre:'Self-Help',rating:4.3,price:16.00,isAudioAvailable:true,pages:226,difficulty:'Beginner'),
  MockBook(id:'395',title:'Hygge',author:'Meik Wiking',description:'The Danish art of happiness.',genre:'Self-Help',rating:4.4,price:18.00,isAudioAvailable:true,pages:224,difficulty:'Beginner'),

  // Parenting & Family
  MockBook(id:'396',title:'The Whole-Brain Child',author:'Daniel Siegel',description:'12 revolutionary strategies to nurture your child\'s developing mind.',genre:'Health',rating:4.6,price:18.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'397',title:'How to Talk So Kids Will Listen',author:'Adele Faber',description:'The classic guide to effective communication with children.',genre:'Health',rating:4.6,price:16.00,isAudioAvailable:true,pages:284,difficulty:'Beginner'),
  MockBook(id:'398',title:'The Coddling of the American Mind',author:'Jonathan Haidt',description:'How good intentions and bad ideas are setting up a generation for failure.',genre:'Academic',rating:4.4,price:20.00,isAudioAvailable:true,pages:352,difficulty:'Intermediate'),
  MockBook(id:'399',title:'Hunt, Gather, Parent',author:'Michaeleen Doucleff',description:'What ancient cultures can teach us about the lost art of raising happy, helpful little humans.',genre:'Health',rating:4.5,price:20.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),
  MockBook(id:'400',title:'Untamed',author:'Glennon Doyle',description:'A memoir about breaking free from expectations.',genre:'Biography',rating:4.6,price:18.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),
];
