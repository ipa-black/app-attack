.class Lcom/bytedance/sdk/openadsdk/kYc/ac$1;
.super Ljava/lang/Object;
.source "StrategyCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/kYc/ac;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 53
    const-string v0, "StrategyCenter"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/kYc/ac;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/kYc/ac;I)I

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/kYc/Qhi;->Qhi()V

    .line 58
    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/fl;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->fl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 61
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/fl;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ROR()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/fl;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ROR()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/fl;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ROR()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 70
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 74
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/fl;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->Tgh()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 78
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 83
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 84
    const-string v3, "executing strategy fetch"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 88
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/fl;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->CJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;->Qhi()V

    .line 101
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->CJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;->Qhi(Lorg/json/JSONObject;)V

    .line 102
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/kYc/Qhi;->cJ()V

    goto :goto_4

    .line 106
    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 107
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/kYc/Qhi;->Qhi(ILjava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 78
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "error "

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/kYc/Qhi;->Qhi(ILjava/lang/String;)V

    .line 117
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->CJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    move-result-object v0

    const-string v1, "local_last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;->Qhi(Ljava/lang/String;J)V

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi()V

    return-void
.end method
