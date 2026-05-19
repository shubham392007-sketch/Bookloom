import 'mock_database.dart';

// ── Books 401–550 ─────────────────────────────────────────────────────────────
const List<MockBook> booksPartC = [
  // Spirituality & Yoga
  MockBook(id:'401',title:'Light on Yoga',author:'B.K.S. Iyengar',description:'The bible of modern yoga practice.',genre:'Health',rating:4.8,price:35.00,isAudioAvailable:false,pages:544,difficulty:'Intermediate'),
  MockBook(id:'402',title:'The Yoga Sutras of Patanjali',author:'Sri Swami Satchidananda',description:'Commentary on the foundational text of classical yoga.',genre:'Philosophy',rating:4.7,price:15.00,isAudioAvailable:false,pages:232,difficulty:'Advanced'),
  MockBook(id:'403',title:'Be Here Now',author:'Ram Dass',description:'Eastern spirituality meets Western minds.',genre:'Philosophy',rating:4.7,price:18.00,isAudioAvailable:false,pages:416,difficulty:'Beginner'),
  MockBook(id:'404',title:'The Tao Te Ching',author:'Lao Tzu',description:'Ancient Chinese philosophy on the way of life.',genre:'Philosophy',rating:4.7,price:10.00,isAudioAvailable:true,pages:112,difficulty:'Intermediate'),
  MockBook(id:'405',title:'The Book of Joy',author:'Dalai Lama & Desmond Tutu',description:'Two icons share their wisdom for lasting happiness.',genre:'Philosophy',rating:4.8,price:20.00,isAudioAvailable:true,pages:368,difficulty:'Beginner'),
  MockBook(id:'406',title:'Wherever You Go, There You Are',author:'Jon Kabat-Zinn',description:'Mindfulness meditation in everyday life.',genre:'Philosophy',rating:4.5,price:16.00,isAudioAvailable:true,pages:278,difficulty:'Beginner'),
  MockBook(id:'407',title:'The Art of Happiness',author:'Dalai Lama',description:'A handbook for living.',genre:'Philosophy',rating:4.6,price:17.00,isAudioAvailable:true,pages:322,difficulty:'Beginner'),
  MockBook(id:'408',title:'In My Own Words',author:'Dalai Lama',description:'Reflections on the nature of mind and reality.',genre:'Philosophy',rating:4.5,price:16.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'409',title:'The Prophet',author:'Kahlil Gibran',description:'Prose poetry on life, love, and the divine.',genre:'Philosophy',rating:4.7,price:12.00,isAudioAvailable:true,pages:127,difficulty:'Beginner'),
  MockBook(id:'410',title:'I Am That',author:'Nisargadatta Maharaj',description:'Conversations with a Bombay sage on Advaita Vedanta.',genre:'Philosophy',rating:4.8,price:18.00,isAudioAvailable:false,pages:544,difficulty:'Advanced'),

  // Sociology & Culture
  MockBook(id:'411',title:'Bowling Alone',author:'Robert Putnam',description:'The collapse and revival of American community.',genre:'Academic',rating:4.4,price:20.00,isAudioAvailable:false,pages:544,difficulty:'Advanced'),
  MockBook(id:'412',title:'The Righteous Mind',author:'Jonathan Haidt',description:'Why good people are divided by politics and religion.',genre:'Academic',rating:4.5,price:20.00,isAudioAvailable:true,pages:419,difficulty:'Intermediate'),
  MockBook(id:'413',title:'Factfulness',author:'Hans Rosling',description:'Ten reasons we\'re wrong about the world.',genre:'Academic',rating:4.7,price:20.00,isAudioAvailable:true,pages:342,difficulty:'Beginner'),
  MockBook(id:'414',title:'The Culture Map',author:'Erin Meyer',description:'Breaking through the invisible boundaries of global business.',genre:'Business',rating:4.6,price:20.00,isAudioAvailable:true,pages:290,difficulty:'Intermediate'),
  MockBook(id:'415',title:'Tribe',author:'Sebastian Junger',description:'On homecoming and belonging.',genre:'Academic',rating:4.5,price:16.00,isAudioAvailable:true,pages:171,difficulty:'Beginner'),
  MockBook(id:'416',title:'The Anatomy of Fascism',author:'Robert Paxton',description:'A scholarly examination of fascism through history.',genre:'Academic',rating:4.5,price:19.00,isAudioAvailable:false,pages:321,difficulty:'Advanced'),
  MockBook(id:'417',title:'White Fragility',author:'Robin DiAngelo',description:'Why it\'s so hard for white people to talk about racism.',genre:'Academic',rating:4.1,price:18.00,isAudioAvailable:true,pages:192,difficulty:'Beginner'),
  MockBook(id:'418',title:'The New Jim Crow',author:'Michelle Alexander',description:'Mass incarceration in the age of colorblindness.',genre:'Academic',rating:4.7,price:19.00,isAudioAvailable:true,pages:290,difficulty:'Intermediate'),
  MockBook(id:'419',title:'The End of Poverty',author:'Jeffrey Sachs',description:'Economic possibilities for our time.',genre:'Finance',rating:4.3,price:20.00,isAudioAvailable:true,pages:448,difficulty:'Advanced'),
  MockBook(id:'420',title:'Why Nations Fail',author:'Daron Acemoglu',description:'The origins of power, prosperity, and poverty.',genre:'Finance',rating:4.6,price:22.00,isAudioAvailable:true,pages:544,difficulty:'Advanced'),

  // More Self-Development
  MockBook(id:'421',title:'The 48 Laws of Power',author:'Robert Greene',description:'The definitive guide to power, authority, and domination.',genre:'Self-Help',rating:4.5,price:22.00,isAudioAvailable:true,pages:452,difficulty:'Intermediate'),
  MockBook(id:'422',title:'Mastery',author:'Robert Greene',description:'How to become a master in whatever you pursue.',genre:'Self-Help',rating:4.5,price:22.00,isAudioAvailable:true,pages:352,difficulty:'Intermediate'),
  MockBook(id:'423',title:'The Laws of Human Nature',author:'Robert Greene',description:'Understanding people\'s drives, motivations, and behaviors.',genre:'Self-Help',rating:4.4,price:22.00,isAudioAvailable:true,pages:624,difficulty:'Intermediate'),
  MockBook(id:'424',title:'Man\'s Search for Ultimate Meaning',author:'Viktor Frankl',description:'A psychologist searches for the meaning of human existence.',genre:'Philosophy',rating:4.6,price:15.00,isAudioAvailable:true,pages:191,difficulty:'Intermediate'),
  MockBook(id:'425',title:'The Road Less Traveled',author:'M. Scott Peck',description:'A new psychology of love, traditional values, and spiritual growth.',genre:'Self-Help',rating:4.5,price:15.00,isAudioAvailable:true,pages:315,difficulty:'Beginner'),
  MockBook(id:'426',title:'Boundaries',author:'Henry Cloud',description:'When to say yes, how to say no.',genre:'Self-Help',rating:4.6,price:17.00,isAudioAvailable:true,pages:320,difficulty:'Beginner'),
  MockBook(id:'427',title:'Co-Dependent No More',author:'Melody Beattie',description:'How to stop controlling others and start caring for yourself.',genre:'Self-Help',rating:4.5,price:16.00,isAudioAvailable:true,pages:251,difficulty:'Beginner'),
  MockBook(id:'428',title:'The Body Keeps the Score',author:'Bessel van der Kolk',description:'Brain, mind, and body in the healing of trauma.',genre:'Health',rating:4.8,price:22.00,isAudioAvailable:true,pages:464,difficulty:'Intermediate'),
  MockBook(id:'429',title:'The Highly Sensitive Person',author:'Elaine Aron',description:'How to thrive when the world overwhelms you.',genre:'Self-Help',rating:4.5,price:16.00,isAudioAvailable:true,pages:251,difficulty:'Beginner'),
  MockBook(id:'430',title:'Adult Children of Emotionally Immature Parents',author:'Lindsay Gibson',description:'How to heal from distant, rejecting, or self-involved parents.',genre:'Self-Help',rating:4.7,price:17.00,isAudioAvailable:true,pages:216,difficulty:'Beginner'),

  // More Fiction
  MockBook(id:'431',title:'The Secret Garden',author:'Frances Hodgson Burnett',description:'A girl discovers a hidden garden that heals her and those around her.',genre:'Fiction',rating:4.6,price:11.00,isAudioAvailable:true,pages:331,difficulty:'Beginner'),
  MockBook(id:'432',title:'Little Women',author:'Louisa May Alcott',description:'Four sisters grow up during the Civil War era.',genre:'Fiction',rating:4.6,price:13.00,isAudioAvailable:true,pages:557,difficulty:'Beginner'),
  MockBook(id:'433',title:'Jane Eyre',author:'Charlotte Brontë',description:'An orphan girl becomes a governess and falls in love.',genre:'Fiction',rating:4.7,price:12.00,isAudioAvailable:true,pages:648,difficulty:'Intermediate'),
  MockBook(id:'434',title:'Wuthering Heights',author:'Emily Brontë',description:'A passionate and doomed love story on the Yorkshire moors.',genre:'Fiction',rating:4.4,price:11.00,isAudioAvailable:true,pages:464,difficulty:'Intermediate'),
  MockBook(id:'435',title:'War and Peace',author:'Leo Tolstoy',description:'Napoleon\'s invasion of Russia through multiple family stories.',genre:'Fiction',rating:4.7,price:18.00,isAudioAvailable:true,pages:1392,difficulty:'Advanced'),
  MockBook(id:'436',title:'Don Quixote',author:'Miguel de Cervantes',description:'The adventures of a self-styled knight-errant.',genre:'Fiction',rating:4.5,price:14.00,isAudioAvailable:true,pages:992,difficulty:'Advanced'),
  MockBook(id:'437',title:'Les Misérables',author:'Victor Hugo',description:'A convict and inspector in revolutionary France.',genre:'Fiction',rating:4.7,price:15.00,isAudioAvailable:true,pages:1463,difficulty:'Advanced'),
  MockBook(id:'438',title:'The Count of Monte Cristo',author:'Alexandre Dumas',description:'A man wrongly imprisoned returns to exact revenge.',genre:'Fiction',rating:4.8,price:15.00,isAudioAvailable:true,pages:1276,difficulty:'Intermediate'),
  MockBook(id:'439',title:'Dracula',author:'Bram Stoker',description:'The original vampire novel in epistolary format.',genre:'Thriller',rating:4.5,price:12.00,isAudioAvailable:true,pages:418,difficulty:'Intermediate'),
  MockBook(id:'440',title:'Frankenstein',author:'Mary Shelley',description:'A scientist creates a living creature with horrifying results.',genre:'Sci-Fi',rating:4.5,price:11.00,isAudioAvailable:true,pages:280,difficulty:'Intermediate'),

  // Poetry
  MockBook(id:'441',title:'Milk and Honey',author:'Rupi Kaur',description:'A collection of poetry about survival.',genre:'Fiction',rating:4.3,price:15.00,isAudioAvailable:true,pages:208,difficulty:'Beginner'),
  MockBook(id:'442',title:'The Sun and Her Flowers',author:'Rupi Kaur',description:'A journey of wilting, falling, rooting, rising, and blooming.',genre:'Fiction',rating:4.3,price:15.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'443',title:'Leaves of Grass',author:'Walt Whitman',description:'A landmark collection of American poetry.',genre:'Fiction',rating:4.5,price:12.00,isAudioAvailable:true,pages:458,difficulty:'Advanced'),
  MockBook(id:'444',title:'Ariel',author:'Sylvia Plath',description:'Confessional poetry of raw emotional power.',genre:'Fiction',rating:4.4,price:12.00,isAudioAvailable:false,pages:99,difficulty:'Advanced'),
  MockBook(id:'445',title:'The Complete Poems of Emily Dickinson',author:'Emily Dickinson',description:'The full body of work of a reclusive genius.',genre:'Fiction',rating:4.7,price:14.00,isAudioAvailable:false,pages:770,difficulty:'Intermediate'),

  // Indian Mythology / Fiction
  MockBook(id:'446',title:'The Immortals of Meluha',author:'Amish Tripathi',description:'The story of Shiva — a warrior chief who becomes a god.',genre:'Fantasy',rating:4.6,price:13.00,isAudioAvailable:true,pages:412,difficulty:'Beginner'),
  MockBook(id:'447',title:'The Secret of the Nagas',author:'Amish Tripathi',description:'Shiva continues his quest in ancient India.',genre:'Fantasy',rating:4.5,price:13.00,isAudioAvailable:true,pages:395,difficulty:'Beginner'),
  MockBook(id:'448',title:'Ram: Scion of Ikshvaku',author:'Amish Tripathi',description:'The reimagining of Ram as a leader in ancient India.',genre:'Fantasy',rating:4.5,price:14.00,isAudioAvailable:true,pages:358,difficulty:'Beginner'),
  MockBook(id:'449',title:'Ajaya: Roll of the Dice',author:'Anand Neelakantan',description:'The Mahabharata war from Duryodhana\'s perspective.',genre:'Fantasy',rating:4.5,price:15.00,isAudioAvailable:false,pages:418,difficulty:'Intermediate'),
  MockBook(id:'450',title:'Asura: Tale of the Vanquished',author:'Anand Neelakantan',description:'The story of Ravana told from his point of view.',genre:'Fantasy',rating:4.4,price:14.00,isAudioAvailable:false,pages:420,difficulty:'Intermediate'),
  MockBook(id:'451',title:'Mrityunjaya',author:'Shivaji Sawant',description:'The life story of Karna from the Mahabharata.',genre:'Fiction',rating:4.7,price:16.00,isAudioAvailable:false,pages:530,difficulty:'Intermediate'),
  MockBook(id:'452',title:'The Krishna Key',author:'Ashwin Sanghi',description:'A thriller centered around the legend of Krishna.',genre:'Thriller',rating:4.3,price:14.00,isAudioAvailable:false,pages:400,difficulty:'Intermediate'),
  MockBook(id:'453',title:'The Lost River: On the Trail of the Sarasvati',author:'Michel Danino',description:'A historically rich account of an ancient Indian river.',genre:'History',rating:4.4,price:20.00,isAudioAvailable:false,pages:400,difficulty:'Intermediate'),
  MockBook(id:'454',title:'The Argumentative Indian',author:'Amartya Sen',description:'Writings on Indian history, culture, and identity.',genre:'History',rating:4.5,price:18.00,isAudioAvailable:false,pages:409,difficulty:'Advanced'),
  MockBook(id:'455',title:'Discovery of India',author:'Jawaharlal Nehru',description:'Nehru\'s historical account of India\'s rich civilizational heritage.',genre:'History',rating:4.7,price:18.00,isAudioAvailable:false,pages:576,difficulty:'Advanced'),

  // More Finance
  MockBook(id:'456',title:'The Bogleheads\' Guide to Investing',author:'Taylor Larimore',description:'A straightforward guide to smart investing.',genre:'Finance',rating:4.6,price:18.00,isAudioAvailable:true,pages:336,difficulty:'Beginner'),
  MockBook(id:'457',title:'Set for Life',author:'Scott Trench',description:'Dominate life, money, and the American dream.',genre:'Finance',rating:4.4,price:20.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'458',title:'Early Retirement Extreme',author:'Jacob Lund Fisker',description:'A philosophical and practical guide to financial independence.',genre:'Finance',rating:4.3,price:18.00,isAudioAvailable:false,pages:233,difficulty:'Intermediate'),
  MockBook(id:'459',title:'Your Money or Your Life',author:'Vicki Robin',description:'9 steps to transforming your relationship with money.',genre:'Finance',rating:4.5,price:17.00,isAudioAvailable:true,pages:368,difficulty:'Beginner'),
  MockBook(id:'460',title:'The Simple Path to Wealth',author:'JL Collins',description:'Your road map to financial independence.',genre:'Finance',rating:4.7,price:18.00,isAudioAvailable:true,pages:286,difficulty:'Beginner'),

  // More Academic
  MockBook(id:'461',title:'Made to Stick',author:'Chip Heath',description:'Why some ideas survive and others die.',genre:'Business',rating:4.5,price:18.00,isAudioAvailable:true,pages:291,difficulty:'Beginner'),
  MockBook(id:'462',title:'Switch',author:'Chip Heath',description:'How to change things when change is hard.',genre:'Business',rating:4.4,price:18.00,isAudioAvailable:true,pages:320,difficulty:'Beginner'),
  MockBook(id:'463',title:'The Art of Thinking Clearly',author:'Rolf Dobelli',description:'99 ways that humans think irrationally.',genre:'Academic',rating:4.4,price:19.00,isAudioAvailable:true,pages:384,difficulty:'Beginner'),
  MockBook(id:'464',title:'Predictably Irrational',author:'Dan Ariely',description:'The hidden forces that shape our decisions.',genre:'Academic',rating:4.4,price:18.00,isAudioAvailable:true,pages:304,difficulty:'Beginner'),
  MockBook(id:'465',title:'Nudge',author:'Richard Thaler',description:'Improving decisions about health, wealth, and happiness.',genre:'Academic',rating:4.4,price:18.00,isAudioAvailable:true,pages:312,difficulty:'Intermediate'),
  MockBook(id:'466',title:'The Paradox of Choice',author:'Barry Schwartz',description:'Why more is less.',genre:'Academic',rating:4.3,price:17.00,isAudioAvailable:true,pages:265,difficulty:'Beginner'),
  MockBook(id:'467',title:'Thinking in Systems',author:'Donella Meadows',description:'A primer on systems thinking.',genre:'Academic',rating:4.5,price:20.00,isAudioAvailable:true,pages:240,difficulty:'Intermediate'),
  MockBook(id:'468',title:'The Innovator\'s Solution',author:'Clayton Christensen',description:'Creating and sustaining successful growth.',genre:'Business',rating:4.4,price:22.00,isAudioAvailable:false,pages:304,difficulty:'Intermediate'),
  MockBook(id:'469',title:'The Personal MBA',author:'Josh Kaufman',description:'Master the art of business.',genre:'Business',rating:4.4,price:20.00,isAudioAvailable:true,pages:464,difficulty:'Beginner'),
  MockBook(id:'470',title:'The McKinsey Way',author:'Ethan Rasiel',description:'Using the techniques of the world\'s top management consultants.',genre:'Business',rating:4.3,price:20.00,isAudioAvailable:false,pages:208,difficulty:'Intermediate'),

  // Sports & Achievement
  MockBook(id:'471',title:'The Mamba Mentality',author:'Kobe Bryant',description:'How Kobe Bryant approached the game of basketball.',genre:'Biography',rating:4.7,price:28.00,isAudioAvailable:false,pages:208,difficulty:'Beginner'),
  MockBook(id:'472',title:'Playing to Win',author:'Roger Martin',description:'How strategy really works.',genre:'Business',rating:4.4,price:20.00,isAudioAvailable:false,pages:288,difficulty:'Intermediate'),
  MockBook(id:'473',title:'The Champion\'s Mind',author:'Jim Afremow',description:'How great athletes think, train, and thrive.',genre:'Self-Help',rating:4.4,price:17.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'474',title:'Relentless',author:'Tim Grover',description:'From good to great to unstoppable.',genre:'Self-Help',rating:4.5,price:20.00,isAudioAvailable:true,pages:240,difficulty:'Beginner'),
  MockBook(id:'475',title:'Mind Gym',author:'Gary Mack',description:'An athlete\'s guide to inner excellence.',genre:'Self-Help',rating:4.4,price:16.00,isAudioAvailable:true,pages:224,difficulty:'Beginner'),
  MockBook(id:'476',title:'The Inner Game of Tennis',author:'W. Timothy Gallwey',description:'The classic guide to the mental side of peak performance.',genre:'Self-Help',rating:4.5,price:16.00,isAudioAvailable:true,pages:127,difficulty:'Beginner'),
  MockBook(id:'477',title:'Sacred Hoops',author:'Phil Jackson',description:'Spiritual lessons of a hardwood warrior.',genre:'Biography',rating:4.5,price:17.00,isAudioAvailable:true,pages:228,difficulty:'Beginner'),
  MockBook(id:'478',title:'The Score Takes Care of Itself',author:'Bill Walsh',description:'My philosophy of leadership.',genre:'Biography',rating:4.6,price:18.00,isAudioAvailable:true,pages:257,difficulty:'Beginner'),
  MockBook(id:'479',title:'Every Breath',author:'Nicholas Sparks',description:'A love story for the ages.',genre:'Romance',rating:4.5,price:16.00,isAudioAvailable:true,pages:304,difficulty:'Beginner'),
  MockBook(id:'480',title:'Untamed',author:'Glennon Doyle',description:'A journey of breaking free from expected roles.',genre:'Biography',rating:4.5,price:18.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),

  // Parenting Extended
  MockBook(id:'481',title:'Raising Good Humans',author:'Hunter Clarke-Fields',description:'A mindful guide to breaking the cycle of reactive parenting.',genre:'Health',rating:4.6,price:18.00,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
  MockBook(id:'482',title:'No-Drama Discipline',author:'Daniel Siegel',description:'The whole-brain way to calm the chaos.',genre:'Health',rating:4.5,price:18.00,isAudioAvailable:true,pages:288,difficulty:'Beginner'),
  MockBook(id:'483',title:'The Montessori Toddler',author:'Simone Davies',description:'A parent\'s guide to raising a curious and responsible human being.',genre:'Health',rating:4.6,price:20.00,isAudioAvailable:false,pages:256,difficulty:'Beginner'),

  // More Indian Titles
  MockBook(id:'484',title:'Sacred Games',author:'Vikram Chandra',description:'Mumbai underworld, police, and politics in a sprawling epic.',genre:'Thriller',rating:4.5,price:20.00,isAudioAvailable:false,pages:900,difficulty:'Advanced'),
  MockBook(id:'485',title:'Q&A',author:'Vikas Swarup',description:'The book that became Slumdog Millionaire.',genre:'Fiction',rating:4.4,price:14.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),
  MockBook(id:'486',title:'The Space Between Words',author:'Khushwant Singh',description:'Provocative short stories from a legendary Indian author.',genre:'Fiction',rating:4.3,price:12.00,isAudioAvailable:false,pages:252,difficulty:'Intermediate'),
  MockBook(id:'487',title:'A Suitable Boy',author:'Vikram Seth',description:'A mother searches for a suitable husband for her daughter in post-independence India.',genre:'Fiction',rating:4.5,price:22.00,isAudioAvailable:true,pages:1349,difficulty:'Advanced'),
  MockBook(id:'488',title:'Two States',author:'Chetan Bhagat',description:'A boy and girl from opposite ends of India fall in love.',genre:'Fiction',rating:4.1,price:10.00,isAudioAvailable:false,pages:272,difficulty:'Beginner'),
  MockBook(id:'489',title:'The Rozabal Line',author:'Ashwin Sanghi',description:'A thriller of extraordinary scope woven from Indian history.',genre:'Thriller',rating:4.2,price:14.00,isAudioAvailable:false,pages:400,difficulty:'Intermediate'),
  MockBook(id:'490',title:'The Last Song of Dusk',author:'Siddharth Dhanvant Shanghvi',description:'A lyrical and magical love story set in 1920s India.',genre:'Fiction',rating:4.2,price:14.00,isAudioAvailable:false,pages:272,difficulty:'Intermediate'),

  // Final Set - Across Genres
  MockBook(id:'491',title:'The Sympathizer',author:'Viet Thanh Nguyen',description:'A spy and communist writes his story to his commandant.',genre:'Fiction',rating:4.4,price:17.00,isAudioAvailable:true,pages:371,difficulty:'Advanced'),
  MockBook(id:'492',title:'Lincoln in the Bardo',author:'George Saunders',description:'A night in the cemetery with Abraham Lincoln and ghosts.',genre:'Fiction',rating:4.2,price:18.00,isAudioAvailable:true,pages:343,difficulty:'Advanced'),
  MockBook(id:'493',title:'The Ministry for the Future',author:'Kim Stanley Robinson',description:'A near-future vision of climate change solutions.',genre:'Sci-Fi',rating:4.4,price:20.00,isAudioAvailable:true,pages:563,difficulty:'Advanced'),
  MockBook(id:'494',title:'A Memory Called Empire',author:'Arkady Martine',description:'An ambassador defends her home from annexation by a galactic empire.',genre:'Sci-Fi',rating:4.5,price:18.00,isAudioAvailable:true,pages:462,difficulty:'Intermediate'),
  MockBook(id:'495',title:'Network Effect',author:'Martha Wells',description:'A Murderbot mystery — the first novel in the series.',genre:'Sci-Fi',rating:4.6,price:16.00,isAudioAvailable:true,pages:352,difficulty:'Beginner'),
  MockBook(id:'496',title:'Legends & Lattes',author:'Travis Baldree',description:'A retired orc warrior opens a coffee shop.',genre:'Fantasy',rating:4.6,price:16.00,isAudioAvailable:true,pages:304,difficulty:'Beginner'),
  MockBook(id:'497',title:'Travis Baldree',author:'A Witch\'s Guide to Escape',description:'A cosy witchy librarian tale.',genre:'Fantasy',rating:4.4,price:14.00,isAudioAvailable:false,pages:312,difficulty:'Beginner'),
  MockBook(id:'498',title:'Remarkably Bright Creatures',author:'Shelby Van Pelt',description:'A widow and an octopus form an unlikely friendship.',genre:'Fiction',rating:4.5,price:18.00,isAudioAvailable:true,pages:360,difficulty:'Beginner'),
  MockBook(id:'499',title:'Tomorrow, and Tomorrow, and Tomorrow',author:'Gabrielle Zevin',description:'Two friends collaborate making video games across decades.',genre:'Fiction',rating:4.6,price:20.00,isAudioAvailable:true,pages:496,difficulty:'Intermediate'),
  MockBook(id:'500',title:'Trust',author:'Hernan Diaz',description:'Four interlocking narratives about wealth and power in 20th-century America.',genre:'Fiction',rating:4.4,price:19.00,isAudioAvailable:true,pages:418,difficulty:'Advanced'),
  MockBook(id:'501',title:'Horse',author:'Geraldine Brooks',description:'The story of a remarkable horse and those whose lives he shaped.',genre:'Fiction',rating:4.4,price:19.00,isAudioAvailable:true,pages:464,difficulty:'Intermediate'),
  MockBook(id:'502',title:'The Bee Sting',author:'Paul Murray',description:'A darkly comic novel of family dysfunction in Ireland.',genre:'Fiction',rating:4.4,price:20.00,isAudioAvailable:true,pages:640,difficulty:'Advanced'),
  MockBook(id:'503',title:'All the Light We Cannot See',author:'Anthony Doerr',description:'A blind French girl and a German boy survive WWII.',genre:'Fiction',rating:4.7,price:18.00,isAudioAvailable:true,pages:531,difficulty:'Intermediate'),
  MockBook(id:'504',title:'The Invisible Life of Addie LaRue',author:'V.E. Schwab',description:'A woman is cursed to be forgotten by everyone she meets.',genre:'Fantasy',rating:4.6,price:18.00,isAudioAvailable:true,pages:448,difficulty:'Beginner'),
  MockBook(id:'505',title:'Babel',author:'R.F. Kuang',description:'A dark academia Oxford fantasy about translation and colonialism.',genre:'Fantasy',rating:4.5,price:20.00,isAudioAvailable:true,pages:545,difficulty:'Advanced'),
  MockBook(id:'506',title:'The Atlas Six',author:'Olivie Blake',description:'Six magicians compete to join a secret society.',genre:'Fantasy',rating:4.2,price:18.00,isAudioAvailable:true,pages:411,difficulty:'Intermediate'),
  MockBook(id:'507',title:'In Other Lands',author:'Sarah Rees Brennan',description:'A snarky boy goes to a magical world and questions its logic.',genre:'Fantasy',rating:4.4,price:16.00,isAudioAvailable:false,pages:432,difficulty:'Beginner'),
  MockBook(id:'508',title:'A Little Life',author:'Hanya Yanagihara',description:'Four friends navigate tragedy and survival in New York.',genre:'Fiction',rating:4.5,price:20.00,isAudioAvailable:true,pages:720,difficulty:'Advanced'),
  MockBook(id:'509',title:'Normal People',author:'Sally Rooney',description:'Two young Irish people navigate a complex relationship.',genre:'Fiction',rating:4.2,price:15.00,isAudioAvailable:true,pages:273,difficulty:'Beginner'),
  MockBook(id:'510',title:'Beautiful World, Where Are You',author:'Sally Rooney',description:'Two women navigate love, work, and friendship.',genre:'Fiction',rating:4.1,price:16.00,isAudioAvailable:true,pages:352,difficulty:'Intermediate'),
];
