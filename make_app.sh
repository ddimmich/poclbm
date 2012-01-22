echo Generating poclbm.app

py2applet poclbm.py phatk.cl

echo Fixing pyopencl from generated app
cp -r /usr/local/Cellar/python/2.7.2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pyopencl-2011.2-py2.7-macosx-10.5-x86_64.egg/pyopencl/../include/pyopencl poclbm.app/Contents/Resources/include/

echo Generating guiminer.app in dist/

python setup.py py2app

echo Fixing some paths

cp dist/guiminer.app/Contents/Resources/*.ini dist/guiminer.app/Contents/MacOS/
cp dist/guiminer.app/Contents/Resources/logo.ico dist/guiminer.app/Contents/MacOS/

echo Adding the poclbm.app to guiminer.app
cp -r poclbm.app dist/guiminer.app/Contents/MacOS/

