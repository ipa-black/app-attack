.class public Lcom/bytedance/sdk/component/widget/Qhi/Qhi;
.super Ljava/lang/Object;
.source "BaseAdapterInstance.java"


# static fields
.field private static volatile cJ:Lcom/bytedance/sdk/component/widget/Qhi/Qhi;


# instance fields
.field private volatile Qhi:Lcom/bytedance/sdk/component/widget/Qhi/cJ;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/component/widget/Qhi/Qhi;
    .locals 2

    .line 10
    sget-object v0, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    if-nez v0, :cond_1

    .line 11
    const-class v0, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 17
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    return-object v0
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/widget/Qhi/cJ;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi/cJ;

    return-void
.end method

.method public cJ()Lcom/bytedance/sdk/component/widget/Qhi/cJ;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi/cJ;

    return-object v0
.end method
