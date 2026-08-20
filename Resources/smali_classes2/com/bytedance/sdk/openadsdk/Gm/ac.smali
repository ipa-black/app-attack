.class public Lcom/bytedance/sdk/openadsdk/Gm/ac;
.super Ljava/lang/Object;
.source "StatsLogManager.java"


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/Gm/ac;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CJ()V
    .locals 3

    .line 442
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$11;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac$11;-><init>()V

    const-string v1, "disk_log"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public static Qhi(Ljava/io/File;)J
    .locals 6

    .line 469
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 473
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 474
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    .line 475
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;
    .locals 2

    .line 51
    sget-object v0, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/ac;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/bytedance/sdk/openadsdk/Gm/ac;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/ac;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Gm/ac;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/ac;

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/ac;

    return-object v0
.end method

.method public static Qhi(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 569
    invoke-static {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static Qhi(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 577
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$16;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac$16;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const-string p0, "ipv6_req"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public static Qhi(JJLjava/lang/String;I)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v3, v0, p0

    sub-long v5, v0, p2

    sub-long v7, p2, p0

    .line 536
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$14;

    move-object v2, v0

    move-object v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/Gm/ac$14;-><init>(JJJLjava/lang/String;I)V

    const-string v1, "ad_show_cost_time"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 66
    new-instance v2, Lcom/bytedance/sdk/openadsdk/Gm/ac$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac$1;-><init>(JLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    const-string p0, "bidding_receive"

    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;J)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$12;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/ac$12;-><init>(J)V

    const-string p1, "bidding_load"

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;)V
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$19;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac$19;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;)V

    const-string p0, "download_gecko_end"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$17;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac$17;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V
    .locals 7

    .line 508
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cJ(Ljava/lang/String;)I

    move-result v0

    .line 509
    const-string v1, "  "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type="

    filled-new-array {v3, p0, v1, v2}, [Ljava/lang/Object;

    .line 510
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/16 p0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-nez p0, :cond_3

    .line 515
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    double-to-int p0, v3

    if-gt p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move p0, v1

    :cond_3
    if-eqz p0, :cond_4

    .line 519
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->fl()Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static ac(Ljava/lang/String;)V
    .locals 2

    .line 554
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$15;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac$15;-><init>(Ljava/lang/String;)V

    const-string p0, "request_monitor_daily"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method private ac(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static cJ()V
    .locals 2

    .line 341
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$6;

    const-string v1, "showFailLog"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public static cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2

    .line 128
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$18;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac$18;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    const-string p0, "download_gecko_start"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static cJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 488
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object p0

    .line 493
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object p0

    .line 494
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->fl()Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$13;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac$13;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 501
    const-string p1, "StatsLogManager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Qhi(JJ)V
    .locals 9

    sub-long v6, p3, p1

    .line 315
    new-instance v8, Lcom/bytedance/sdk/openadsdk/Gm/ac$5;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/Gm/ac$5;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;JJJ)V

    const-string p1, "general_label"

    const/4 p2, 0x0

    invoke-static {p1, p2, v8}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)V
    .locals 2

    .line 188
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->ac(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    const-string v0, "express_ad_render"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    .line 192
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->fl()Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Gm/ac$20;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac$20;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 2

    .line 255
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac$2;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Ljava/lang/String;)V

    const-string p1, "click_playable_test_tool"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 291
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/Gm/ac$4;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "use_playable_test_tool_error"

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/ac$8;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/ac$7;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 406
    :cond_0
    const-string v0, "device_ad_mediation_platform"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$10;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac$10;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Lorg/json/JSONObject;)V

    const-string p1, "ad_revenue"

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ac()V
    .locals 3

    .line 389
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$9;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac$9;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;)V

    const-string v1, "blind_mode_status"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public cJ(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)V
    .locals 2

    .line 235
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->ac(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    const-string v0, "show_backup_endcard"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->fl()Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Gm/ac$21;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac$21;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 2

    .line 272
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/ac$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac$3;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Ljava/lang/String;)V

    const-string p1, "close_playable_test_tool"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method
