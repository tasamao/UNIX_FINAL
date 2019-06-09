「原始碼」資料夾包含main.sh、check.pl、text1.txt(測試用)、text2.txt(測試用)
「github使用」資料夾包含github建置報告、git_log.txt


執行前cd至資料夾目錄並chmod 777 main.sh check.pl
執行: ./main.sh
依指示輸入同一資料夾之 主要比對(.txt)、比對對象(.txt)

將輸入之兩個txt去除空白行，並當作參數執行check.pl
perl逐行逐字比對單字
輸出主要比對文檔之 總字數、抄襲字數、抄襲比率