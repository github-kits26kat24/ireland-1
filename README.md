git init
git add README.md
git branch -M main
git commit -m "first commit"
git remote add origin git@github.com:github-kits26kat24/Olukayode-Project02.git
git push -u origin main

git reset --soft HEAD~1

terraform init --backend-config="key=prod/terraform.tfstate"