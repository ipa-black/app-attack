.class public Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;
.super Ljava/lang/Object;
.source "TmplDiffManager.java"


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;


# instance fields
.field private cJ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;
    .locals 2

    .line 42
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi:Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi:Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi:Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;

    .line 47
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi:Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->ac(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 257
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 261
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    new-instance v3, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;-><init>()V

    .line 266
    invoke-virtual {v3, p2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p2

    .line 267
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p2

    .line 268
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p2

    .line 269
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 271
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->Qhi(Ljava/lang/Long;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 275
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;Z)V

    .line 276
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->cJ()V

    .line 278
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/hm;->Qhi(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 279
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    .line 280
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;->cJ()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;->Qhi(Z)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 220
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 226
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 224
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_2
    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    invoke-direct {p0, p2, p6, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    invoke-direct {p0, p2, p6, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 239
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_1
    invoke-static {p5}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/hm;->Qhi(Ljava/lang/String;)Z

    move-result p1

    .line 244
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/cJ;->fl()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_6

    .line 246
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;->cJ()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;->Qhi(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private ac(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 162
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->ac()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 166
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;->ROR()Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi()Lcom/bytedance/sdk/component/ROR/cJ;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private cJ()V
    .locals 7

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->ac()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->ac()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;->Qhi()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0x64

    .line 84
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->cJ()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 85
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_2

    .line 91
    :cond_2
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    .line 93
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->ROR()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v0, v4

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 99
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_4

    if-ge v4, v0, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 105
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 106
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    if-eqz v5, :cond_4

    .line 110
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->cJ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->Qhi(Ljava/util/Set;)V

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    goto :goto_3

    .line 86
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    :goto_3
    return-void
.end method

.method private cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 365
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;-><init>()V

    .line 366
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 367
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 368
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 369
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 370
    invoke-virtual {p1, p5}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 371
    invoke-virtual {p1, p6}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->Qhi(Ljava/lang/Long;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    .line 373
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;Z)V

    .line 374
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;->cJ()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;
    .locals 1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/ac/fl;Ljava/lang/String;)V
    .locals 10

    .line 193
    const-string v0, "TmplDiffManager"

    if-nez p1, :cond_0

    .line 194
    const-string p1, "saveTemplate error: tplInfo == null"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    iget-object v4, p1, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/fl;->Qhi:Ljava/lang/String;

    .line 198
    iget-object v5, p1, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/fl;->ac:Ljava/lang/String;

    .line 199
    iget-object v6, p1, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/fl;->cJ:Ljava/lang/String;

    .line 200
    iget-object v7, p1, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/fl;->CJ:Ljava/lang/String;

    .line 201
    iget-object v8, p1, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/fl;->fl:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->ac()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->ac()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;->Sf()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_1
    const-string p1, ""

    .line 206
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v9, p1

    goto :goto_1

    :cond_2
    move-object v9, p2

    .line 207
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    const-string p1, "saveTemplate error:tmpId is empty"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_3
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf$1;

    const-string v3, "saveTemplate"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf$1;-><init>(Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Sf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/adexpress/CJ/qMt;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method public Qhi(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 442
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 444
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public cJ(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->cJ(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
