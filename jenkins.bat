cd C:\Users\Alihan\Desktop\Code\QA\SOFTMETTEST
C:\Python312\python.exe -m pip install -r C:\Users\Alihan\Desktop\Code\QA\ve\requirements.txt
git init
git config --global user.email "alihanfemiofficial@gmail.com"
git config --global user.name "AlihanFemi"
git config --global --add safe.directory C:/Users/Alihan/Desktop/Code/QA/SOFTMETTEST
pre-commit install
git add ./.pre-commit-config.yaml
git add -A
git commit -m "testing pre-commits"
git push
