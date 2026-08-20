.class public final Lcom/appodeal/ads/t0$b;
.super Lcom/appodeal/ads/a6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/a6<",
        "Lcom/appodeal/ads/v0;",
        "Lcom/appodeal/ads/w0;",
        "Lcom/appodeal/ads/t0$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/t0$c;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Banner:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-direct {p0, p1, v0}, Lcom/appodeal/ads/a6;-><init>(Lcom/appodeal/ads/b6;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)Lcom/appodeal/ads/l;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/w0;

    .line 1
    new-instance v0, Lcom/appodeal/ads/v0;

    invoke-direct {v0, p1, p2, p3}, Lcom/appodeal/ads/v0;-><init>(Lcom/appodeal/ads/w0;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V

    return-object v0
.end method

.method public final a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/r;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t0$d;

    .line 2
    new-instance v0, Lcom/appodeal/ads/w0;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/w0;-><init>(Lcom/appodeal/ads/t0$d;)V

    return-object v0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/w0;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 4
    check-cast v0, Lcom/appodeal/ads/v0;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    .line 6
    check-cast v1, Lcom/appodeal/ads/unified/UnifiedBanner;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/appodeal/ads/unified/UnifiedBanner;->isRefreshOnRotate()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/appodeal/ads/v0;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    .line 7
    :cond_0
    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 8
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 9
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "banners_disabled"

    return-object v0
.end method

.method public final w()Lcom/appodeal/ads/s;
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/t0$d;

    invoke-direct {v0}, Lcom/appodeal/ads/t0$d;-><init>()V

    return-object v0
.end method

.method public final x()Lcom/appodeal/ads/x5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/x5<",
            "Lcom/appodeal/ads/w0;",
            "Lcom/appodeal/ads/v0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v0

    return-object v0
.end method
