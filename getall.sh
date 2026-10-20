jq '.artifacts[].id' gh-artifacts.json > liste-id.txt

for a in $(cat liste-id.txt)
do 
echo "$a"
done

curl -L --output artifact.zip \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $(cat ~/token.gh)" \
	-H "X-GitHub-Api-Version: 2026-03-10"\
	https://api.github.com/repos/Admm3bnhd/tp-graphes/actions/artifacts/$a/zip

unzip artifact.zip

