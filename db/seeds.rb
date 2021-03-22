# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# /// Users ///
User.create(email: "jordancarroll1994@gmail.com", username: "jordancarroll", password: "abc123", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/SNice.svg/1200px-SNice.svg.png")
User.create(email: "jordanscarroll1994@gmail.com", username: "jordancarroll2", password: "abc123", image: "https://images-na.ssl-images-amazon.com/images/I/41CyuoxrPvL._AC_.jpg")

# /// Artists ///
Artist.create(name: "The Weeknd", image: "https://upload.wikimedia.org/wikipedia/en/c/c1/The_Weeknd_-_After_Hours.png")
Artist.create(name: "Dua Lipa", image: "https://upload.wikimedia.org/wikipedia/en/f/f5/Dua_Lipa_-_Future_Nostalgia_%28Official_Album_Cover%29.png")
Artist.create(name: "Lewis Capaldi", image: "https://images-na.ssl-images-amazon.com/images/I/61-K3qJWGYL._SL1200_.jpg")
Artist.create(name: "Doja Cat", image: "https://upload.wikimedia.org/wikipedia/en/8/87/Doja_Cat_-_Hot_Pink.png")
Artist.create(name: "Harry Styles", image: "https://images-na.ssl-images-amazon.com/images/I/61uo57hXGxL._SL1200_.jpg")
Artist.create(name: "Cardi B", image: "https://upload.wikimedia.org/wikipedia/en/thumb/9/97/Cardi_B_-_Invasion_of_Privacy.png/220px-Cardi_B_-_Invasion_of_Privacy.png")
Artist.create(name: "Lizzo", image: "https://upload.wikimedia.org/wikipedia/en/d/dd/Lizzo_-_Cuz_I_Love_You.png")
Artist.create(name: "Jawsh 685 x Jason Derulo", image: "https://upload.wikimedia.org/wikipedia/commons/b/b1/Jawsh_685_and_Jason_Derulo_-_Savage_Love_%28Laxed_%E2%80%93_Siren_Beat%29.png")
Artist.create(name: "Billie Eilish", image: "https://images-na.ssl-images-amazon.com/images/I/71SHkMeVdhL._SL1500_.jpg")

# /// Genres ///
Genre.create(name: "Synth-pop")
Genre.create(name: "Nu-disco")
Genre.create(name: "Piano Ballad")
Genre.create(name: "Pop")
Genre.create(name: "Rock")
Genre.create(name: "Rap")
Genre.create(name: "R&B")
Genre.create(name: "Dancehall")
Genre.create(name: "Electropop")

# /// Songs ///
Song.create(name: "Blinding Lights", artist_id: 1, artist_gender: "Male", lowest_pitch: 33,  highest_pitch: 52, lowest_note: "F3", highest_note: "C5", genre_id: 1, year: 2019, tempo: "Up", mood: "Sad", key: "E-flat major", image: "https://upload.wikimedia.org/wikipedia/en/e/e6/The_Weeknd_-_Blinding_Lights.png", rap_sing: "Sing", range: 19, hit_year: 2020)
Song.create(name: "Don't Start Now", artist_id: 2, artist_gender: "Female", lowest_pitch: 37,  highest_pitch: 54, lowest_note: "A3", highest_note: "D5", genre_id: 2, year: 2019, tempo: "Mid", mood: "Happy", key: "B minor", image: "https://upload.wikimedia.org/wikipedia/en/2/2b/Dua_Lipa_-_Don%27t_Start_Now.png", rap_sing: "Sing", range: 17, hit_year: 2020)
Song.create(name: "Someone You Loved", artist_id: 3, artist_gender: "Male", lowest_pitch: 31,  highest_pitch: 50, lowest_note: "Eb3", highest_note: "Bb4", genre_id: 3, year: 2018, tempo: "Mid", mood: "Sad", key: "D-flat major", image: "https://upload.wikimedia.org/wikipedia/en/a/a6/Lewis_Capaldi_-_Someone_You_Loved.png", rap_sing: "Sing", range: 19, hit_year: 2020)
Song.create(name: "Say So", artist_id: 4, artist_gender: "Female", lowest_pitch: 34,  highest_pitch: 54, lowest_note: "F#3", highest_note: "D5", genre_id: 4, year: 2020, tempo: "Mid", mood: "Sexy", key: "D major", image: "https://upload.wikimedia.org/wikipedia/en/d/df/Say_So_-_Doja_Cat.png", rap_sing: "Both", range: 20, hit_year: 2020)
Song.create(name: "Watermelon Sugar", artist_id: 5, artist_gender: "Male", lowest_pitch: 30,  highest_pitch: 49, lowest_note: "D3", highest_note: "A4", genre_id: 5, year: 2020, tempo: "Mid", mood: "Happy", key: "A minor", image: "https://upload.wikimedia.org/wikipedia/en/b/bf/Watermelon_Sugar_-_Harry_Styles.png", rap_sing: "Both", range: 19, hit_year: 2020)
Song.create(name: "WAP (feat. Megan Thee Stallion)", artist_id: 6, artist_gender: "Female Duet", lowest_pitch: nil,  highest_pitch: nil, lowest_note: "N/A", highest_note: "N/A", genre_id: 6, year: 2020, tempo: "Up", mood: "Sexy", key: "B minor", image: "https://upload.wikimedia.org/wikipedia/en/f/f4/Cardi_B_-_WAP_%28feat._Megan_Thee_Stallion%29.png", rap_sing: "Rap", range: nil, hit_year: 2020)
Song.create(name: "Heartless", artist_id: 1, artist_gender: "Male", lowest_pitch: 34,  highest_pitch: 53, lowest_note: "Gb3", highest_note: "Db5", genre_id: 7, year: 2019, tempo: "Mid", mood: "Sad", key: "E-flat minor", image: "https://upload.wikimedia.org/wikipedia/en/7/78/The_Weeknd_-_Heartless.png", rap_sing: "Sing", range: 19, hit_year: 2020)
Song.create(name: "Good as Hell", artist_id: 7, artist_gender: "Female", lowest_pitch: 38,  highest_pitch: 55, lowest_note: "Bb3", highest_note: "Eb5", genre_id: 4, year: 2016, tempo: "Mid", mood: "Happy", key: "E-flat major", image: "https://upload.wikimedia.org/wikipedia/en/1/1c/Lizzo_-_Good_as_Hell.png", rap_sing: "Both", range: 17, hit_year: 2020)
Song.create(name: "Savage Love (Laxed – Siren Beat)", artist_id: 8, artist_gender: "Male", lowest_pitch: 38,  highest_pitch: 57, lowest_note: "Bb3", highest_note: "F5", genre_id: 8, year: 2020, tempo: "Up", mood: "Sad", key: "E-flat major", image: "https://upload.wikimedia.org/wikipedia/commons/b/b1/Jawsh_685_and_Jason_Derulo_-_Savage_Love_%28Laxed_%E2%80%93_Siren_Beat%29.png", rap_sing: "Sing", range: 19, hit_year: 2020)
Song.create(name: "Bad Guy", artist_id: 9, artist_gender: "Female", lowest_pitch: 34,  highest_pitch: 47, lowest_note: "F#3", highest_note: "F4", genre_id: 9, year: 2019, tempo: "Up", mood: "Raunchy", key: "G minor", image: "https://upload.wikimedia.org/wikipedia/en/3/38/When_We_All_Fall_Asleep%2C_Where_Do_We_Go%3F.png", rap_sing: "Sing", range: 13, hit_year: 2020)

# /// FavoriteSongs ///
FavoriteSong.create(user_id: 1, song_id: 1, note: "Make sure you warm up before singing this one because it's pretty high.")
FavoriteSong.create(user_id: 1, song_id: 2, note: "Sing the bridge up an octave or else it'll be too low.")