users = ['aang', 'azula', 'mako', 'toph', 'korra', 'zuko', 'sokka', 'andy', 'jane']
users.each do |user|
User.create(
  name: user.titleize,
  email: user + '@gmail.com',
  password: 'password',
  avatar: user + '.jpg'
)
end