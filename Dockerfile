FROM alfg/nginx-rtmp

RUN apk add gettext libintl && \
    cp /usr/bin/envsubst /usr/local/bin/envsubst

ENV ENCODE_AUDIO_CODEC libfdk_aac
ENV ENCODE_AUDIO_BITRATE 128k
ENV ENCODE_VIDEO_ENCODER libx264
ENV ENCODE_VIDEO_BITRATE 6000k
ENV ENCODE_FORMAT flv
ENV ENCODE_G 30
ENV ENCODE_FRAMERATE 30
ENV ENCODE_RESOLUTION 1920x1080
ENV ENCODE_PRESET superfast
ENV ENCODE_VIDEO_PROFILE baseline

ENV RESTREAM_URL rtmp://localhost:1935/stream/restreamed

COPY init.sh /init.sh
COPY nginx.conf.template /nginx.conf.template

CMD ["/init.sh"]