.class public Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;
.super Ljava/lang/Object;
.source "FeedAdManager.java"


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;


# instance fields
.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/tP;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP;

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;
    .locals 2

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;

    return-object v0
.end method


# virtual methods
.method public Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/fl;)V
    .locals 9

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/model/qMt;-><init>()V

    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/common/fl;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    const/4 p1, 0x5

    invoke-interface {v6, p2, v7, p1, v8}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void
.end method
