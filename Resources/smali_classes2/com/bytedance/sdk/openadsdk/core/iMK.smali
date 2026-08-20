.class public Lcom/bytedance/sdk/openadsdk/core/iMK;
.super Ljava/lang/Object;
.source "InitHelper.java"


# static fields
.field public static CJ:F = 0.0f

.field public static volatile Qhi:Z = false

.field private static volatile ROR:Landroid/os/HandlerThread;

.field private static volatile Sf:Landroid/os/Handler;

.field private static volatile Tgh:I

.field public static ac:J

.field public static cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static fl:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    .line 36
    sput-wide v2, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac:J

    .line 48
    sput v1, Lcom/bytedance/sdk/openadsdk/core/iMK;->Tgh:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    sput v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->CJ:F

    const/4 v0, 0x0

    .line 52
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->Sf:Landroid/os/Handler;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "csj_init_handle"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->fl:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CJ()I
    .locals 1

    .line 100
    sget v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->Tgh:I

    return v0
.end method

.method public static Qhi()J
    .locals 2

    .line 66
    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->fl:J

    return-wide v0
.end method

.method public static Qhi(I)V
    .locals 0

    .line 104
    sput p0, Lcom/bytedance/sdk/openadsdk/core/iMK;->Tgh:I

    return-void
.end method

.method public static Qhi(J)V
    .locals 0

    .line 62
    sput-wide p0, Lcom/bytedance/sdk/openadsdk/core/iMK;->fl:J

    return-void
.end method

.method public static Qhi(Ljava/lang/String;)V
    .locals 5

    .line 134
    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 136
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 137
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 138
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    const-string v4, "mediation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string p0, "value"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 148
    const-string v0, "InitHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ROR()V
    .locals 2

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/iMK$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/iMK$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static Tgh()V
    .locals 6

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 114
    sget-wide v2, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    return-void

    .line 117
    :cond_0
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac:J

    .line 118
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/iMK$1;

    const-string v1, "onSharedPreferenceChanged"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/iMK$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public static ac()Landroid/os/Handler;
    .locals 2

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static cJ()Landroid/os/Handler;
    .locals 4

    .line 73
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->Sf:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 83
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/iMK;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/iMK;->Sf:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 85
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/iMK;->Sf:Landroid/os/Handler;

    .line 87
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 74
    :cond_2
    :goto_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/iMK;

    monitor-enter v0

    .line 75
    :try_start_1
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 76
    :cond_3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "csj_init_handle"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/iMK;->Sf:Landroid/os/Handler;

    .line 80
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :cond_5
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/iMK;->Sf:Landroid/os/Handler;

    return-object v0

    :catchall_1
    move-exception v1

    .line 80
    monitor-exit v0

    throw v1
.end method

.method public static fl()Z
    .locals 2

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->CJ()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
