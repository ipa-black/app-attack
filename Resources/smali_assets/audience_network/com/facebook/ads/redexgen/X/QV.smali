.class public interface abstract Lcom/facebook/ads/redexgen/X/QV;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract AAy(Lcom/facebook/ads/redexgen/X/QT;)Z
.end method

.method public abstract ADI(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .param p2    # Ljava/net/Proxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ADJ(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ADK(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ADa(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QR;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ADw(Ljava/io/InputStream;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract AGA(Ljava/io/OutputStream;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
