Adding a new beer:

```
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ mkdir Beers/FunkMetal/v3
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ git add Beers/FunkMetal/v3
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ scp hamzy@192.168.124.77:BeerSmith-Recipes/FunkMetalStoutV3.* Beers/FunkMetal/v3/
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ git add Beers/FunkMetal/v3/FunkMetalStoutV3.{bsmx,xml}
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ cp Beers/FunkMetal/v4/README.markdown Beers/FunkMetal/v3/
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ vi Beers/FunkMetal/v3/README.markdown
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ touch -t 201603161621 Beers/FunkMetal/v3/README.markdown
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ git add Beers/FunkMetal/v3/README.markdown
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ (cd Beers/FunkMetal/v3/; qrencode -o QR.png -s 4 -l H -d 360 "https://github.com/hamzy/AndromedaBrewery/tree/master/Beers/FunkMetal/v3")
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ git add Beers/FunkMetal/v3/QR.png
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ git commit -m "Add Funk Metal Stout v3.0"
[master 9005b2e] Add Funk Metal Stout v3.0
 4 files changed, 1360 insertions(+)
 create mode 100644 Beers/FunkMetal/v3/FunkMetalStoutV3.bsmx
 create mode 100644 Beers/FunkMetal/v3/FunkMetalStoutV3.xml
 create mode 100644 Beers/FunkMetal/v3/QR.png
 create mode 100644 Beers/FunkMetal/v3/README.markdown
[hamzy@hamzy-tp-w540 AndromedaBrewery]$ git push
Counting objects: 9, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (9/9), done.
Writing objects: 100% (9/9), 15.00 KiB | 0 bytes/s, done.
Total 9 (delta 0), reused 0 (delta 0)
To git@github.com:hamzy/AndromedaBrewery.git
   92bb035..9005b2e  master -> master
```

Seeing if qr-code can be modified...

```
[hamzy@hamzy-tp-w540 ~]$ git clone https://github.com/lincolnloop/python-qrcode.git
[hamzy@hamzy-tp-w540 ~]$ cd python-qrcode/
[hamzy@hamzy-tp-w540 python-qrcode]$ virtualenv venv/
[hamzy@hamzy-tp-w540 python-qrcode]$ venv/bin/python2 setup.py install
[hamzy@hamzy-tp-w540 python-qrcode]$ venv/bin/qr --factory=svg-path "https://github.com/hamzy/AndromedaBrewery/tree/master/Beers/%C3%9Cberkind/v8" > test.svg
[hamzy@hamzy-tp-w540 python-qrcode]$ eog test.svg 
```
