# Wod.create(cat: 1,name:'Fran', time:360000,date:1530303308000,notes:'super intense')
# Wod.create(cat: 2, name:'Snatch', weight: 100,rounds:3,reps:1,time:360000,date:1530303308000,notes:'that was heavy')
# Wod.create(cat: 2, name:'Clean and Jerk', weight: 80,rounds:1,reps:20,time:360000,date:1530303308000,notes:'started slow, finished strong')
# Wod.create(cat: 1, name:'Elizabeth',rounds:1,reps:20,time:360000,date:1530303308000,notes:'that was fun')
# Wod.create(cat: 2, name:'Back Squats',weight: 80, rounds:5,reps:5,time:360000,date:1530303308000)
wods= [
  {cat: 1,name:'Fran', time:85,date:1530303308,notes:'super intense'},
  {cat: 2, name:'Snatch', weight: 100,rounds:3,reps:1,time:100,date:1530303308,notes:'that was heavy'},
  {cat: 2, name:'Clean and Jerk', weight: 80,rounds:1,reps:20,time:249,date:1530303308,notes:'started slow, finished strong'},
  {cat: 1, name:'Elizabeth',time:120,date:1530303308,notes:'that was fun'},
  {cat: 2, name:'Back Squats',weight: 80, rounds:5,reps:5,time:5,date:1530303308}
]

wods.each do |wod|
  cat = wod[:cat]
  name = wod[:name]
  weight = wod[:weight]
  rounds = wod[:rounds]
  reps = wod[:reps]
  time = wod[:time]
  date = wod[:date]
  notes = wod[:notes]

  Wod.create(
    cat: cat,
    name: name,
    weight: weight,
    rounds: rounds,
    reps: reps,
    time: time,
    date: date,
    notes: notes)
end
