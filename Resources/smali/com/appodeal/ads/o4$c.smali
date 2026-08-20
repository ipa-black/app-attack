.class public final Lcom/appodeal/ads/o4$c;
.super Lcom/appodeal/ads/v2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/o4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/v2<",
        "Lcom/appodeal/ads/m4;",
        "Lcom/appodeal/ads/n4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/o4;->a:Lcom/appodeal/ads/p4;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/v2;-><init>(Lcom/appodeal/ads/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V
    .locals 2

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    sget-object v0, Lcom/appodeal/ads/o4;->e:Lcom/appodeal/ads/p5;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/p5;

    invoke-direct {v0}, Lcom/appodeal/ads/p5;-><init>()V

    sput-object v0, Lcom/appodeal/ads/o4;->e:Lcom/appodeal/ads/p5;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/o4;->e:Lcom/appodeal/ads/p5;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/k1;->b()V

    invoke-static {}, Lcom/appodeal/ads/k1;->a()V

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    .line 4
    iget-object p2, p2, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lcom/appodeal/ads/AdNetwork;->setRewardedShowing(Z)V

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/b0;->c(Lcom/appodeal/ads/r;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(Lcom/appodeal/ads/r;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/n4;

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

.method public final h(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    sget-object p2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 2
    iget-object p2, p2, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 3
    invoke-virtual {p2}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    invoke-static {}, Lcom/appodeal/ads/k1;->a()V

    return-void
.end method

.method public final bridge synthetic k(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    const/4 p1, 0x0

    return p1
.end method

.method public final l(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 2

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

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

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

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

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

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
    .locals 1

    check-cast p1, Lcom/appodeal/ads/n4;

    check-cast p2, Lcom/appodeal/ads/m4;

    .line 1
    iget-object p2, p2, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Lcom/appodeal/ads/AdNetwork;->setRewardedShowing(Z)V

    .line 3
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->h:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/n4;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    sget-object p2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 5
    iget-object p2, p2, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 6
    invoke-virtual {p2}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
