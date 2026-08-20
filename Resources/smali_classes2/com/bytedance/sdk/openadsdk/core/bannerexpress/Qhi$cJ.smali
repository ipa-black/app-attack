.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "PAGBannerAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "cJ"
.end annotation


# instance fields
.field Qhi:Z

.field ac:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method constructor <init>(ZLcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V
    .locals 1

    .line 456
    const-string v0, "ReportWindowFocusChangedAdShow"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    .line 457
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;->Qhi:Z

    .line 458
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 459
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;->ac:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;->ac:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;->ac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;->Qhi:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_0
    return-void
.end method
