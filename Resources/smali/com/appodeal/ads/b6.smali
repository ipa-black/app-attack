.class public abstract Lcom/appodeal/ads/b6;
.super Lcom/appodeal/ads/v2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdObjectType:",
        "Lcom/appodeal/ads/r5<",
        "TAdRequestType;***>;AdRequestType:",
        "Lcom/appodeal/ads/z5<",
        "TAdObjectType;>;>",
        "Lcom/appodeal/ads/v2<",
        "TAdObjectType;TAdRequestType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/g<",
            "TAdRequestType;TAdObjectType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/appodeal/ads/v2;-><init>(Lcom/appodeal/ads/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)V
    .locals 4

    check-cast p1, Lcom/appodeal/ads/z5;

    check-cast p2, Lcom/appodeal/ads/r5;

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)V

    invoke-static {}, Lcom/appodeal/ads/n5;->b()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/b6;->c()Lcom/appodeal/ads/x5;

    move-result-object p3

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 2
    invoke-virtual {p3, p1}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    .line 4
    sget-object v3, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    if-eq v2, v3, :cond_0

    .line 5
    iget-object v1, v1, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/ads/u;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    iget-object p2, v0, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    .line 8
    check-cast p2, Lcom/appodeal/ads/z5;

    .line 9
    invoke-virtual {p3, v0, p2}, Lcom/appodeal/ads/x5;->a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-gtz p2, :cond_1

    .line 10
    invoke-static {p1}, Lcom/appodeal/ads/utils/c;->a(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/b6;->c()Lcom/appodeal/ads/x5;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/appodeal/ads/x5;->b(Landroid/app/Activity;)Lcom/appodeal/ads/a;

    move-result-object p2

    new-instance p3, Lcom/appodeal/ads/y5;

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p3, v0, p2, v1, v2}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;ZZ)V

    invoke-virtual {p0}, Lcom/appodeal/ads/b6;->c()Lcom/appodeal/ads/x5;

    move-result-object p2

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p2, p1, p3, v0}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z

    :cond_1
    return-void
.end method

.method public abstract c()Lcom/appodeal/ads/x5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/x5<",
            "TAdRequestType;TAdObjectType;>;"
        }
    .end annotation
.end method

.method public final h(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/z5;

    check-cast p2, Lcom/appodeal/ads/r5;

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

.method public final k(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/z5;

    check-cast p2, Lcom/appodeal/ads/r5;

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

.method public final p(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 4

    check-cast p1, Lcom/appodeal/ads/z5;

    check-cast p2, Lcom/appodeal/ads/r5;

    .line 1
    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/b0;->p(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/appodeal/ads/b6;->c()Lcom/appodeal/ads/x5;

    move-result-object p1

    invoke-static {}, Lcom/appodeal/ads/n5;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 2
    invoke-virtual {p1, v0}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object v0

    .line 3
    iget-object v2, v0, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    .line 4
    sget-object v3, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    if-eq v2, v3, :cond_0

    .line 5
    iget-object v0, v0, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    iget-object p2, v1, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    .line 8
    check-cast p2, Lcom/appodeal/ads/z5;

    .line 9
    invoke-virtual {p1, v1, p2}, Lcom/appodeal/ads/x5;->a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final r(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 2

    check-cast p1, Lcom/appodeal/ads/z5;

    check-cast p2, Lcom/appodeal/ads/r5;

    .line 1
    iget-object p2, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p2}, Lcom/appodeal/ads/u;->k()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    iget-boolean p2, p1, Lcom/appodeal/ads/r;->h:Z

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p2}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/z5;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/appodeal/ads/r;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 4
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 5
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-virtual {p2, v0}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/b6;->c()Lcom/appodeal/ads/x5;

    move-result-object p2

    invoke-static {}, Lcom/appodeal/ads/n5;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p2, v0, v1, p1}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;)V

    :cond_2
    return-void
.end method
