javac -classpath $HADOOP_CLASSPATH -d './classes' './src/IMDb.java'
jar cf ./jar/imdb.jar -C ./classes/ .
$HADOOP_HOME/bin/hdfs dfs -put ./inputs/Spring2024-Project3-IMDbData.txt /user/project3/
$HADOOP_HOME/bin/hadoop jar ./jar/imdb.jar IMDb /user/project3/Spring2024-Project3-IMDbData.txt/user/project3/output
$HADOOP_HOME/bin/hdfs dfs -get /user/project3/output/part-r-00000 /home/hdoop/DBMS-5331/MapReduce/output/
cp ./output/part-r-00000 ./output/output.txt