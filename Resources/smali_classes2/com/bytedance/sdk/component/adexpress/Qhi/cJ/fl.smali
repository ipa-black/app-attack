.class public Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/fl;
.super Ljava/lang/Object;
.source "TemplateDirUtil.java"


# direct methods
.method public static Qhi(FFFF)Landroid/view/animation/Interpolator;
    .locals 0

    .line 18
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0
.end method

.method public static Qhi()Ljava/io/File;
    .locals 1

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->ac()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;->cJ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
