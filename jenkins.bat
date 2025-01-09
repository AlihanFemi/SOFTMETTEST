C:\Python312\python.exe -m pip install -r C:\Users\Alihan\Desktop\Code\QA\ve\requirements.txt
git init
git config --global user.email "alihanfemiofficial@gmail.com"
git config --global user.name "AlihanFemi"
git remote add origin https://github.com/AlihanFemi/SOFTMETTEST.git
git branch -M main
pre-commit install
git add ./.pre-commit-config.yaml
git add C:\Users\Alihan\Desktop\Code\QA\SOFTMETTEST\main.py
git add C:\Users\Alihan\Desktop\Code\QA\SOFTMETTEST\test_main.py
git commit -m "testing pre-commits"
git push -u origin main