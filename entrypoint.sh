#！/bin/bash
# author DAWN
# 启动ss5
echo "ss5 starting..."
/usr/sbin/ss5 -t
echo "ss5 start successfully..."
tail -f /var/log/ss5/ss5.log