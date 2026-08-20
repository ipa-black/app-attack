.class Lcom/bytedance/sdk/openadsdk/core/model/HzH$6;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/HzH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/fl/HzH<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$6;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/zc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/fl/zc<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 643
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/zc;->cJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 644
    invoke-interface {p1}, Lcom/bytedance/sdk/component/fl/zc;->ac()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 648
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$6;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pM(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$6;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$6;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$6;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->zc(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->WAv()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 654
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 655
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
