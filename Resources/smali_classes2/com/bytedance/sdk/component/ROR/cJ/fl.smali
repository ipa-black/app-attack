.class public Lcom/bytedance/sdk/component/ROR/cJ/fl;
.super Lcom/bytedance/sdk/component/ROR/cJ/ac;
.source "PostExecutor.java"


# instance fields
.field Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/ac;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lcom/bytedance/sdk/component/cJ/Qhi/HzH;)Lcom/bytedance/sdk/component/cJ/Qhi/WAv;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/HzH;)Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    move-result-object p0

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/HzH;)Lcom/bytedance/sdk/component/cJ/Qhi/WAv;
    .locals 0

    .line 320
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->fl()Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lcom/bytedance/sdk/component/cJ/Qhi/WAv;)Ljava/nio/charset/Charset;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;)Ljava/nio/charset/Charset;
    .locals 1

    if-eqz p1, :cond_0

    .line 312
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/WAv;->Qhi:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/WAv;->Qhi(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/WAv;->Qhi:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 314
    :catch_0
    sget-object p1, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/WAv;->Qhi:Ljava/nio/charset/Charset;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lcom/bytedance/sdk/component/ROR/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/ROR/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 328
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->hm()Lcom/bytedance/sdk/component/cJ/Qhi/Gm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Gm;)V

    :cond_0
    return-void
.end method

.method private fl(Ljava/lang/String;)[B
    .locals 5

    .line 277
    const-string v0, "PostExecutor"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 282
    new-array v2, v2, [B

    .line 284
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 285
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    :try_start_2
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 300
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 302
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v3, v1

    .line 288
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 292
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    .line 294
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 298
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 300
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_2
    :goto_3
    return-object v2

    :goto_4
    if-eqz v1, :cond_3

    .line 292
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception v1

    .line 294
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 298
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 300
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-object v1
.end method


# virtual methods
.method public CJ(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string p1, "{}"

    .line 55
    :cond_0
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/WAv;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    return-void
.end method

.method public Qhi()Lcom/bytedance/sdk/component/ROR/cJ;
    .locals 13

    .line 194
    const-string v0, "content-type"

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;-><init>()V

    .line 196
    iget-object v2, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Sf:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v0, Lcom/bytedance/sdk/component/ROR/cJ;

    const-string v6, "URL_NULL_MSG"

    const-string v8, "URL_NULL_BODY"

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1388

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Sf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 204
    iget-object v2, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    if-nez v2, :cond_1

    .line 206
    new-instance v0, Lcom/bytedance/sdk/component/ROR/cJ;

    const-string v6, "BODY_NULL_MSG"

    const-string v8, "BODY_NULL_BODY"

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1388

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    .line 210
    :cond_1
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;)V

    .line 212
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Ljava/lang/Object;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 214
    iget-object v2, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    .line 215
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/cJ;

    move-result-object v1

    .line 219
    invoke-interface {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 221
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ROR()Lcom/bytedance/sdk/component/cJ/Qhi/ROR;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 224
    :goto_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 225
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->cJ(I)Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 228
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    .line 229
    const-string v4, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_4
    invoke-static {v6}, Lcom/bytedance/sdk/component/ROR/CJ/Tgh;->Qhi(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->CJ()[B

    move-result-object v0

    .line 239
    new-instance v12, Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->cJ()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Qhi()J

    move-result-wide v10

    const/4 v7, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 241
    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi([B)V

    goto :goto_2

    .line 242
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->hm:Z

    if-eqz v0, :cond_6

    .line 243
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->CJ()[B

    move-result-object v0

    .line 244
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/HzH;)Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 245
    new-instance v12, Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->cJ()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Qhi()J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 247
    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi([B)V

    goto :goto_2

    .line 249
    :cond_6
    new-instance v12, Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->cJ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->cJ()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Qhi()J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 252
    :goto_2
    invoke-direct {p0, v12, v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v12

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 256
    new-instance v11, Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1389

    const/4 v5, 0x0

    const-string v6, "BODY_NULL_BODY"

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v11
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V
    .locals 2

    .line 85
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Sf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V

    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->fl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->fl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 94
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Tgh:I

    if-lez v1, :cond_2

    .line 95
    iget v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Tgh:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    .line 102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RequestBody is null, content type is not support!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V

    :cond_3
    return-void

    .line 107
    :cond_4
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;)V

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Ljava/lang/Object;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    .line 112
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/cJ;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;-><init>(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    .line 115
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/ac;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 187
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->fl(Ljava/lang/String;)[B

    move-result-object p1

    .line 269
    const-string p2, "application/json; charset=utf-8"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;[B)V

    .line 270
    const-string p1, "Content-Encoding"

    const-string p2, "gzip"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->CJ(Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;[B)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/WAv;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;[B)Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 60
    :cond_0
    const-string p1, "{}"

    .line 63
    :goto_0
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/WAv;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    return-void
.end method

.method public ac()Lcom/bytedance/sdk/component/cJ/Qhi/pA;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    return-object v0
.end method
