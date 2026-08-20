.class Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;
.super Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;,
        Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$cJ;
    }
.end annotation


# instance fields
.field final ABk:Ljava/lang/Object;

.field private volatile HzH:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm$Qhi;

.field private final hpZ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$cJ;

.field final iMK:Ljava/lang/Object;

.field private volatile kYc:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/cJ;

.field private final pA:I


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;)V
    .locals 2

    .line 41
    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->CJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/Qhi;

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->fl:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;-><init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/Qhi;Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;)V

    .line 43
    iget v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->ROR:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->pA:I

    .line 44
    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->hm:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$cJ;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->hpZ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$cJ;

    .line 45
    iput-object p0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ABk:Ljava/lang/Object;

    .line 47
    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->Qhi:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->cJ:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->Tgh:Ljava/util/List;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Tgh:Ljava/util/List;

    .line 50
    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->ac:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk;

    .line 51
    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->Sf:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->hm:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv;

    .line 52
    iget-object p1, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$Qhi;->WAv:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->iMK:Ljava/lang/Object;

    return-void
.end method

.method private Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk$Qhi;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm$Qhi;,
            Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/Qhi;,
            Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/cJ;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/Qhi;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/Qhi;->ac(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 140
    iget v3, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->pA:I

    if-lez v3, :cond_1

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 141
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    if-eqz p1, :cond_0

    .line 142
    const-string p1, "TAG_PROXY_DownloadTask"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "no necessary to download for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cache file size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->pA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Tgh()I

    move-result v3

    .line 147
    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;->Qhi(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 148
    iget v5, v4, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;->ac:I

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3

    .line 149
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    if-eqz p1, :cond_2

    .line 150
    const-string p1, "TAG_PROXY_DownloadTask"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file download complete, key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->fl()V

    long-to-int v5, v1

    .line 156
    iget v6, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->pA:I

    const-string v7, "GET"

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk$Qhi;IILjava/lang/String;)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;

    move-result-object v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->fl()V

    .line 165
    iget-object v9, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->hm:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv;

    const/4 v10, 0x0

    if-nez v9, :cond_5

    sget-boolean v9, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->fl:Z

    if-eqz v9, :cond_5

    move v9, v7

    goto :goto_0

    :cond_5
    move v9, v10

    :goto_0
    invoke-static {v6, v9, v7}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;ZZ)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_12

    .line 170
    invoke-static {v6}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;)I

    move-result v9

    if-eqz v4, :cond_7

    .line 171
    iget v11, v4, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;->ac:I

    if-eq v11, v9, :cond_7

    .line 172
    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    if-eqz v0, :cond_6

    .line 173
    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;->ac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_6
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/cJ;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;->ac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", previousInfo: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v4, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;->fl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/cJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-static {v6, p1, v4, v3}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;

    .line 180
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;->Qhi(Ljava/lang/String;I)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;

    move-result-object p1

    if-nez p1, :cond_8

    move p1, v10

    goto :goto_1

    .line 181
    :cond_8
    iget p1, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;->ac:I

    .line 182
    :goto_1
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;->CJ()Ljava/io/InputStream;

    move-result-object v3

    .line 183
    new-instance v4, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm;

    sget-boolean v9, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->CJ:Z

    if-eqz v9, :cond_9

    const-string v9, "rwd"

    goto :goto_2

    :cond_9
    const-string v9, "rw"

    :goto_2
    invoke-direct {v4, v0, v9}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 184
    :try_start_1
    invoke-virtual {v4, v1, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm;->Qhi(J)V

    .line 185
    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    if-eqz v0, :cond_a

    .line 186
    const-string v0, "TAG_PROXY_DownloadTask"

    const-string v8, "preload start from: "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v0, 0x2000

    .line 189
    new-array v0, v0, [B

    .line 192
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_10

    .line 193
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->fl()V

    if-lez v1, :cond_c

    .line 196
    invoke-virtual {v4, v0, v10, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm;->Qhi([BII)V

    add-int/2addr v5, v1

    .line 199
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->hm:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv;

    if-eqz v2, :cond_b

    .line 200
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ABk:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 201
    :try_start_2
    iget-object v8, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ABk:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2

    throw p1

    .line 205
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 207
    invoke-virtual {p0, p1, v5}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Qhi(II)V

    .line 210
    :cond_c
    iget v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->pA:I

    if-lez v1, :cond_f

    if-lt v5, v1, :cond_f

    .line 211
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    if-eqz p1, :cond_d

    .line 212
    const-string p1, "TAG_PROXY_DownloadTask"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download, more data received, currentCacheFileSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->pA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 225
    :cond_d
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;->CJ()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->Qhi(Ljava/io/Closeable;)V

    .line 228
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm;->Qhi()V

    .line 232
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Qhi()V

    .line 233
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    if-eqz p1, :cond_e

    .line 234
    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "cancel call"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    .line 216
    :cond_f
    :try_start_4
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->fl()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 220
    :cond_10
    :try_start_5
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ac()V

    .line 221
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    if-eqz p1, :cond_11

    .line 222
    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "download succeed, no need to cancel call"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 225
    :cond_11
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;->CJ()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->Qhi(Ljava/io/Closeable;)V

    .line 228
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm;->Qhi()V

    return-void

    :catchall_1
    move-exception p1

    move-object v8, v4

    move v7, v10

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v8, v4

    goto :goto_5

    .line 167
    :cond_12
    :try_start_6
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/ac;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 225
    :goto_5
    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;->CJ()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->Qhi(Ljava/io/Closeable;)V

    if-eqz v8, :cond_13

    .line 228
    invoke-virtual {v8}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm;->Qhi()V

    :cond_13
    if-eqz v7, :cond_14

    .line 232
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Qhi()V

    .line 233
    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    if-eqz v0, :cond_14

    .line 234
    const-string v0, "TAG_PROXY_DownloadTask"

    const-string v1, "cancel call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    throw p1
.end method

.method private WAv()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/Qhi;
        }
    .end annotation

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk;->Qhi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->fl()V

    .line 91
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk;->cJ()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk$Qhi;

    move-result-object v0

    .line 93
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk$Qhi;)V
    :try_end_0
    .catch Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/ac; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm$Qhi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/cJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    return v1

    :catch_0
    move-exception v0

    .line 120
    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->kYc:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/cJ;

    return v1

    :catch_1
    move-exception v0

    .line 116
    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->HzH:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm$Qhi;

    .line 117
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR:Ljava/lang/String;

    return v1

    :catch_2
    move-exception v1

    .line 100
    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk$Qhi;->cJ()V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->cJ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR:Ljava/lang/String;

    goto :goto_0

    .line 96
    :catch_3
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk$Qhi;->Qhi()V

    .line 97
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ROR:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method Sf()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm$Qhi;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->HzH:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/hm$Qhi;

    return-object v0
.end method

.method hm()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/cJ;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->kYc:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/cJ;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/Qhi;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/Qhi;->Qhi(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->WAv()Z
    :try_end_0
    .catch Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ac/Qhi; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catch_0
    :catchall_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->CJ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 71
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/Qhi;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/Qhi;->cJ(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->hpZ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$cJ;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;)V

    :cond_0
    return-void
.end method
