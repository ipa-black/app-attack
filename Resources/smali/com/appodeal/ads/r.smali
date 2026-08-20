.class public abstract Lcom/appodeal/ads/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdObjectType:",
        "Lcom/appodeal/ads/l;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Lorg/json/JSONObject;

.field public H:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/r<",
            "TAdObjectType;>;"
        }
    .end annotation
.end field

.field public final I:Lcom/appodeal/ads/r$a;

.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Long;

.field public l:Lcom/appodeal/ads/networking/binders/b$a$a;

.field public m:J

.field public n:J

.field public o:J

.field public final p:Ljava/util/concurrent/atomic/AtomicLong;

.field public final q:Ljava/util/HashMap;

.field public final r:Ljava/lang/String;

.field public s:Lcom/appodeal/ads/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdObjectType;"
        }
    .end annotation
.end field

.field public t:D

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/r;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/r;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/r;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/r;->k:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/appodeal/ads/r;->m:J

    iput-wide v2, p0, Lcom/appodeal/ads/r;->n:J

    iput-wide v2, p0, Lcom/appodeal/ads/r;->o:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/appodeal/ads/r;->p:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/r;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->u:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->v:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->w:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->x:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->y:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->z:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->A:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->B:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->C:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->D:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->E:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/r;->F:Z

    new-instance v0, Lcom/appodeal/ads/r$a;

    invoke-direct {v0}, Lcom/appodeal/ads/r$a;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/r;->I:Lcom/appodeal/ads/r$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appodeal/ads/s;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->h:Z

    invoke-virtual {p1}, Lcom/appodeal/ads/s;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/appodeal/ads/r;->i:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final a(Ljava/lang/String;)Lcom/appodeal/ads/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TAdObjectType;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/l;

    return-object p1

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    return-object p1
.end method

.method public final a(I)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(IZZ)Lorg/json/JSONObject;
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_1

    iget-object p2, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    iget-boolean p1, p0, Lcom/appodeal/ads/r;->i:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-object p2
.end method

.method public a(Lcom/appodeal/ads/api/Stats$Builder;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/appodeal/ads/d0;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/appodeal/ads/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdObjectType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/appodeal/ads/l;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/e0;->d:Lcom/appodeal/ads/e0;

    if-ne v0, v1, :cond_1

    return-void

    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/appodeal/ads/r;->F:Z

    if-nez v0, :cond_3

    .line 26
    iget-boolean v0, p0, Lcom/appodeal/ads/r;->C:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appodeal/ads/l;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Network Error"

    invoke-static {v0, p2, p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/l;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ") "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "(network not provided any appropriate text or code)"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/l;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/appodeal/ads/networking/binders/b$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/r;->l:Lcom/appodeal/ads/networking/binders/b$a$a;

    return-void
.end method

.method public final a(Lcom/appodeal/ads/waterfall_filter/a;)V
    .locals 1

    .line 17
    iget-object p1, p1, Lcom/appodeal/ads/waterfall_filter/a;->e:Lcom/appodeal/ads/waterfall_filter/d;

    .line 18
    iget-object v0, p1, Lcom/appodeal/ads/waterfall_filter/d;->b:Ljava/util/ArrayList;

    .line 19
    iput-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    .line 20
    iget-object p1, p1, Lcom/appodeal/ads/waterfall_filter/d;->a:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/r;->k:Ljava/lang/Long;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->w:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/r;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/appodeal/ads/r;->x:Z

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/appodeal/ads/r;->w:Z

    return-void
.end method

.method public final a(Lcom/appodeal/ads/l;Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdObjectType;",
            "Lcom/appodeal/ads/segments/g;",
            "Lcom/appodeal/ads/modules/common/internal/adtype/AdType;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/appodeal/ads/l;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 1
    :goto_0
    iget-object v4, p1, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 3
    iget-object v3, p1, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    iget-object v4, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/l;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 7
    iget-object v4, v4, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 8
    invoke-virtual {v4}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 9
    iget-object v5, v3, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v5}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v5

    .line 10
    invoke-virtual {p2, v4, p3, v5, v6}, Lcom/appodeal/ads/segments/g;->a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;D)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    iget-object p1, v3, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p1}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    iget-object p2, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appodeal/ads/l;

    .line 13
    iget-object p3, p3, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 14
    invoke-interface {p3}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    move v0, v3

    goto :goto_2

    :catch_1
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return v0
.end method

.method public final b(Lcom/appodeal/ads/d0;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/appodeal/ads/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdObjectType;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/r;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/r;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/r;->j:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appodeal/ads/r;->h:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/appodeal/ads/r;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/r;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/r;->C:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/r;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/r;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/r;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->E:Z

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/l;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    iget-object v1, p0, Lcom/appodeal/ads/r;->I:Lcom/appodeal/ads/r$a;

    .line 2
    iput-object v0, v1, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/l;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/appodeal/ads/r;->u:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->v:Z

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/appodeal/ads/l;->k()V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final c(Lcom/appodeal/ads/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdObjectType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d()Lcom/appodeal/ads/networking/binders/b$a$a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r;->l:Lcom/appodeal/ads/networking/binders/b$a$a;

    return-object v0
.end method

.method public final d(Lcom/appodeal/ads/l;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/r;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/l;

    .line 1
    iget-object v2, v1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 2
    invoke-interface {v2}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v3}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/r;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/r;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/r;->n:J

    return-wide v0
.end method

.method public abstract e(Lcom/appodeal/ads/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdObjectType;)V"
        }
    .end annotation
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/r;->o:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/appodeal/ads/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    return-object v0
.end method

.method public final i()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final l()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r;->k:Ljava/lang/Long;

    return-object v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/r;->m:J

    return-wide v0
.end method

.method public abstract n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->u:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->h:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->F:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->z:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->i:Z

    return v0
.end method

.method public final u()Z
    .locals 4

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/appodeal/ads/r;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/r;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 7

    invoke-static {}, Lcom/appodeal/ads/api/Stats;->newBuilder()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/r;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/api/Stats$Builder;->setStart(J)Lcom/appodeal/ads/api/Stats$Builder;

    iget-boolean v1, p0, Lcom/appodeal/ads/r;->u:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/appodeal/ads/r;->v:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/api/Stats$Builder;->setSuccessful(Z)Lcom/appodeal/ads/api/Stats$Builder;

    iget-boolean v1, p0, Lcom/appodeal/ads/r;->x:Z

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/api/Stats$Builder;->setCompleted(Z)Lcom/appodeal/ads/api/Stats$Builder;

    iget-object v1, p0, Lcom/appodeal/ads/r;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/f5;

    invoke-interface {v4}, Lcom/appodeal/ads/AdUnit;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/appodeal/ads/networking/LoadingError;->Canceled:Lcom/appodeal/ads/networking/LoadingError;

    .line 1
    invoke-interface {v4}, Lcom/appodeal/ads/AdUnit;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/appodeal/ads/networking/LoadingError;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v5

    goto :goto_3

    :cond_2
    sget-object v5, Lcom/appodeal/ads/e0;->e:Lcom/appodeal/ads/e0;

    :goto_3
    invoke-interface {v4, v5}, Lcom/appodeal/ads/c0;->a(Lcom/appodeal/ads/e0;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/appodeal/ads/g5;->a(J)V

    .line 3
    :cond_3
    invoke-interface {v4}, Lcom/appodeal/ads/f5;->a()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/appodeal/ads/api/Stats$Builder;->addAdUnit(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$Builder;

    invoke-interface {v4}, Lcom/appodeal/ads/g5;->c()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2, v3}, Lcom/appodeal/ads/api/Stats$Builder;->setFinish(J)Lcom/appodeal/ads/api/Stats$Builder;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/api/Stats$Builder;)V

    return-object v0
.end method

.method public final x()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/r;->k:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->C:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->B:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->v:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->u:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->y:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->A:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->D:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/r;->z:Z

    return-void
.end method

.method public final z()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/r;->a(ZZ)V

    return-void
.end method
