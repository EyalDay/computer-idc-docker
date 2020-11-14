WORK_DIR="$PWD"

docker run -d --name jupyter --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes  \
                -v  "$WORK_DIR":/home/jovyan/work     \
                cv-idc:latest  \
                start.sh  jupyter lab --LabApp.token=''

