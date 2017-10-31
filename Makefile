all: updateMaster updatePages

updateMaster: checkoutMaster stage commit push publish
updatePages: checkoutPages stage commit push

stage:
	git add --all .

commit:
	git commit --quiet --message "[make] Updating org."

push:
	git push --quiet --force

checkoutMaster:
	git checkout master

checkoutPages:
	git checkout gh-pages

publish:
	emacs fp.org --batch -f org-publish-all
