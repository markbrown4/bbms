users = ['aang', 'azula', 'mako', 'toph', 'korra', 'zuko', 'sokka', 'andy', 'jane']
users.each do |user|
User.create(
  name: user.titleize,
  email: user + '@gmail.com',
  password: 'password',
  avatar: user + '.jpg'
)
end

@thread = MessageThread.new subject: 'Oh hai guys', user_id: 5
@thread.users << User.find([1,2,3,4])
@thread.save
@thread.messages.create body: "Hello.

How's it hanging?


Well I hope.", user_id: 5