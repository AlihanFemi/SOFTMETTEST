C:\Python312\python.exe -m pip install -r C:\Users\Alihan\Desktop\Code\QA\ve\requirements.txt

REM Ensure we're on a branch instead of detached HEAD
git checkout main || git checkout -b main

REM Configure Git user details
git config --global user.email "alihanfemiofficial@gmail.com"
git config --global user.name "AlihanFemi"

REM Unset core.hooksPath to fix pre-commit issue
git config --unset-all core.hooksPath

REM Install pre-commit hooks
pre-commit install

REM Stage and commit changes
git add ./.pre-commit-config.yaml
git add -A
git commit -m "testing pre-commits" || echo "No changes to commit."

REM Push changes to the branch
git push origin main
