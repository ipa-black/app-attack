.class public Lcom/bytedance/sdk/openadsdk/utils/lG;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static volatile CJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;

.field private static volatile Gm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

.field private static volatile Qhi:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile ROR:Lcom/bytedance/sdk/component/Sf/ac/ROR;

.field private static volatile Sf:Lcom/bytedance/sdk/component/Sf/ac/ROR;

.field private static volatile Tgh:Lcom/bytedance/sdk/component/Sf/ac/ROR;

.field private static volatile WAv:Lcom/bytedance/sdk/component/Sf/ac/ROR;

.field private static volatile ac:Lcom/bytedance/sdk/component/Sf/ac/ROR;

.field private static volatile cJ:Z

.field private static volatile fl:Lcom/bytedance/sdk/component/Sf/ac/ROR;

.field private static volatile hm:Lcom/bytedance/sdk/component/Sf/ac/ROR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/lG$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG$1;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sf/ac/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/Qhi;)V

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/lG$3;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG$3;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sf/ac/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/Tgh;)V

    const/4 v0, 0x0

    .line 385
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    .line 387
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ABk()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 3

    .line 427
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 428
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 430
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 432
    :try_start_1
    const-string v1, "ad"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 434
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 437
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 438
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static CJ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 162
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->iMK()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/ROR;->cJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static CJ(Lcom/bytedance/sdk/component/Sf/hm;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 323
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_1

    return-void

    .line 326
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ABk()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/lG$9;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/hm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/lG$9;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/hm;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 334
    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/component/Sf/ROR;->fl(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public static Gm()Z
    .locals 1

    .line 596
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Ug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->mZ()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static HzH()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 500
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->Sf:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 501
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 503
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Sf:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 505
    :try_start_1
    const-string v1, "image"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->Sf:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Sf:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 507
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 510
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Sf:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 511
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 10

    .line 618
    const-string v0, "logTaskCount"

    const-string v1, "reportLogThreshold"

    const-string v2, "allowCoreTimeOut"

    const-string v3, "keepAlive"

    const-string v4, "createSize"

    const-string v5, "maxSize"

    const-string v6, "coreSize"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object v7

    .line 621
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Ug()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    .line 622
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    .line 623
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v9

    invoke-interface {v9}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Wrw()Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 626
    invoke-virtual {v9, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_7

    .line 629
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    .line 630
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 631
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    .line 634
    :cond_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 635
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    .line 638
    :cond_2
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 639
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    .line 642
    :cond_3
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 643
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v7, v3, v4}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    .line 646
    :cond_4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 647
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    .line 650
    :cond_5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 651
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    .line 654
    :cond_6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 655
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 660
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_7
    :goto_1
    return-object v7
.end method

.method private static Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 0

    .line 607
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    if-nez p1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object p0

    return-object p0

    .line 611
    :cond_0
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)V

    return-object p1
.end method

.method public static Qhi()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/ROR;->Tgh()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/Sf/ac/cJ;)V
    .locals 1

    .line 380
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->WAv()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V
    .locals 3

    .line 200
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->iMK()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/lG$4;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/hm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/lG$4;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/hm;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 211
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/component/Sf/ROR;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/Sf/hm;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 247
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_1

    return-void

    .line 251
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/lG$6;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/hm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/lG$6;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/hm;)V

    .line 258
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->Qhi(I)V

    .line 259
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->kYc()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const/4 v0, 0x5

    .line 261
    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/component/Sf/ROR;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;II)V

    return-void
.end method

.method public static Qhi(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 189
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_1

    return-void

    .line 192
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 195
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ac()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Ug()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ROR()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 216
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->kYc()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/ROR;->ac()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static Sf()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 518
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->hm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 519
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 521
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->hm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 523
    :try_start_1
    const-string v1, "express"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->hm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->hm:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 525
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 528
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->hm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 529
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static Tgh()Z
    .locals 3

    .line 174
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "pag_log"

    goto :goto_0

    .line 177
    :cond_0
    const-string v0, "csj_log"

    .line 180
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 184
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static WAv()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 572
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->WAv:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 573
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 575
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->WAv:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 577
    :try_start_1
    const-string v1, "net"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->WAv:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->WAv:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 579
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 582
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->WAv:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 583
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static ac()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->pA()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/ROR;->CJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static ac(Lcom/bytedance/sdk/component/Sf/hm;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 272
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->pA()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/lG$7;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/hm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/lG$7;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/hm;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 285
    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/component/Sf/ROR;->ac(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public static ac(Lcom/bytedance/sdk/component/Sf/hm;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 341
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_1

    return-void

    .line 344
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->hpZ()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/lG$10;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/hm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/lG$10;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/hm;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 352
    :cond_2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/Sf/ROR;->ac(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method private static cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    .locals 15

    .line 666
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const-string p0, "unknown"

    .line 669
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;-><init>()V

    .line 670
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v1, v8

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "monitor"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "cache"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "aidl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_1

    :sswitch_5
    const-string v1, "log"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_1

    :sswitch_6
    const-string v1, "io"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v6

    goto :goto_1

    :sswitch_7
    const-string v1, "ad"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v1, v7

    goto :goto_1

    :sswitch_8
    const-string v1, "express"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v1, v9

    :goto_1
    const-wide/16 v10, 0x2710

    const-wide/16 v12, 0x4e20

    const/16 v14, 0xa

    packed-switch v1, :pswitch_data_0

    .line 773
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 774
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    const/16 v0, 0x10

    .line 775
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 776
    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 777
    invoke-virtual {p0, v12, v13}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 778
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 779
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 780
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 781
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto/16 :goto_2

    .line 762
    :pswitch_0
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 763
    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 764
    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 765
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 766
    invoke-virtual {p0, v10, v11}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 767
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 768
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 769
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 770
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto/16 :goto_2

    .line 738
    :pswitch_1
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 739
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 740
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 741
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 742
    invoke-virtual {p0, v12, v13}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 743
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 744
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 745
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 746
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto/16 :goto_2

    .line 694
    :pswitch_2
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 695
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 696
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 697
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    const-wide/16 v0, 0x1388

    .line 698
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 699
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 700
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    const/16 v0, 0x14

    .line 701
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 702
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto/16 :goto_2

    .line 683
    :pswitch_3
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 684
    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 685
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 686
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 687
    invoke-virtual {p0, v10, v11}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 688
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 689
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 690
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 691
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto/16 :goto_2

    .line 750
    :pswitch_4
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 751
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 752
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 753
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 754
    invoke-virtual {p0, v10, v11}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 755
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 756
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 757
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 758
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto/16 :goto_2

    .line 705
    :pswitch_5
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 706
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 707
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 708
    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 709
    invoke-virtual {p0, v12, v13}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 710
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 711
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 712
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 713
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto :goto_2

    .line 716
    :pswitch_6
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 717
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 718
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 719
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 720
    invoke-virtual {p0, v12, v13}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 721
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 722
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 723
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 724
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto :goto_2

    .line 672
    :pswitch_7
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 673
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 674
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 675
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 676
    invoke-virtual {p0, v12, v13}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 677
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 678
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 679
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 680
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    goto :goto_2

    .line 727
    :pswitch_8
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 728
    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 729
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 730
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 731
    invoke-virtual {p0, v10, v11}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 732
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 733
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 734
    invoke-virtual {p0, v14}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(I)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    .line 735
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;

    move-result-object p0

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e057090 -> :sswitch_8
        0xc23 -> :sswitch_7
        0xd26 -> :sswitch_6
        0x1a344 -> :sswitch_5
        0x1a99d -> :sswitch_4
        0x2daeb0 -> :sswitch_3
        0x5a0af82 -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x49b0bd5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static cJ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 148
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->HzH()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/ROR;->WAv()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static cJ(Lcom/bytedance/sdk/component/Sf/hm;)V
    .locals 3

    .line 223
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->kYc()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/lG$5;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/hm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/lG$5;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/hm;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 234
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/component/Sf/ROR;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public static cJ(Lcom/bytedance/sdk/component/Sf/hm;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 297
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_1

    return-void

    .line 302
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/lG$8;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/hm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/lG$8;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/hm;)V

    .line 309
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->Qhi(I)V

    .line 310
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->pA()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 312
    :cond_2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/Sf/ROR;->cJ(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method public static fl(Lcom/bytedance/sdk/component/Sf/hm;)V
    .locals 3

    .line 358
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/NFd;->Qhi:Z

    if-eqz v0, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ABk()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/lG$2;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/hm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0}, Lcom/bytedance/sdk/openadsdk/utils/lG$2;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/bytedance/sdk/component/Sf/hm;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 369
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->zc()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 371
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ:Z

    if-nez p0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Ug()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 372
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ:Z

    .line 373
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Oy()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :cond_2
    return-void
.end method

.method public static fl()Z
    .locals 2

    .line 169
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hm()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 554
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 555
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 557
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 559
    :try_start_1
    const-string v1, "monitor"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 561
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 564
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Gm:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 565
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static hpZ()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 483
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 484
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 486
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 488
    :try_start_1
    const-string v1, "aidl"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 490
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 493
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 494
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static iMK()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 445
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->Tgh:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 446
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 448
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Tgh:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 450
    :try_start_1
    const-string v1, "cache"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->Tgh:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Tgh:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 452
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 456
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Tgh:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 458
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static kYc()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 536
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->ROR:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 537
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 539
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->ROR:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 541
    :try_start_1
    const-string v1, "io"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->ROR:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->ROR:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 543
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 546
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->ROR:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 547
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static pA()Lcom/bytedance/sdk/component/Sf/ac/ROR;
    .locals 3

    .line 465
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->CJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 466
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 468
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->CJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 470
    :try_start_1
    const-string v1, "log"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->CJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Sf/ac/ROR;)Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->CJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 472
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 475
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->CJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    .line 476
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static zc()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 390
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_2

    .line 391
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/lG;

    monitor-enter v0

    .line 392
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_1

    .line 394
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Ug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Oy()I

    move-result v1

    const/4 v2, 0x1

    .line 396
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 398
    :goto_0
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v4, 0x7fffffff

    const-wide/16 v5, 0x1e

    move-object v2, v9

    move v3, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v9, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 399
    const-string v2, "token_thread_count="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 401
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 403
    :cond_2
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
