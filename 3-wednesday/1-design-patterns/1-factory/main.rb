
require "./model/user"
require "./factory/notifier_factory"

user = User.new

user.twitter = "uesteibar"
user.email = "uesteibar@gmail"

NotifierFactory.from_user(user).send_message

