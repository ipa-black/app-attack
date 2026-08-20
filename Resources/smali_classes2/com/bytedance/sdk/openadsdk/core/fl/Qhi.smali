.class Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;
.super Ljava/lang/Object;
.source "MSSdkImpl.java"


# instance fields
.field private volatile CJ:Z

.field private Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

.field private volatile ac:Z

.field private volatile cJ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac:Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->CJ:Z

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi()V

    return-void
.end method

.method private CJ(Ljava/lang/String;)V
    .locals 2

    .line 306
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->CJ:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->fl()Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;Z)V

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->CJ:Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;)Lcom/pgl/ssdk/ces/out/PglSSManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    return-object p0
.end method

.method private ROR()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi()V

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ:Z

    return v0
.end method

.method private Sf()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getInstance()Lcom/pgl/ssdk/ces/out/PglSSManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    :cond_0
    return-void
.end method

.method private hm()Ljava/lang/Class;
    .locals 2

    .line 295
    :try_start_0
    const-string v0, "com.pgl.ssdk.ces.out.PglSSManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 296
    :try_start_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :catchall_1
    const/4 v1, 0x0

    .line 300
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac:Z

    :goto_0
    return-object v0
.end method


# virtual methods
.method public CJ()Ljava/lang/String;
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ROR()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Sf()V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public Qhi(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    invoke-virtual {v0, p1, p2}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getFeatureHash(Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 270
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public declared-synchronized Qhi()V
    .locals 7

    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 58
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string v2, "app_id"

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 64
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->builder()Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    move-result-object v3

    .line 69
    invoke-virtual {v3, v2}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->setAppId(Ljava/lang/String;)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    move-result-object v2

    .line 70
    invoke-virtual {v2, v0}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->setOVRegionType(I)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    move-result-object v2

    const/16 v3, 0x183e

    .line 71
    invoke-virtual {v2, v3}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->setAdsdkVersionCode(I)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->build()Lcom/pgl/ssdk/ces/out/PglSSConfig;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 73
    invoke-static/range {v1 .. v6}, Lcom/pgl/ssdk/ces/out/PglSSManager;->init(Landroid/content/Context;Lcom/pgl/ssdk/ces/out/PglSSConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 74
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Sf()V

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    :try_start_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->hm()Ljava/lang/Class;

    .line 81
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 84
    :goto_0
    :try_start_4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac:Z

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getLoadError()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->CJ(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 88
    :try_start_5
    const-string v1, "mssdk"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->cJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 92
    :cond_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Qhi(Landroid/view/MotionEvent;)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Sf()V

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/out/PglSSManager;->checkEventVirtual(Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ROR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Sf()V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/out/PglSSManager;->setGaid(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Tgh()I
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getInitStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method public ac()V
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ROR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Sf()V

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ROR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Sf()V

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/out/PglSSManager;->reportNow(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ROR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Sf()V

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_2

    .line 179
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 180
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$2;

    const-string v1, "updateDid"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/out/PglSSManager;->setDeviceId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ:Z

    return v0
.end method

.method public fl()Ljava/lang/String;
    .locals 2

    .line 220
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ROR()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Sf()V

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi:Lcom/pgl/ssdk/ces/out/PglSSManager;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/out/PglSSManager;->getSofChara()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method
