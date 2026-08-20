.class public final Lcom/appodeal/ads/j2;
.super Lcom/appodeal/ads/r5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/j2$b;,
        Lcom/appodeal/ads/j2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/r5<",
        "Lcom/appodeal/ads/k2;",
        "Lcom/appodeal/ads/unified/UnifiedMrec;",
        "Lcom/appodeal/ads/unified/UnifiedMrecParams;",
        "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/k2;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/r5;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/appodeal/ads/AdNetwork;)Lcom/appodeal/ads/unified/UnifiedAd;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetwork;->createMrec()Lcom/appodeal/ads/unified/UnifiedMrec;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lcom/appodeal/ads/unified/UnifiedAdParams;
    .locals 0

    .line 2
    new-instance p1, Lcom/appodeal/ads/j2$b;

    .line 3
    invoke-direct {p1}, Lcom/appodeal/ads/j2$b;-><init>()V

    return-object p1
.end method

.method public final b(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final c()Lcom/appodeal/ads/unified/UnifiedAdCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/j2$a;

    .line 2
    invoke-direct {v0, p0}, Lcom/appodeal/ads/j2$a;-><init>(Lcom/appodeal/ads/j2;)V

    return-object v0
.end method
