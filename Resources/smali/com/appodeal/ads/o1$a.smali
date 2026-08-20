.class public final Lcom/appodeal/ads/o1$a;
.super Lcom/appodeal/ads/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/u<",
        "Lcom/appodeal/ads/p1;",
        "Lcom/appodeal/ads/r1;",
        "Lcom/appodeal/ads/o1$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/o1$b;)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Interstitial:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-static {}, Lcom/appodeal/ads/segments/h;->b()Lcom/appodeal/ads/segments/g;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/appodeal/ads/u;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/segments/g;)V

    const p1, 0x3f8ccccd    # 1.1f

    iput p1, p0, Lcom/appodeal/ads/u;->z:F

    const p1, 0x3fb33333    # 1.4f

    iput p1, p0, Lcom/appodeal/ads/u;->A:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)Lcom/appodeal/ads/l;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/r1;

    .line 1
    new-instance v0, Lcom/appodeal/ads/p1;

    invoke-direct {v0, p1, p2, p3}, Lcom/appodeal/ads/p1;-><init>(Lcom/appodeal/ads/r1;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)V

    return-object v0
.end method

.method public final a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/r;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/o1$c;

    .line 2
    new-instance v0, Lcom/appodeal/ads/r1;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/r1;-><init>(Lcom/appodeal/ads/o1$c;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/appodeal/ads/s;)V
    .locals 1

    check-cast p2, Lcom/appodeal/ads/o1$c;

    .line 23
    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/q4;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/appodeal/ads/n1;

    invoke-direct {p1}, Lcom/appodeal/ads/n1;-><init>()V

    .line 24
    sget-object p2, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 25
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/u;->a(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    :goto_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/appodeal/ads/AdNetwork;Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetwork;->isInterstitialShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x1

    if-le p1, p4, :cond_2

    .line 13
    iget-object p1, p0, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    .line 14
    move-object v1, p1

    check-cast v1, Lcom/appodeal/ads/r1;

    .line 15
    iget-object v2, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    sub-int/2addr p1, p4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/r;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    check-cast p1, Lcom/appodeal/ads/r1;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz p1, :cond_2

    .line 18
    check-cast p1, Lcom/appodeal/ads/p1;

    .line 19
    iget-object p1, p1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 20
    invoke-interface {p1}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p2}, Lcom/appodeal/ads/r;->a(Lorg/json/JSONObject;)V

    .line 22
    :cond_1
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object p1

    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    return p4

    :cond_2
    return v0
.end method

.method public final a(Lcom/appodeal/ads/r;I)Z
    .locals 2

    check-cast p1, Lcom/appodeal/ads/r1;

    .line 3
    iget-object v0, p1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p1, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Lcom/appodeal/ads/r;->a(I)Lorg/json/JSONObject;

    move-result-object p2

    if-ne v0, p2, :cond_1

    .line 7
    iget-object p1, p1, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    .line 8
    const-string p2, "status"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/appodeal/ads/u;->e:Lcom/appodeal/ads/i;

    .line 10
    invoke-virtual {p2, p1}, Lcom/appodeal/ads/i;->b(Ljava/lang/String;)Lcom/appodeal/ads/AdNetwork;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetwork;->isInterstitialShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object v0

    iget-object v0, v0, Lcom/appodeal/ads/q1;->d:Lcom/appodeal/ads/q1$a;

    new-instance v1, Lcom/appodeal/ads/o1$c;

    invoke-direct {v1}, Lcom/appodeal/ads/o1$c;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/appodeal/ads/q1$c;->a(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "interstitials_disabled"

    return-object v0
.end method

.method public final k()Z
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object v0

    .line 1
    iget-boolean v0, v0, Lcom/appodeal/ads/q1;->c:Z

    return v0
.end method
