Basic usage  
`docker container run -it -p 1935:1935 -e "RESTREAM_URL=rtmp://replace.me.plz/applicaiton/key" jwsenteney/nginx-rtmp-restream`

Transcode the stream before restreaming it (see ENCODE_ environment variables for options)  
`docker container run -it -p 1935:1935 -e "ENCODE_PUSH_URL=rtmp://replace.me.plz/applicaiton/key" jwsenteney/nginx-rtmp-restream`

If your ENCODE_PUSH_URL contains parameters (?foo=bar)  
`docker container run -it -p 1935:1935 -e "ENCODE_PUSH_URL=rtmp://replace.me.plz/applicaiton/key?foo=bar" -e "ENCODE_EXTRA_OPTIONS=-rtmp_tcurl 'rtmp://replace.me.plz/applicaiton?foo=bar'" jwsenteney/nginx-rtmp-restream`  
\* Note that the '/key' portion of the url is removed in the url in the ENCODE_EXTRA_OPTIONS environment variable.
