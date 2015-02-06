rebuild:
	clear
	paperback build

proof:
	echo "weasel words: "
	sh bin/weasel-words book/*.md
	echo
	echo "passive voice: "
	sh bin/passive-voice book/*.md
	echo
	echo "duplicates: "
	perl bin/dups book/*.md
