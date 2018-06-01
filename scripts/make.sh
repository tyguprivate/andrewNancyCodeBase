g++ -g -std=c++11 ../cpp/main.cpp -o ../run.sh
g++ -g -std=c++11 ../cpp/generateTrees.cpp -o ../generateTrees.sh
g++ -g -std=c++11 ../cpp/lastIncrementalTests.cpp -o ../lastIncremental.sh
g++ -g -std=c++11 ../cpp/backupTests.cpp -o ../backupTests.sh
chmod a+x ../run.sh
chmod a+x ../generateTrees.sh
chmod a+x ../lastIncremental.sh
chmod a+x ../backupTests.sh