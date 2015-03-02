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

release:
	git checkout master
	git pull
	git branch -D release
	git checkout -b release
	mkdir release
	paperback build
	cp build/maintaining-open-source-projects/maintaining-open-source-projects.* release/
	git add release/
	git commit -m "Update latest release"
	git push origin release -f
	zip maintaining-open-source-projects.zip release/*
	git checkout master
