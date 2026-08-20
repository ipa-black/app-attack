.class public final Lcom/appodeal/ads/v0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/UnifiedBannerParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxHeight(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget-boolean p1, Lcom/appodeal/ads/t0;->b:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/appodeal/ads/t0;->c:Z

    if-eqz p1, :cond_1

    :cond_0
    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 2
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 3
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/appodeal/ads/f1;->m(Landroid/content/Context;)F

    move-result p1

    const/high16 v0, 0x44340000    # 720.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/16 p1, 0x5a

    goto :goto_0

    :cond_1
    const/16 p1, 0x32

    :goto_0
    return p1
.end method

.method public final getMaxWidth(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 2
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 3
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/appodeal/ads/f1;->p(Landroid/content/Context;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sget-boolean v0, Lcom/appodeal/ads/t0;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/appodeal/ads/t0;->c:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2d8

    if-lt p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x140

    :goto_0
    return p1
.end method

.method public final needLeaderBoard(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/t0;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final obtainPlacementId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    invoke-static {v0}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/segments/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final obtainSegmentId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->r()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final useSmartBanners(Landroid/content/Context;)Z
    .locals 0

    sget-boolean p1, Lcom/appodeal/ads/t0;->b:Z

    return p1
.end method
