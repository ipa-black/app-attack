.class Lcom/bytedance/sdk/openadsdk/cJ/zc$Qhi;
.super Ljava/lang/Object;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/cJ/zc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Qhi"
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/cJ/zc;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/cJ/zc$1;)V
    .locals 0

    .line 653
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/zc$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 675
    const-string v0, ""

    return-object v0
.end method

.method public readPercent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 661
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 670
    :catchall_0
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/zc;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
