#!/usr/bin/env sh
envsubst '${ENCODE_AUDIO_CODEC},
         ${ENCODE_AUDIO_BITRATE},
         ${ENCODE_VIDEO_ENCODER},
         ${ENCODE_VIDEO_BITRATE},
         ${ENCODE_FORMAT},
         ${ENCODE_KEYFRAME_INTERVAL},
         ${ENCODE_FRAMERATE},
         ${ENCODE_RESOLUTION},
         ${ENCODE_PRESET},
         ${ENCODE_VIDEO_PROFILE},
         ${ENCODE_EXTRA_OPTIONS},
         ${ENCODE_PUSH_URL}
         ${RESTREAM_URL}' < nginx.conf.template > /opt/nginx/nginx.conf

/opt/nginx/sbin/nginx