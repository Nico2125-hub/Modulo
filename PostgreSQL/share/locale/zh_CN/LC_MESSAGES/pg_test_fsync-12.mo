��          �   %   �      `  1   a  2   �  /   �     �  8        J     d          �     �  (   �  U   �  [   T  K   �  c   �     `  .   {  E   �  &   �  +        C     ^     k     o     t     �  �  �  4   (  4   ]  6   �     �  5   �     	     5	     O	     i	     �	  3   �	  M   �	  Y   %
  J   
  [   �
     &     @  ;   ^  *   �  5   �     �                $     )     6                      
             	                                                                                         
Compare file sync methods using one %dkB write:
 
Compare file sync methods using two %dkB writes:
 
Compare open_sync with different write sizes:
 
Non-sync'ed %dkB writes:
 
Test if fsync on non-write file descriptor is honored:
  1 * 16kB open_sync write  2 *  8kB open_sync writes  4 *  4kB open_sync writes  8 *  2kB open_sync writes %13.3f ops/sec  %6.0f usecs/op
 %d second per test
 %d seconds per test
 (If the times are similar, fsync() can sync data written on a different
descriptor.)
 (This is designed to compare the cost of writing 16kB in different write
open_sync sizes.)
 (in wal_sync_method preference order, except fdatasync is Linux's default)
 * This file system and its mount options do not support direct
  I/O, e.g. ext4 in journaled mode.
 16 *  1kB open_sync writes Direct I/O is not supported on this platform.
 O_DIRECT supported on this platform for open_datasync and open_sync.
 Try "%s --help" for more information.
 Usage: %s [-f FILENAME] [-s SECS-PER-TEST]
 could not open output file fsync failed n/a n/a* seek failed write failed Project-Id-Version: pg_test_fsync (PostgreSQL) 12
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
PO-Revision-Date: 2019-05-31 18:00+0800
Last-Translator: Jie Zhang <zhangjie2@cn.fujitsu.com>
Language-Team: Chinese (Simplified) <zhangjie2@cn.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: zh_CN
Plural-Forms: nplurals=2; plural=(n != 1);
 
使用一个%dkB写操作比较文件同步方法:
 
使用两个%dkB写操作比较文件同步方法:
 
在不同的写入大小的情况下比较open_sync:
 
不同步的写入 %dkB :
 
测试是否支持非写文件描述符上的fsync:
  1 * 16kB open_sync写入  2 *  8kB open_sync写入  4 *  4kB open_sync写入  8 *  2kB open_sync写入 %13.3f ops/sec  %6.0f usecs/op
 %d 每次测试的秒数
 %d 每次测试的秒数
 (如果时间相似，fsync()可以同步写在不同描述符上的数据.)
 这是为了比较在写入不同的open_sync大小的情况下写入16kB的时间花费
 (按照wal_sync_method首选顺序，fdatasync是Linux的默认值除外)
 * 此文件系统及其安装选项不支持直接I/O
  例如. ext4 在 journaled 模式.
 16 *  1kB open_sync写入 此平台不支持直接I/O.
 在此平台上，O_DIRECT支持open_datasync和open_sync.
 请用 "%s --help" 获取更多的信息.
 用法: %s [-f 文件名] [-s 每次测试的秒数]
 无法打开输出文件 fsync失败 n/a n/a* 查找失败 写入失败 