.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;
.super Ljava/lang/Object;
.source "PAGBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic Tgh:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/EmptyView;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/EmptyView;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Tgh:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->CJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Tgh:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 7

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Tgh:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Tgh:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->CJ:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi(Z)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Tgh:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method public cJ()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Tgh:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/EmptyView;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method
