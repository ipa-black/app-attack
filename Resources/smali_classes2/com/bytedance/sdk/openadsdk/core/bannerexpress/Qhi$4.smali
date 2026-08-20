.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;
.super Ljava/lang/Object;
.source "PAGBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/es$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->ac:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->CJ:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    return-void
.end method

.method public Qhi(Landroid/view/View;Z)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->ac:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->CJ:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    :cond_1
    return-void
.end method

.method public Qhi(Z)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method public cJ()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->fl:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/EmptyView;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method
