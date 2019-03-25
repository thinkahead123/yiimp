WORK_PATH=~/api/yiimp/
WORK_STRATUM_PATH=/home/alex/api/yiimp/stratum
COMPIL_STRATUM_PATH=/home/alex/compil/yiimp/stratum

echo "cp prog to dst..."
cp $COMPIL_STRATUM_PATH/stratum $WORK_STRATUM_PATH
echo "cp lib to dst..."
echo "cp conf to dst..."
cp -rf $COMPIL_STRATUM_PATH/config/* $WORK_STRATUM_PATH/config.source/
cp -rf $COMPIL_STRATUM_PATH/config.sample $WORK_STRATUM_PATH/
echo "cp script to dst..."
cp $COMPIL_STRATUM_PATH/runremote.sh $WORK_STRATUM_PATH
cp $COMPIL_STRATUM_PATH/../sql/sql_jobs.sh $WORK_STRATUM_PATH

