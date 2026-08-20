.class public Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
.super Ljava/lang/Object;
.source "RequestMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh$Qhi;
    }
.end annotation


# static fields
.field public static Qhi:I = -0xa


# instance fields
.field private CJ:J

.field private Gm:I

.field private ROR:I

.field private Sf:I

.field private Tgh:J

.field private WAv:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private final cJ:I

.field private fl:J

.field private hm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->cJ:I

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ROR:I

    return p0
.end method

.method public static CJ()V
    .locals 5

    .line 192
    const-class v0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    monitor-enter v0

    .line 193
    :try_start_0
    const-string v1, "tt_sdk_req_monitor"

    const-string v2, "req_monitor_las_req"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 195
    const-string v1, "tt_sdk_req_monitor"

    const-string v2, "req_monitor_las_req"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x5265c00

    cmp-long v1, v3, v1

    if-ltz v1, :cond_1

    .line 199
    const-string v1, "tt_sdk_req_monitor"

    const-string v2, "req_monitor_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->ac(Ljava/lang/String;)V

    .line 205
    const-string v1, "tt_sdk_req_monitor"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;)V

    .line 206
    const-string v1, "tt_sdk_req_monitor"

    const-string v2, "req_monitor_las_req"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->cJ:I

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Gm:I

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->fl:J

    return-wide v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->hm:Z

    return p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Sf:I

    return p0
.end method


# virtual methods
.method public CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->WAv:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    .locals 0

    .line 131
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Gm:I

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    .locals 2

    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    sget-object v1, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ROR:I

    .line 109
    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    sget-object v1, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->fl:[B

    if-eqz v0, :cond_1

    .line 110
    iget-object p1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->fl:[B

    array-length p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ROR:I

    :cond_1
    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->hm:Z

    return-object p0
.end method

.method public Qhi()V
    .locals 2

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ:J

    return-void
.end method

.method public ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    .locals 1

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    array-length p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Sf:I

    :cond_0
    return-object p0
.end method

.method public ac()V
    .locals 4

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->fl:J

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh$1;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    .locals 1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    array-length p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ROR:I

    :cond_0
    return-object p0
.end method

.method public cJ()V
    .locals 4

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Tgh:J

    return-void
.end method
