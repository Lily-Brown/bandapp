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
  { instrument_name: "Vocalist - Tenor"}
])

Musician.create([
              {
                name: "User 1", genre: "Rock", influences: "Led Zeppelin, Black Sabbath, AC/DC, Santana, etc Jeff Beck, Page, Blackmore", bio: "Guitarist playing since High school. Took a hiatus and got back on it in 2012. Mostly doing recording and jams with other musicians. I've played live recently with several bands. One was a full time commitment for about 9 months. I have recording experience both in front of the console and behind it. ", zip_code: "94941", image: "http://cdn.bandmix.com/bandmix_us/media/545/545530/1253249-p.jpg", audio_clip: "", email: "user1@user.com", practice_frequency: "Every Day", gear: "2-Fender Telecasters, Fender Strat, Vox SDC-55 & HDC-77, Vox AC30C2X. Vox AC15C1X amp. Egnater 2x12 cab, Various pedals"
              },
              {
                name: "User 2", genre: "Rock", influences: "Eric Clapton Jimmy Page Peter Frampton Allman Brothers, Bowie, Blackberry Smoke, Joe Bonamassa, Arnie Newman, Aerosmith, Jeff Beck, Black Crows", bio: "Currently writing songs in the same genre as Blackberry Smoke, classic rock blues rock. Was Lead guitarist for local Fulleron band Gasoline Addicts.", zip_code: "94949", image: "http://cdn.bandmix.com/bandmix_us/media/1132/1132321/1292376-p.jpg", audio_clip: "", email: "user2@user.com", practice_frequency: "Every Day", gear: "Lots of guitars, pedals, and amps."
              },
              {
                name: "User 3", genre: "Blues", influences: "Jeff Buckley, Ann Wilson,Bonnie Raitt, Janis Joplin ,Aretha Franklin, Etta James, Joni Mitchell, Sheryl Crow, Bonnie Raitt, Linda Ronstadt, Grace Slick, , Zeppelin, The Who, Stones, Rush, Eagles,Queen", bio: "have been singing and playing in rock bands for over 20 years. All originals in some bands and with others,strictly cover music, mostly Rock and Rockin Blues. Had the pleasure of gigging in many fancy clubs including Ventura Theater opening for major acts, Sunset Strip Clubs like The Roxy, Won an LA county wide contest for anthem singer at Dodger Stadium.", zip_code: "94930", image: "http://cdn.bandmix.com/bandmix_us/media/512/512079/1242185-p.jpg", audio_clip: "", email: "user3@user.com", practice_frequency: "Every Day", gear: "EV N/D 767 mic, TC Helicon Vocal Live Play, assorted percussive tingtinklers, Gemeinhardt flute, Korg T2 keyboard workstation, Yamaha PSR-EW400 portable keyboard, Peavey KB 60 Amp, chords, stands, and Fender Passport small PA"
              }
])
