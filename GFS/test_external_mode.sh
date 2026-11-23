#!/bin/bash
# Test external client mode

cd /home/dexter/Desktop/My_Projects/Gfs-inspired-Dfs/GFS

echo "Testing External Client Mode..."
echo "==============================="
echo ""

timeout 20 ./bin/gfs-client --config configs/external/client-config.yml <<'HEREDOC'
create exttest.txt
append exttest.txt "Hello from External Mode"
read exttest.txt 0 100
ls
exit
HEREDOC

echo ""
echo "Test completed!"
