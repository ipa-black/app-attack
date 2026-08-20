.class Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;
.super Ljava/lang/Object;
.source "MediaDownloadPlayCacheImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/cJ/Qhi/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v0, 0x0

    .line 126
    :try_start_0
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;Z)Z

    .line 127
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 129
    :try_start_1
    iget-object v4, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v4}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 130
    iget-object v4, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->Qhi()J

    move-result-wide v5

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;J)J

    .line 131
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->ac()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    move-object v4, v0

    if-nez v4, :cond_5

    if-eqz v4, :cond_1

    .line 167
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->close()V

    :cond_2
    if-eqz p2, :cond_3

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->close()V

    .line 176
    :cond_3
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Sf(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 177
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->hm(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_4
    return-void

    :cond_5
    const/16 v0, 0x2000

    .line 137
    :try_start_3
    new-array v0, v0, [B

    .line 140
    iget-object v5, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v5}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move v9, v2

    move-wide v10, v7

    :cond_6
    :goto_0
    rsub-int v12, v9, 0x2000

    .line 141
    invoke-virtual {v4, v0, v9, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x1

    if-eq v12, v13, :cond_9

    add-int/2addr v9, v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2000

    .line 144
    rem-long v12, v10, v12

    cmp-long v12, v12, v7

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v12

    iget-object v15, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v15}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v15

    sub-long/2addr v12, v15

    cmp-long v12, v10, v12

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    move v14, v2

    .line 145
    :cond_8
    :goto_1
    const-string v15, "Write segment,execAppend ="

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v17, " offset="

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, " totalLength = "

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v21, " saveSize ="

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v23, " startSaved="

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v25, " fileHash="

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->CJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v26

    const-string v27, " url="

    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->CJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v28

    filled-new-array/range {v15 .. v28}, [Ljava/lang/Object;

    if-eqz v14, :cond_6

    .line 147
    iget-object v12, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->fl(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 148
    :try_start_4
    iget-object v13, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v13}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Tgh(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Ljava/io/RandomAccessFile;

    move-result-object v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->intValue()I

    move-result v14

    iget-object v15, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v15}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->CJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v15

    invoke-virtual {v15}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v0, v14, v9, v15}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/cJ;->Qhi(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    .line 149
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    int-to-long v12, v9

    add-long/2addr v5, v12

    move v9, v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v12

    throw v0

    .line 154
    :cond_9
    const-string v12, "Write segment,Write over, startIndex ="

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v0, " totalLength = "

    iget-object v5, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v5}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, " saveSize = "

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, " writeEndSegment ="

    iget-object v5, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v5}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v5

    iget-object v7, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, v10, v5

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    move v14, v2

    :goto_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const-string v20, " url="

    iget-object v5, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v5}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->CJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v21

    move-object v14, v0

    filled-new-array/range {v12 .. v21}, [Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v0, v4

    goto :goto_3

    :catchall_2
    move-object v4, v0

    goto :goto_4

    .line 156
    :cond_b
    :try_start_6
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;Z)Z

    .line 157
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ROR(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v3, v0

    :goto_3
    if-eqz v0, :cond_c

    .line 167
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v3, :cond_d

    .line 170
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->close()V

    :cond_d
    if-eqz p2, :cond_e

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->close()V

    .line 176
    :cond_e
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Sf(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    .line 177
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->hm(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :cond_f
    return-void

    :catchall_4
    move-object v3, v0

    move-object v4, v3

    .line 161
    :catchall_5
    :goto_4
    :try_start_8
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;Z)Z

    .line 162
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ROR(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;J)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v4, :cond_10

    .line 167
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_10
    if-eqz v3, :cond_11

    .line 170
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->close()V

    :cond_11
    if-eqz p2, :cond_12

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->close()V

    .line 176
    :cond_12
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Sf(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_13

    .line 177
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->hm(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    :cond_13
    return-void

    :catchall_7
    move-exception v0

    if-eqz v4, :cond_14

    .line 167
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_14
    if-eqz v3, :cond_15

    .line 170
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->close()V

    :cond_15
    if-eqz p2, :cond_16

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->close()V

    .line 176
    :cond_16
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Sf(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v4}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    .line 177
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->hm(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 182
    :catchall_8
    :cond_17
    throw v0

    .line 185
    :cond_18
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;Z)Z

    .line 186
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->ROR(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;J)J

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Ljava/io/IOException;)V
    .locals 2

    .line 116
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;Z)Z

    .line 117
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/Qhi/cJ;J)J

    return-void
.end method
