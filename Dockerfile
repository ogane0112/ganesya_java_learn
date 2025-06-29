# ベースイメージは公式OpenJDK（例：21）を使う
FROM openjdk:21-slim

# タイムゾーン設定（日本時間）
ENV TZ=Asia/Tokyo

# 必要なツールをインストール
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git curl zip unzip vim && \
    rm -rf /var/lib/apt/lists/*

# ワークディレクトリ（任意の作業用フォルダ）
WORKDIR /workspace

# コンテナ起動時のデフォルトシェル
CMD ["/bin/bash"]

# .bashrcをプロジェクトからrootホームにコピー
COPY .bashrc /root/.bashrc
