.class public final Lcom/appodeal/ads/o1$b;
.super Lcom/appodeal/ads/v2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/v2<",
        "Lcom/appodeal/ads/p1;",
        "Lcom/appodeal/ads/r1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object v0

    iget-object v0, v0, Lcom/appodeal/ads/q1;->d:Lcom/appodeal/ads/q1$a;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/v2;-><init>(Lcom/appodeal/ads/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V
    .locals 6

    check-cast p1, Lcom/appodeal/ads/r1;

    check-cast p2, Lcom/appodeal/ads/p1;

    .line 1
    sget-object v0, Lcom/appodeal/ads/o1;->c:Lcom/appodeal/ads/k1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/k1;

    invoke-direct {v0}, Lcom/appodeal/ads/k1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/o1;->c:Lcom/appodeal/ads/k1;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/o1;->c:Lcom/appodeal/ads/k1;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/k1;->b()V

    invoke-static {}, Lcom/appodeal/ads/k1;->a()V

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    .line 4
    iget-object v0, p2, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/appodeal/ads/AdNetwork;->setInterstitialShowing(Z)V

    .line 6
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->z:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 8
    iget v0, v0, Lcom/appodeal/ads/u;->q:I

    if-lez v0, :cond_1

    .line 9
    iget-wide v2, p1, Lcom/appodeal/ads/r;->m:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11
    iget-wide v4, p1, Lcom/appodeal/ads/r;->m:J

    sub-long/2addr v2, v4

    .line 12
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 13
    iget v0, v0, Lcom/appodeal/ads/u;->q:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 14
    invoke-virtual {p0, p1, p2, v1}, Lcom/appodeal/ads/b0;->i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/b0;->c(Lcom/appodeal/ads/r;)V

    return-void
.end method

.method public final d(Lcom/appodeal/ads/r;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/r1;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/r1;

    check-cast p2, Lcom/appodeal/ads/p1;

    .line 1
    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object p1

    iget-object p1, p1, Lcom/appodeal/ads/q1;->d:Lcom/appodeal/ads/q1$a;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/appodeal/ads/q1$c;->c:Z

    return-void
.end method

.method public final j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/r1;

    check-cast p2, Lcom/appodeal/ads/p1;

    .line 1
    invoke-static {}, Lcom/appodeal/ads/k1;->a()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 2
    iget-object p1, p1, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object p1

    iget-object p1, p1, Lcom/appodeal/ads/q1;->d:Lcom/appodeal/ads/q1$a;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/appodeal/ads/q1$c;->c:Z

    :cond_0
    return-void
.end method

.method public final k(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/r1;

    check-cast p2, Lcom/appodeal/ads/p1;

    .line 1
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->z:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 3
    iget p1, p1, Lcom/appodeal/ads/u;->q:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public final l(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 2

    check-cast p1, Lcom/appodeal/ads/r1;

    check-cast p2, Lcom/appodeal/ads/p1;

    .line 1
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 2
    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v0

    .line 3
    iput-wide v0, p1, Lcom/appodeal/ads/r;->t:D

    .line 4
    iget-object v0, p1, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    .line 5
    iget-object p2, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object p2

    if-ne v0, p2, :cond_0

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/appodeal/ads/r;->a(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public final p(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 1

    check-cast p1, Lcom/appodeal/ads/r1;

    check-cast p2, Lcom/appodeal/ads/p1;

    .line 1
    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/b0;->p(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/r;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public final q(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 1

    check-cast p1, Lcom/appodeal/ads/r1;

    check-cast p2, Lcom/appodeal/ads/p1;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final r(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/r1;

    check-cast p2, Lcom/appodeal/ads/p1;

    .line 1
    iget-object p1, p2, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lcom/appodeal/ads/AdNetwork;->setInterstitialShowing(Z)V

    return-void
.end method
