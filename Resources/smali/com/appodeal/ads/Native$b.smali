.class public final Lcom/appodeal/ads/Native$b;
.super Lcom/appodeal/ads/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/b0<",
        "Lcom/appodeal/ads/s2;",
        "Lcom/appodeal/ads/t2;",
        "Lcom/appodeal/ads/l2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/b0;-><init>(Lcom/appodeal/ads/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;)V
    .locals 2

    check-cast p1, Lcom/appodeal/ads/t2;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/appodeal/ads/r;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p1, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s2;

    invoke-virtual {v0}, Lcom/appodeal/ads/l;->j()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final bridge synthetic a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/t2;->L:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/appodeal/ads/l2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 2
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->u:Z

    return p1
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/t2;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/appodeal/ads/l2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/t2;->K:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/appodeal/ads/l2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Lcom/appodeal/ads/segments/g;
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-object p1, p3, Lcom/appodeal/ads/l2;->u:Lcom/appodeal/ads/segments/g;

    if-nez p1, :cond_0

    .line 2
    const-string p1, "default"

    invoke-static {p1}, Lcom/appodeal/ads/segments/h;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/g;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final f(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/t2;->L:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/appodeal/ads/l2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final g(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/t2;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/appodeal/ads/l2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final h(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/appodeal/ads/s2;->o()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p2

    iget-object p2, p2, Lcom/appodeal/ads/n2;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/n2;->c()V

    :cond_1
    return-void
.end method

.method public final h(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    iget-object p1, p1, Lcom/appodeal/ads/t2;->K:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/appodeal/ads/l2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final k(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/t2;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/appodeal/ads/l2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 2
    iget p1, p1, Lcom/appodeal/ads/u;->q:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 2

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 2
    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v0

    .line 3
    iput-wide v0, p1, Lcom/appodeal/ads/r;->t:D

    .line 4
    iget-object p2, p2, Lcom/appodeal/ads/s2;->s:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    iput p2, p1, Lcom/appodeal/ads/t2;->J:I

    return-void
.end method

.method public final l(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 6
    iget-object p1, p1, Lcom/appodeal/ads/t2;->K:Ljava/util/LinkedHashSet;

    invoke-virtual {p3}, Lcom/appodeal/ads/l2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final p(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 1

    check-cast p1, Lcom/appodeal/ads/t2;

    check-cast p2, Lcom/appodeal/ads/s2;

    .line 1
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 2
    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z

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
