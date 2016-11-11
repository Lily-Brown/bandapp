instruments = Instrument.create([
  { instrument_name: "Accordion"},
  { instrument_name: "Acoustic Guitar"},
  { instrument_name: "Background Singer"},
  { instrument_name: "Bagpipes"},
  { instrument_name: "Banjo"},
  { instrument_name: "Bass Guitar"},
  { instrument_name: "Cello"},
  { instrument_name: "Clarinet"},
  { instrument_name: "Didgeridoo"},
  { instrument_name: "DJ"},
  { instrument_name: "Dobro"},
  { instrument_name: "Drums"},
  { instrument_name: "Electronic Music"},
  { instrument_name: "Fiddle"},
  { instrument_name: "Flute"},
  { instrument_name: "Harmonica"},
  { instrument_name: "Harp"},
  { instrument_name: "Kazoo"},
  { instrument_name: "Keyboard"},
  { instrument_name: "Lead Guitar"},
  { instrument_name: "Mandolin"},
  { instrument_name: "Other Percussion"},
  { instrument_name: "Penny Whistle"},
  { instrument_name: "Piano"},
  { instrument_name: "Rhythm Guitar"},
  { instrument_name: "Saxophone"},
  { instrument_name: "Steel guitar"},
  { instrument_name: "Trombone"},
  { instrument_name: "Trumpet"},
  { instrument_name: "Ukulele"},
  { instrument_name: "Upright bass"},
  { instrument_name: "Violin"},
  { instrument_name: "Vocalist"},
  { instrument_name: "Vocalist - Alto"},
  { instrument_name: "Vocalist - Baritone"},
  { instrument_name: "Vocalist - Bass"},
  { instrument_name: "Vocalist - Soprano"},
  { instrument_name: "Vocalist - Tenor"},
])

musicians = Musician.create([
  {
    name: "Rip VanAgain",
    genres: "Rock",
    influences: "Led Zeppelin, Black Sabbath, AC/DC, Santana, etc Jeff Beck, Page, Blackmore",
    bio: "Guitarist playing since High school. Took a hiatus and got back on it in 2012. Mostly doing recording and jams with other musicians. I've played live recently with several bands. One was a full time commitment for about 9 months. I have recording experience both in front of the console and behind it. ",
    zip_code: "94941",
    email: "user1@user.com",
    password: "password",
    practice_frequency: "Every Day",
    gear: "2-Fender Telecasters, Fender Strat, Vox SDC-55 & HDC-77, Vox AC30C2X. Vox AC15C1X amp. Egnater 2x12 cab, Various pedals"
  },
  {
    name: "James Bundie",
    genres: "Rock",
    influences: "Eric Clapton Jimmy Page Peter Frampton Allman Brothers, Bowie, Blackberry Smoke, Joe Bonamassa, Arnie Newman, Aerosmith, Jeff Beck, Black Crows",
    bio: "Currently writing songs in the same genre as Blackberry Smoke, classic rock blues rock. Was Lead guitarist for local Fulleron band Gasoline Addicts.",
    zip_code: "94949",
    email: "user2@user.com",
    password: "password",
    practice_frequency: "Every Day",
    gear: "Lots of guitars, pedals, and amps."
  },
  {
    name: "Mad Dog",
    genres: "Blues",
    influences: "Jeff Buckley, Ann Wilson,Bonnie Raitt, Janis Joplin ,Aretha Franklin, Etta James, Joni Mitchell, Sheryl Crow, Bonnie Raitt, Linda Ronstadt, Grace Slick, , Zeppelin, The Who, Stones, Rush, Eagles,Queen",
    bio: "have been singing and playing in rock bands for over 20 years. All originals in some bands and with others,strictly cover music, mostly Rock and Rockin Blues. Had the pleasure of gigging in many fancy clubs including Ventura Theater opening for major acts, Sunset Strip Clubs like The Roxy, Won an LA county wide contest for anthem singer at Dodger Stadium.",
    zip_code: "94930",
    email: "user3@user.com",
    password: "password",
    practice_frequency: "Every Day",
    gear: "EV N/D 767 mic, TC Helicon Vocal Live Play, assorted percussive tingtinklers, Gemeinhardt flute, Korg T2 keyboard workstation, Yamaha PSR-EW400 portable keyboard, Peavey KB 60 Amp, chords, stands, and Fender Passport small PA"
  },
  {
    name: "Jenny Fromdablock",
    genres: "Hip-hop, Jazz, Funk",
    influences: "Beyonce, Chaka Khan, Whitney Houston",
    bio: "I'm a singer looking for a funk or hip-hop band to join. I have been singing since the age of 4, I have a wide range and a lot of stage presence. ",
    zip_code: "90318",
    email: "user4@user.com",
    password: "password",
    practice_frequency: "1x per week",
    gear: "My own mic and my voice, no PA unfortunately"
  },
  {
    name: "Johnny Cash",
    genres: "Country",
    influences: "Hank Williams, Patsy Cline, Buck Owens",
    bio: "I write country diddy's with attitude. I'm looking for folks to write and perform with, possibly tour. I have a deep, raspy voice and I write some pretty deep lyrics. I also wear black, all the time. I wear the black for the poor and the beaten down, livin' in the hopeless, hungry side of town. I wear it for the prisoner who has long paid for his crime, but is there because he's a victim of the times. I ideally would like to play music with folks who also wear black.",
    zip_code: "92345",
    email: "user5@user.com",
    password: "password",
    practice_frequency: "Every Day",
    gear: "Lots of guitars, mostly acoustic."
  },
  {
    name: "Skrillex",
    genres: "Dubstep, EDM, Trap",
    influences: "Prodigy, Aphex Twin, Marilyn Manson, Nine Inch Nails",
    bio: "I've been playing with electronic music all of my life. I have ideas, all kinds of ideas. I'm looking to bounce ideas off with like-minded people. I hope to create new genres, new ways to experience music. I want to deconstruct and reconstruct. I think music needs to reach the next level and I want to find people to help this become a reality.",
    zip_code: "94930",
    email: "user6@user.com",
    password: "password",
    practice_frequency: "Every Day, all day",
    gear: "a laptop, a brain, and a dream"
  },
  {
    name: "Weird Al",
    genres: "Pop, Satire-Rock",
    influences: "Eastern-European polka bands, Jerry Lewis",
    bio: "I am a fun loving guy who likes to poke fun at the establishment without taking myself too seriously. My instrument of choice is the accordian, but I also like to sing, and even rap sometimes!",
    zip_code: "98987",
    email: "user7@user.com",
    password: "password",
    practice_frequency: "Everyday",
    gear: "My accordian, a great sense of humor, a full set of hair"
  },
  {
    name: "Ziggy Stardust",
    genres: "Glam Rock",
    influences: "T-Rex, Blues",
    bio: "Art party readymade sustainable, plaid vape bespoke heirloom single-origin coffee locavore typewriter. Poutine salvia blue bottle truffaut plaid. Raw denim pitchfork heirloom, sriracha lumbersexual chillwave jean shorts yr photo booth health goth pop-up meggings tilde prism. Craft beer copper mug pour-over chicharrones, freegan polaroid readymade authentic.",
    zip_code: "98987",
    email: "user8@user.com",
    password: "password",
    practice_frequency: "Everyday",
    gear: "itsch narwhal cred, activated charcoal chia enamel pin chillwave snackwave affogato distillery tumblr post-ironic."
  },
  {
    name: "Benny",
    genres: "Pop",
    influences: "music",
    bio: "lyft kale chips kinfolk shabby chic celiac twee tofu viral etsy mlkshk kombucha. Celiac craft beer church-key, pug tbh pabst man bun bespoke literally poke normcore knausgaard. Locavore occupy snackwave, brooklyn raw denim messenger bag cold-pressed tofu VHS offal selvage kitsch sriracha. Mustache kinfolk readymade bushwick",
    zip_code: "98987",
    email: "user9@user.com",
    password: "password",
    practice_frequency: "Everyday",
    gear: "Subway tile wolf vice"
  },
  {
    name: "Gus Polinski",
    genres: "Polka",
    influences: "Eastern-European polka bands, Jerry Lewis",
    bio: "I am a fun loving guy who likes to poke fun at the establishment without taking myself too seriously. My instrument of choice is the accordian, but I also like to sing, and even rap sometimes!",
    zip_code: "98987",
    email: "user10@user.com",
    password: "password",
    practice_frequency: "Everyday",
    gear: "My accordian"
  }
])

Band.create([
  {
    band_name: "The Spiders from Mars",
    genres: "Rock",
    influences: "blues, Mars rock, ",
    bio: "Weird and Gilly, astro galactic punks from Mars in search of a special left handed guitarist",
    zip_code: "94941",
    musician_id: 3,
    practice_frequency: "Every Day",
    gear: "Old PA, space van with a wizard decal on side"
  },
  {
    band_name: "The Jets",
    genres: "Rock, Piano jams",
    influences: "Classical music, show tunes, Lead Belly",
    bio: "Candy and Ronnie, they're weird and wonderful in electric boots and mohair suits. Electric piano rock!",
    zip_code: "94949",
    musician_id: 4,
    practice_frequency: "Every Day",
    gear: "A couple organs, some syntheses, a baby grand."
  },
  {
    band_name: "Twisted Cactus",
    genres: "Tex-Blues",
    influences: "SRV",
    bio: "SRV coverband playing low budget biker rallies.",
    zip_code: "94930",
    musician_id: 5,
    practice_frequency: "Once a month",
    gear: "Fender Passport small PA, Shure 58, a mic stand"
  },
  {
    band_name: "Rose City Rebels",
    genres: "NW hardcore",
    influences: "Fugazi, Black Flag",
    bio: "Fixie intelligentsia sartorial, retro la croix asymmetrical skateboard pop-up. Banh mi swag live-edge mustache, thundercats +1 blog. Try-hard scenester messenger bag farm-to-table synth franzen. Literally skateboard fanny pack meditation pop-up. Yuccie trust fund normcore readymade succulents meditation woke, salvia umami ugh everyday carry 3 wolf moon. Offal bushwick ramps kogi twee skateboard, umami cold-pressed. Crucifix echo park locavore polaroid, keytar kogi readymade.",
    zip_code: "94930",
    musician_id: 5,
    practice_frequency: "Weekly",
    gear: "Mackie PA, 2 Shure 58's, 2 mic stands"
  },
  {
    band_name: "Los Teutonics",
    genres: "German Garage Rock",
    influences: "Meatloaf, david hasselhoff, Roky Erikson",
    bio: "Pug skateboard YOLO neutra, copper mug meggings gluten-free retro mustache. Tbh flannel fap, tousled coloring book pinterest 8-bit flexitarian ugh cornhole shabby chic viral ennui cronut green juice. Bespoke quinoa direct trade hella, lumbersexual fam cornhole craft beer.",
    zip_code: "90210",
    musician_id: 4,
    practice_frequency: "Once a year",
    gear: "PA, Shure 58, a mic stand, bass amp, practice dungeon"
  },
  {
    band_name: "The Jambrahs",
    genres: "unwashed suburban dread raggae",
    influences: "Bob Marley, Jimmy Cliff, Lincoln Park, Limp Bizkit",
    bio: "Pickled vegan farm-to-table williamsburg tbh street art, sartorial kinfolk chambray PBR&B gluten-free irony. Dreamcatcher pug cray activated charcoal. Squid poke vinyl, cornhole mlkshk kickstarter fam biodiesel selfies normcore sriracha bicycle rights hammock gastropub. Ramps chambray skateboard gentrify pickled sustainable tousled twee, banh mi paleo vaporware fap.",
    zip_code: "90210",
    musician_id: 3,
    practice_frequency: "weekly",
    gear: "PA, Shure 58, a mic stand, bass amp, practice dungeon, a couch and refrigerator"
  },
  {
    band_name: "Kenosha Kickers",
    genres: "Perogis, Polka, John Candy",
    influences: "our moms, weird al, the STEELERS, big ben, saurkraut",
    bio: "Pickled vegan farm-to-table williamsburg tbh street art, sartorial kinfolk chambray PBR&B gluten-free irony. Dreamcatcher pug cray activated charcoal. Squid poke vinyl, cornhole mlkshk kickstarter fam biodiesel selfies normcore sriracha bicycle rights hammock gastropub. Ramps chambray skateboard gentrify pickled sustainable tousled twee, banh mi paleo vaporware fap.",
    zip_code: "16078",
    musician_id: 2,
    practice_frequency: "weekly",
    gear: "Fleet of Vintage accordians and high socks"
  }
])

musicians.each.with_index do |musician, index|
  musician.instruments.push(instruments[index])
end

# create members
BandsInstrumentsMusician.create([
  {
    instrument_id: 1,
    band_id: 1,
    musician_id: 1
  }
])

# create openings
BandsInstrumentsMusician.create([
  {
    instrument_id: 1,
    band_id: 7
  },
  {
    instrument_id: 1,
    band_id: 7
  },
  {
    instrument_id: 8,
    band_id: 7
  },
  {
    instrument_id: 25,
    band_id: 1
  },
  {
    instrument_id: 33,
    band_id: 1
  },
  {
    instrument_id: 24,
    band_id: 2
  },
  {
    instrument_id: 12,
    band_id: 3
  },
  {
    instrument_id: 20,
    band_id: 4
  },
  {
    instrument_id: 13,
    band_id: 5
  },
  {
    instrument_id: 33,
    band_id: 6
  },
  {
    instrument_id: 9,
    band_id: 6
  }
])
