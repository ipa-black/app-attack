.class public Lcom/bytedance/sdk/openadsdk/CJ/MQ;
.super Ljava/lang/Object;
.source "FeatureCaculateManager.java"


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;


# instance fields
.field private volatile CJ:Z

.field private ROR:Ljava/lang/String;

.field private Sf:I

.field private volatile Tgh:Landroid/os/Handler;

.field private final WAv:Ljava/lang/Runnable;

.field private ac:Lcom/bytedance/sdk/openadsdk/zc/Qhi;

.field private final cJ:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/zc/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private volatile fl:Landroid/os/HandlerThread;

.field private volatile hm:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac:Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->CJ:Z

    .line 49
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    .line 50
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Tgh:Landroid/os/Handler;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ROR:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Sf:I

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->hm:J

    .line 237
    new-instance v0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;-><init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->WAv:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->WAv:Ljava/lang/Runnable;

    return-object p0
.end method

.method private CJ()V
    .locals 6

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 109
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->hm:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 110
    new-instance v2, Lcom/bytedance/sdk/openadsdk/CJ/MQ$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/CJ/MQ$1;-><init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;J)V

    const-string v0, "track_feature_result"

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Sf:I

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Sf:I

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->hm:J

    return-wide p1
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;
    .locals 2

    .line 80
    sget-object v0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    if-nez v0, :cond_1

    .line 81
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ac;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    .line 85
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 87
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ROR:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl()V

    .line 130
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->fl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;-><init>(Ljava/lang/String;)V

    .line 135
    :cond_1
    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac:Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    if-nez v0, :cond_3

    .line 139
    new-instance v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac:Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    .line 141
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac:Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private ac()Landroid/os/Handler;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Tgh:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 67
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/iMK;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Tgh:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Tgh:Landroid/os/Handler;

    .line 71
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 58
    :cond_2
    :goto_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/iMK;

    monitor-enter v0

    .line 59
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 60
    :cond_3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "csj_feature"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Tgh:Landroid/os/Handler;

    .line 64
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Tgh:Landroid/os/Handler;

    return-object v0

    :catchall_1
    move-exception v1

    .line 64
    monitor-exit v0

    throw v1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Lcom/bytedance/sdk/openadsdk/zc/Qhi;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac:Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Landroid/os/Handler;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private fl()V
    .locals 4

    .line 287
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->CJ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->CJ:Z

    .line 289
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->WAv:Ljava/lang/Runnable;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->CJ()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    const-string v0, "videoPercent30"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/CJ/MQ$4;-><init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 2

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    const-string v0, "landingStart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landingFinish"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landingContinue"

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landingPause"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/CJ/MQ$5;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/CJ/MQ$5;-><init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    const-string v0, "show"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "click"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dislike"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    const-string v0, "play_start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feed_pause"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feed_continue"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feed_over"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feed_break"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;-><init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    .line 160
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac()Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;-><init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    const-string v0, "feature_data"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ROR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->CJ()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 2

    .line 294
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/CJ/MQ$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ$7;-><init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
