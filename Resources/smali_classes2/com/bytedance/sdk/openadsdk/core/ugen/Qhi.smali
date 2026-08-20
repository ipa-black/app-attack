.class public Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;
.super Ljava/lang/Object;
.source "ImageLoaderProvider.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Qhi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/content/Context;Ljava/lang/String;FLcom/bytedance/adsdk/ugeno/Qhi$Qhi;)V
    .locals 1

    .line 77
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    .line 82
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$3;

    invoke-direct {v0, p0, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;FLandroid/content/Context;)V

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/hm;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$2;

    invoke-direct {p2, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;Lcom/bytedance/adsdk/ugeno/Qhi$Qhi;)V

    .line 90
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    return-void
.end method

.method public Qhi(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 38
    instance-of p1, p3, Lcom/bytedance/sdk/openadsdk/core/widget/GifView;

    if-eqz p1, :cond_0

    .line 39
    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/widget/GifView;

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/GifView;->setAdjustViewBounds(Z)V

    .line 41
    const-string p1, "#00000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/GifView;->setBackgroundColor(I)V

    .line 42
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    const/4 p2, 0x3

    .line 43
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 44
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$1;

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;Lcom/bytedance/sdk/openadsdk/core/widget/GifView;)V

    .line 45
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    return-void

    .line 70
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/fl/WAv;

    return-void
.end method
