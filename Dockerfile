FROM ubuntu:latest

# Label untuk memberikan informasi tentang image (opsional)

LABEL maintainer="Your Name"
LABEL description="Custom Ubuntu OS with neofetch installed."

# Jalankan perintah di dalam container selama proses build.


RUN apt-get update && \
    apt-get install -y neofetch && \
    rm -rf /var/lib/apt/lists/*

# Perintah default yang akan dijalankan ketika container dimulai. Masuk ke terminal bash

CMD ["bash"]