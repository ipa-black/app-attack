.class public Lcom/bytedance/sdk/openadsdk/dislike/Qhi;
.super Ljava/lang/Object;
.source "DislikeDispatcher.java"


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Qhi;


# instance fields
.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/tP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/tP<",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP;

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/dislike/Qhi;
    .locals 2

    .line 25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Qhi;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Qhi;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Qhi;

    .line 30
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/Qhi;

    return-object v0
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/tP;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
