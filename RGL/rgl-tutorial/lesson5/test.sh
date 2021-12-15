echo ""
echo "If this is the only line you see, it means the test was successful!"
gf --run < test/test.gfs | diff -u - test/test.gfs.gold
