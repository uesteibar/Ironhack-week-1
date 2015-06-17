
require "./cli"

cli = CLI.new

cli.add_action("1", WordCounter)
cli.add_action("2", LetterCounter)
cli.add_action("3", TextReverser)
cli.add_action("4", Uppercaser)
cli.add_action("5", Lowercaser)

cli.execute
