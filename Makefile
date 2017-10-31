all: master pages

master: checkoutmaster stageorg commit push
pdatepages: checkoutpages stagehtml commit pushpages

stagehtml:
	git add --ignore-errors **.html

stageorg:
	git add --ignore-errors public/**.org

commit:
	git commit --quiet --message "[make] Updating org."

push:
	git push --quiet --force

pushpages:
	git push --quiet --force origin gh-pages

checkoutmaster:
	git checkout master

checkoutpages:
	git checkout gh-pages

publish:
	emacs fp.org --batch -f org-publish-all
