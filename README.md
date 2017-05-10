# linux_shell_loop_req_url_response_code
`LinuxShell`脚本，用于每两分钟去请求指定的视频直链`url`，并打印出`response code`。用于验证防盗链的有效时间长度。


#### sites格式
```
WebName1   video_direct_url1
WebName2   video_direct_url2
```
#### 运行后台服务
以启用后台服务的方式运行在Linux机子上：
````
sh print_respCode.sh > log.txt &
````

#### 结果查看
最后在 `log.txt`中查看`response code`从`200`转为`403 / 405`的时间点。