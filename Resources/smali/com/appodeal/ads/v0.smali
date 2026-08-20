.class public final Lcom/appodeal/ads/v0;
.super Lcom/appodeal/ads/r5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/v0$b;,
        Lcom/appodeal/ads/v0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/r5<",
        "Lcom/appodeal/ads/w0;",
        "Lcom/appodeal/ads/unified/UnifiedBanner;",
        "Lcom/appodeal/ads/unified/UnifiedBannerParams;",
        "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public t:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public u:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/w0;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/r5;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/appodeal/ads/v0;->u:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/v0;->t:I

    int-to-float v0, v0

    sget-object v1, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/appodeal/ads/AdNetwork;)Lcom/appodeal/ads/unified/UnifiedAd;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetwork;->createBanner()Lcom/appodeal/ads/unified/UnifiedBanner;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lcom/appodeal/ads/unified/UnifiedAdParams;
    .locals 0

    .line 2
    new-instance p1, Lcom/appodeal/ads/v0$b;

    .line 3
    invoke-direct {p1}, Lcom/appodeal/ads/v0$b;-><init>()V

    return-object p1
.end method

.method public final b(Landroid/content/Context;)I
    .locals 2

    sget-boolean v0, Lcom/appodeal/ads/t0;->b:Z

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/AdNetwork;->isSupportSmartBanners()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/appodeal/ads/t0;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x44360000    # 728.0f

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    .line 4
    :cond_1
    sget-object v0, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x43a00000    # 320.0f

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final c()Lcom/appodeal/ads/unified/UnifiedAdCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/v0$a;

    .line 2
    invoke-direct {v0, p0}, Lcom/appodeal/ads/v0$a;-><init>(Lcom/appodeal/ads/v0;)V

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/v0;->t:I

    return v0
.end method
