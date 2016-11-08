Instrument.create([
  { instrument_name: "Accordion"},
  { instrument_name: "Acoustic Guitar"},
  { instrument_name: "Background Singer"},
  { instrument_name: "Bagpipes"},
  { instrument_name: "Banjo"},
  { instrument_name: "Bass Guitar"},
  { instrument_name: "Cello"},
  { instrument_name: "Clarinet"},
  { instrument_name: "DJ"},
  { instrument_name: "Dobro"},
  { instrument_name: "Drums"},
  { instrument_name: "Electronic Music"},
  { instrument_name: "Fiddle"},
  { instrument_name: "Flute"},
  { instrument_name: "Harmonica"},
  { instrument_name: "Harp"},
  { instrument_name: "Keyboard"},
  { instrument_name: "Lead Guitar"},
  { instrument_name: "Mandolin"},
  { instrument_name: "Other Percussion"},
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
  { instrument_name: "Kazoo"},
  { instrument_name: "Didgeridoo"},
  { instrument_name: "Penny Whiste"}
])

Musician.create([
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
