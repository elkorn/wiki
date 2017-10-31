all: master pages

master: checkoutmaster stage commit push
pages: checkoutpages stagehtml commit pushpages

stagehtml:
	git add -f **.html

stage:
	git add --all .

commit:
	git commit --quiet --message "[make] Updating org."

push:
	git push --quiet --force

pushpages:
	git push --quiet --force origin gh-pages

checkoutmaster:
	git checkout master

checkoutpages:
	git checkout --orphan gh-pages

publish:
	emacs fp.org --batch -f org-publish-all
