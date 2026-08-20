.class Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;
.super Ljava/lang/Object;
.source "ReallyVideoPreload.java"

# interfaces
.implements Lcom/bytedance/sdk/component/cJ/Qhi/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:J

.field final synthetic cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;J)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    iput-wide p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->Qhi:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 155
    iget-wide v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->Qhi:J

    .line 158
    const-string v6, " Preload size="

    const-string v7, "Pre finally "

    const/4 v8, 0x0

    if-eqz v2, :cond_8

    .line 159
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v0, :cond_0

    .line 161
    :try_start_1
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v3, v4, v9}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v8}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 211
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v8}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 212
    :goto_0
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v8}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 213
    :goto_1
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 214
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v7, v0, v6, v2}, [Ljava/lang/Object;

    .line 215
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v12, v8

    move-object v15, v12

    :goto_2
    const/16 v5, 0x259

    goto/16 :goto_b

    .line 164
    :cond_0
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 165
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    .line 168
    :try_start_4
    iget-wide v12, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->Qhi:J

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->Qhi()J

    move-result-wide v14

    add-long/2addr v12, v14

    .line 169
    invoke-virtual {v9}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->ac()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v13, v12

    move-object v12, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v12, v8

    move-object v15, v12

    goto :goto_6

    :cond_1
    move-object v12, v8

    const-wide/16 v13, 0x0

    :goto_3
    if-nez v12, :cond_2

    .line 172
    :try_start_5
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v3, v4, v10}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 210
    :goto_4
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v8}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 211
    :goto_5
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 212
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v9}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v15, v8

    :goto_6
    move-object v8, v9

    goto :goto_2

    .line 175
    :cond_2
    :try_start_6
    new-instance v15, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Ljava/io/File;

    move-result-object v0

    const-string v8, "rw"

    invoke-direct {v15, v0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/16 v0, 0x2000

    .line 177
    :try_start_7
    new-array v0, v0, [B

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    :cond_3
    :goto_7
    rsub-int v5, v8, 0x2000

    .line 180
    invoke-virtual {v12, v0, v8, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_6

    .line 181
    iget-object v10, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v10}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 183
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 210
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v15}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    goto :goto_5

    :cond_4
    add-int/2addr v8, v5

    int-to-long v10, v5

    add-long v16, v16, v10

    const-wide/16 v10, 0x2000

    .line 188
    :try_start_8
    rem-long v10, v16, v10

    const-wide/16 v18, 0x0

    cmp-long v5, v10, v18

    if-eqz v5, :cond_5

    iget-wide v10, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->Qhi:J

    sub-long v10, v13, v10

    cmp-long v5, v16, v10

    if-nez v5, :cond_3

    .line 190
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iget-object v10, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v10}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v0, v5, v8, v10}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/cJ;->Qhi(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    int-to-long v10, v8

    add-long/2addr v3, v10

    const/4 v8, 0x0

    goto :goto_7

    .line 196
    :cond_6
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->WAv()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v13, v3

    if-nez v0, :cond_7

    .line 197
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->CJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)V

    .line 200
    :cond_7
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v8, v15

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    move-object v8, v9

    const/16 v5, 0x259

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v8, v9

    const/16 v5, 0x259

    goto :goto_9

    .line 202
    :cond_8
    :try_start_9
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v3

    const-string v4, "Network link failed."
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const/16 v5, 0x259

    :try_start_a
    invoke-static {v0, v3, v5, v4}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4

    :catchall_6
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    const/16 v5, 0x259

    :goto_8
    const/4 v8, 0x0

    :goto_9
    const/4 v12, 0x0

    :goto_a
    const/4 v15, 0x0

    .line 207
    :goto_b
    :try_start_b
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->fl(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)V

    .line 208
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v4

    if-eqz v2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v5

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 210
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v15}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 211
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v0, v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    .line 210
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v3, v15}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 211
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v3, v12}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 212
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v3, v8}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 213
    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Ljava/io/Closeable;)V

    .line 214
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v7, v2, v6, v3}, [Ljava/lang/Object;

    .line 215
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v2

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    throw v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Ljava/io/IOException;)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ$1;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/cJ;)Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    return-void
.end method
