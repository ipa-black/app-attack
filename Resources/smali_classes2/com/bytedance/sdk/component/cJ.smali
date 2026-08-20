.class public Lcom/bytedance/sdk/component/cJ;
.super Ljava/lang/Object;
.source "TTPropHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/cJ$ac;,
        Lcom/bytedance/sdk/component/cJ$cJ;,
        Lcom/bytedance/sdk/component/cJ$Qhi;
    }
.end annotation


# static fields
.field private static ABk:Lcom/bytedance/sdk/component/cJ$Qhi; = null

.field private static Gm:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static Qhi:Z = false

.field private static zc:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/component/cJ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CJ:Ljava/util/Properties;

.field private ROR:J

.field private Sf:J

.field private Tgh:I

.field private final WAv:Ljava/io/File;

.field private final ac:Ljava/lang/Object;

.field private final cJ:Ljava/lang/Object;

.field private volatile fl:Z

.field private final hm:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    .line 31
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/cJ;->ac:Ljava/lang/Object;

    .line 32
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/cJ;->fl:Z

    .line 35
    iput v1, p0, Lcom/bytedance/sdk/component/cJ;->Tgh:I

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    .line 99
    invoke-static {p1}, Lcom/bytedance/sdk/component/cJ;->Qhi(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ;->WAv:Ljava/io/File;

    .line 100
    monitor-enter v0

    .line 101
    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/cJ;->fl:Z

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    sget-object p1, Lcom/bytedance/sdk/component/cJ;->ABk:Lcom/bytedance/sdk/component/cJ$Qhi;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/cJ$Qhi;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    sget-object p1, Lcom/bytedance/sdk/component/cJ;->ABk:Lcom/bytedance/sdk/component/cJ$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/cJ$Qhi;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/component/cJ$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/cJ$2;-><init>(Lcom/bytedance/sdk/component/cJ;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 106
    :cond_1
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/component/cJ$1;

    const-string v0, "TTPropHelper"

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/cJ$1;-><init>(Lcom/bytedance/sdk/component/cJ;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ$1;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 102
    monitor-exit v0

    throw p1
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/component/cJ;)Ljava/util/Properties;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    return-object p0
.end method

.method private CJ()V
    .locals 1

    .line 175
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/cJ;->fl:Z

    if-nez v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static Qhi(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ;
    .locals 2

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string p1, "tt_prop"

    .line 73
    :cond_0
    const-class v0, Lcom/bytedance/sdk/component/cJ;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/cJ;->Gm:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 75
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/cJ;->Gm:Landroid/util/ArrayMap;

    .line 77
    :cond_1
    sget-object v1, Lcom/bytedance/sdk/component/cJ;->Gm:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-nez v1, :cond_2

    .line 79
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    sget-object p0, Lcom/bytedance/sdk/component/cJ;->Gm:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_2
    sget-object p0, Lcom/bytedance/sdk/component/cJ;->zc:Landroid/util/ArrayMap;

    if-nez p0, :cond_3

    .line 84
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    sput-object p0, Lcom/bytedance/sdk/component/cJ;->zc:Landroid/util/ArrayMap;

    .line 86
    :cond_3
    sget-object p0, Lcom/bytedance/sdk/component/cJ;->zc:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/cJ;

    if-nez p0, :cond_4

    .line 88
    new-instance p0, Lcom/bytedance/sdk/component/cJ;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/cJ;-><init>(Ljava/io/File;)V

    .line 89
    sget-object p1, Lcom/bytedance/sdk/component/cJ;->zc:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 92
    :cond_4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/cJ;)Ljava/io/File;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    return-object p0
.end method

.method static Qhi(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 124
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ".bak"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/cJ;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    return-object p1
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/cJ$Qhi;)V
    .locals 0

    .line 59
    sput-object p0, Lcom/bytedance/sdk/component/cJ;->ABk:Lcom/bytedance/sdk/component/cJ$Qhi;

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/cJ$cJ;Z)V
    .locals 3

    .line 476
    new-instance v0, Lcom/bytedance/sdk/component/cJ$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/cJ$3;-><init>(Lcom/bytedance/sdk/component/cJ;Lcom/bytedance/sdk/component/cJ$cJ;Z)V

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 496
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    iget v2, p0, Lcom/bytedance/sdk/component/cJ;->Tgh:I

    if-ne v2, p1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 498
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 500
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 498
    monitor-exit v1

    throw p1

    :cond_1
    xor-int/2addr p1, p2

    .line 505
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/ac;->Qhi(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/cJ;Lcom/bytedance/sdk/component/cJ$cJ;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ$cJ;Z)V

    return-void
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/component/cJ;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/bytedance/sdk/component/cJ;->ROR:J

    return-wide v0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/component/cJ;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/component/cJ;->ac:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/component/cJ;)J
    .locals 4

    .line 27
    iget-wide v0, p0, Lcom/bytedance/sdk/component/cJ;->ROR:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/component/cJ;->ROR:J

    return-wide v0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/component/cJ;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bytedance/sdk/component/cJ;->Tgh:I

    return p0
.end method

.method static synthetic ac()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    return v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/cJ;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    return-object p0
.end method

.method private cJ(Lcom/bytedance/sdk/component/cJ$cJ;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 518
    sget-boolean v0, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    .line 522
    :goto_0
    iget-object v0, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 524
    sget-boolean v7, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v7, :cond_1

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v9, v7

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    :goto_1
    if-eqz v0, :cond_8

    .line 536
    iget-wide v13, v1, Lcom/bytedance/sdk/component/cJ;->Sf:J

    iget-wide v3, v2, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi:J

    cmp-long v0, v13, v3

    if-gez v0, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    .line 540
    :cond_2
    iget-object v3, v1, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v3

    .line 543
    :try_start_0
    iget-wide v13, v1, Lcom/bytedance/sdk/component/cJ;->ROR:J

    iget-wide v11, v2, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi:J

    cmp-long v0, v13, v11

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 546
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 551
    invoke-virtual {v2, v4, v3}, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi(ZZ)V

    return-void

    .line 555
    :cond_5
    iget-object v0, v1, Lcom/bytedance/sdk/component/cJ;->WAv:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 557
    sget-boolean v3, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v3, :cond_6

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :cond_6
    if-nez v0, :cond_7

    .line 562
    iget-object v0, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    iget-object v3, v1, Lcom/bytedance/sdk/component/cJ;->WAv:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 563
    const-string v0, "TTPropHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t rename file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to backup file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/bytedance/sdk/component/cJ;->WAv:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 565
    invoke-virtual {v2, v3, v3}, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi(ZZ)V

    return-void

    .line 569
    :cond_7
    iget-object v0, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 578
    :cond_8
    :try_start_1
    iget-object v3, v1, Lcom/bytedance/sdk/component/cJ;->ac:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/4 v11, 0x0

    .line 581
    :try_start_2
    new-instance v12, Ljava/io/FileOutputStream;

    iget-object v0, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 582
    :try_start_3
    sget-boolean v0, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v0, :cond_9

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :cond_9
    const-wide/16 v13, 0x0

    .line 585
    :goto_4
    :try_start_4
    iget-object v0, v2, Lcom/bytedance/sdk/component/cJ$cJ;->cJ:Ljava/util/Properties;

    invoke-virtual {v0, v12, v11}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 586
    sget-boolean v0, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v0, :cond_a

    .line 587
    const-string v0, "TTPropHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v4, "save: "

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/bytedance/sdk/component/cJ$cJ;->cJ:Ljava/util/Properties;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v0, "TTPropHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "saveToLocal: save to"

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "success"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 596
    :cond_a
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 598
    :try_start_6
    const-string v0, "TTPropHelper"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v11, v12

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v11, v12

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v11, v12

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v4, v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    :goto_6
    const-wide/16 v13, 0x0

    .line 591
    :goto_7
    :try_start_7
    const-string v4, "TTPropHelper"

    const-string v12, "saveToLocal: "

    invoke-static {v4, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    .line 592
    invoke-virtual {v2, v4, v4}, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi(ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v11, :cond_b

    .line 596
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 598
    :try_start_9
    const-string v0, "TTPropHelper"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 602
    :cond_b
    :goto_8
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 604
    :try_start_a
    sget-boolean v0, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v0, :cond_c

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_9

    :cond_c
    const-wide/16 v3, 0x0

    .line 609
    :goto_9
    iget-object v0, v1, Lcom/bytedance/sdk/component/cJ;->WAv:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 611
    sget-boolean v0, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v0, :cond_d

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide v15, v11

    goto :goto_a

    :cond_d
    const-wide/16 v15, 0x0

    .line 615
    :goto_a
    iget-wide v11, v2, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi:J

    iput-wide v11, v1, Lcom/bytedance/sdk/component/cJ;->Sf:J

    const/4 v11, 0x1

    .line 617
    invoke-virtual {v2, v11, v11}, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi(ZZ)V

    .line 619
    sget-boolean v0, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v0, :cond_e

    .line 620
    const-string v0, "TTPropHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "write: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v7, v5

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v9, v5

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v13, v5

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v3, v5

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v15, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :cond_e
    return-void

    :goto_b
    if-eqz v11, :cond_f

    .line 596
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v5, v0

    .line 598
    :try_start_c
    const-string v0, "TTPropHelper"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_f
    :goto_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    .line 602
    :try_start_d
    monitor-exit v3

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v0

    .line 629
    const-string v3, "TTPropHelper"

    const-string v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    iget-object v0, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 634
    iget-object v0, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_10

    .line 635
    const-string v0, "TTPropHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t clean up partially-written file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v3, 0x0

    .line 638
    invoke-virtual {v2, v3, v3}, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi(ZZ)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/cJ;Lcom/bytedance/sdk/component/cJ$cJ;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/cJ;->cJ(Lcom/bytedance/sdk/component/cJ$cJ;Z)V

    return-void
.end method

.method static synthetic fl(Lcom/bytedance/sdk/component/cJ;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/bytedance/sdk/component/cJ;->Tgh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/component/cJ;->Tgh:I

    return v0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/component/cJ;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/bytedance/sdk/component/cJ;->Tgh:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bytedance/sdk/component/cJ;->Tgh:I

    return v0
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;F)F
    .locals 3

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ;->CJ()V

    .line 233
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p2

    .line 238
    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;I)I
    .locals 3

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ;->CJ()V

    .line 201
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p2

    .line 206
    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;J)J
    .locals 3

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ;->CJ()V

    .line 217
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide p2

    .line 222
    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ;->CJ()V

    .line 189
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 190
    monitor-exit v0

    throw p1
.end method

.method public Qhi()V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/cJ;->fl:Z

    if-eqz v1, :cond_1

    .line 130
    sget-boolean v1, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "TTPropHelper"

    const-string v2, "reload: already loaded, ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    monitor-exit v0

    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->WAv:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 137
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->WAv:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 139
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 140
    sget-boolean v0, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v0, :cond_3

    .line 141
    const-string v0, "TTPropHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exist? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 145
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 148
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 150
    sget-boolean v1, Lcom/bytedance/sdk/component/cJ;->Qhi:Z

    if-eqz v1, :cond_4

    .line 151
    const-string v1, "TTPropHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reload: find "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,items from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/cJ;->hm:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 154
    :goto_0
    :try_start_4
    const-string v3, "TTPropHelper"

    const-string v4, "reload: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_5

    .line 158
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    .line 160
    const-string v2, "TTPropHelper"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    move-object v1, v0

    goto :goto_3

    :catchall_3
    move-exception v0

    if-eqz v2, :cond_6

    .line 158
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    .line 160
    const-string v2, "TTPropHelper"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_6
    :goto_2
    throw v0

    .line 165
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v0

    if-eqz v1, :cond_8

    .line 166
    :try_start_7
    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 167
    iput-object v1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    :cond_8
    const/4 v1, 0x1

    .line 169
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/cJ;->fl:Z

    .line 170
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 171
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_6
    move-exception v1

    .line 139
    monitor-exit v0

    throw v1
.end method

.method public Qhi(Ljava/lang/String;)Z
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ;->CJ()V

    .line 260
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    return p1

    .line 265
    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public Qhi(Ljava/lang/String;Z)Z
    .locals 3

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ;->cJ:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ;->CJ()V

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ;->CJ:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p2

    .line 253
    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public cJ()Lcom/bytedance/sdk/component/cJ$ac;
    .locals 1

    .line 274
    new-instance v0, Lcom/bytedance/sdk/component/cJ$ac;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/cJ$ac;-><init>(Lcom/bytedance/sdk/component/cJ;)V

    return-object v0
.end method
