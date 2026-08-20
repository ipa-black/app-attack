.class public Lcom/bytedance/sdk/component/cJ$ac;
.super Ljava/lang/Object;
.source "TTPropHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ac"
.end annotation


# instance fields
.field private CJ:Z

.field final synthetic Qhi:Lcom/bytedance/sdk/component/cJ;

.field private final ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/cJ;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    .line 302
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    const/4 p1, 0x0

    .line 304
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/cJ$ac;->CJ:Z

    return-void
.end method

.method private cJ()Lcom/bytedance/sdk/component/cJ$cJ;
    .locals 10

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/cJ;->cJ(Lcom/bytedance/sdk/component/cJ;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/component/cJ;->ac(Lcom/bytedance/sdk/component/cJ;)I

    move-result v1

    if-lez v1, :cond_0

    .line 417
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 418
    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v2}, Lcom/bytedance/sdk/component/cJ;->CJ(Lcom/bytedance/sdk/component/cJ;)Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 419
    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ;Ljava/util/Properties;)Ljava/util/Properties;

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/component/cJ;->CJ(Lcom/bytedance/sdk/component/cJ;)Ljava/util/Properties;

    move-result-object v1

    .line 422
    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v2}, Lcom/bytedance/sdk/component/cJ;->fl(Lcom/bytedance/sdk/component/cJ;)I

    .line 424
    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    :try_start_1
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/cJ$ac;->CJ:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 428
    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 432
    :goto_0
    iput-boolean v5, p0, Lcom/bytedance/sdk/component/cJ$ac;->CJ:Z

    move v5, v3

    .line 435
    :cond_2
    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 436
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 437
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_6

    if-nez v6, :cond_4

    goto :goto_2

    .line 447
    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 448
    invoke-virtual {v1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 449
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 453
    :cond_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 442
    :cond_6
    :goto_2
    invoke-virtual {v1, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 445
    invoke-virtual {v1, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move v5, v4

    goto :goto_1

    .line 459
    :cond_7
    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    if-eqz v5, :cond_8

    .line 462
    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v3}, Lcom/bytedance/sdk/component/cJ;->Tgh(Lcom/bytedance/sdk/component/cJ;)J

    .line 465
    :cond_8
    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v3}, Lcom/bytedance/sdk/component/cJ;->ROR(Lcom/bytedance/sdk/component/cJ;)J

    move-result-wide v3

    .line 466
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    new-instance v0, Lcom/bytedance/sdk/component/cJ$cJ;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/sdk/component/cJ$cJ;-><init>(JLjava/util/Properties;Lcom/bytedance/sdk/component/cJ$1;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 466
    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 467
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/cJ$ac;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 368
    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->CJ:Z

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    .line 370
    monitor-exit v0

    throw v1
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ$ac;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 362
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;F)Lcom/bytedance/sdk/component/cJ$ac;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 337
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/component/cJ$ac;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 321
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/component/cJ$ac;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 329
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ$ac;
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 346
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/cJ$ac;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/cJ$ac;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p2, v2

    :goto_0
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 313
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/component/cJ$ac;
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$ac;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->ac:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 354
    monitor-exit v0

    throw p1
.end method

.method public apply()V
    .locals 3

    .line 399
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ$ac;->cJ()Lcom/bytedance/sdk/component/cJ$cJ;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ;Lcom/bytedance/sdk/component/cJ$cJ;Z)V

    return-void
.end method

.method public synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ$ac;->Qhi()Lcom/bytedance/sdk/component/cJ$ac;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 10

    .line 375
    const-string v0, " ms"

    const-string v1, " committed after "

    const-string v2, ":"

    const-string v3, "TTPropHelper"

    .line 376
    invoke-static {}, Lcom/bytedance/sdk/component/cJ;->ac()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 380
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ$ac;->cJ()Lcom/bytedance/sdk/component/cJ$cJ;

    move-result-object v6

    .line 382
    iget-object v7, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    const/4 v8, 0x1

    invoke-static {v7, v6, v8}, Lcom/bytedance/sdk/component/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ;Lcom/bytedance/sdk/component/cJ$cJ;Z)V

    .line 384
    :try_start_0
    iget-object v7, v6, Lcom/bytedance/sdk/component/cJ$cJ;->ac:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-static {}, Lcom/bytedance/sdk/component/cJ;->ac()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 389
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v8}, Lcom/bytedance/sdk/component/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v6, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1
    iget-boolean v0, v6, Lcom/bytedance/sdk/component/cJ$cJ;->CJ:Z

    return v0

    :catchall_0
    move-exception v7

    .line 388
    invoke-static {}, Lcom/bytedance/sdk/component/cJ;->ac()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v9}, Lcom/bytedance/sdk/component/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, v6, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v7

    .line 388
    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/component/cJ;->ac()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 389
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/bytedance/sdk/component/cJ$ac;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-static {v8}, Lcom/bytedance/sdk/component/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v6, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/cJ$ac;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/component/cJ$ac;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/cJ$ac;->Qhi(Ljava/lang/String;F)Lcom/bytedance/sdk/component/cJ$ac;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/cJ$ac;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/component/cJ$ac;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/cJ$ac;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/component/cJ$ac;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/cJ$ac;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ$ac;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/cJ$ac;->Qhi(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/cJ$ac;

    move-result-object p1

    return-object p1
.end method

.method public synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 299
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/cJ$ac;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ$ac;

    move-result-object p1

    return-object p1
.end method
