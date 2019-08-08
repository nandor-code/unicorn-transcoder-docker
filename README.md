# Unicorn Transcoder Docker Image 

## Description
What is **[UnicornFFMPEG](https://github.com/UnicornTranscoder/UnicornFFMPEG)**?

This software is a part of UnicornTranscoder project, it is a service that will scale and listen on port 3000 for transcode requests from the UnicornLoadBalancer.

### Features
- Automatic installation using environment variables.
- No root processes. Never.

### Environment variables

- Same as in Plex

### Volumes
- Same as in Plex
- Plex Media Storage

### Port

- 0.0.0.0:3000

### Installation
* Edit create_docker.sh to match your network needs
* Edit config.js your needs
* Do all the other setup steps for **[UnicornTranscoder](https://github.com/UnicornTranscoder/UnicornTranscoder)**
* $ sh create_docker.sh
