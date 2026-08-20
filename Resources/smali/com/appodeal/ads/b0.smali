.class public abstract Lcom/appodeal/ads/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdObjectType:",
        "Lcom/appodeal/ads/l;",
        "AdRequestType:",
        "Lcom/appodeal/ads/r<",
        "TAdObjectType;>;ReferenceObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/appodeal/ads/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/g<",
            "TAdRequestType;TAdObjectType;TReferenceObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$SiN4D5aCB_Y5EzdNvPou-Ua5a2w(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/b0;->d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UO64QRC1QgLNNKIDxKSAmqUyL68(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/b0;->c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kns7tp9KHfoqupjmoDcKv-_2pPQ(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/b0;->e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l4IMZLv7a6VRUJd3dkl5ODrBSkw(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qeeMLL2k4EUBLdnixPQ6zgo9uic(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/g<",
            "TAdRequestType;TAdObjectType;TReferenceObjectType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/b0;->b:Lcom/appodeal/ads/g;

    return-void
.end method

.method private synthetic a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b0;->b:Lcom/appodeal/ads/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appodeal/ads/g;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 0

    iget-object p4, p0, Lcom/appodeal/ads/b0;->b:Lcom/appodeal/ads/g;

    invoke-virtual {p4, p1, p2, p3}, Lcom/appodeal/ads/g;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b0;->b:Lcom/appodeal/ads/g;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/g;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method private synthetic d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/b0;->b:Lcom/appodeal/ads/g;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/g;->e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method

.method private synthetic e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->m(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/appodeal/ads/r;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p1, Lcom/appodeal/ads/r;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p1, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/l;

    if-nez v1, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    iget-object v3, v1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v3}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v3

    .line 11
    iget-object v5, v2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 12
    invoke-interface {v5}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    :goto_2
    move-object v1, v2

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1}, Lcom/appodeal/ads/l;->j()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    .line 14
    iget-object v2, v1, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    .line 15
    iget-object v3, v1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v3}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v3

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Lcom/appodeal/ads/l;->a(Ljava/lang/String;D)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/f5;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;",
            "Lcom/appodeal/ads/f5;",
            "Lcom/appodeal/ads/networking/LoadingError;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 35
    :try_start_0
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->F:Z

    if-nez v0, :cond_16

    .line 36
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->C:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 37
    :cond_0
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->h:Z

    .line 38
    iget-object v1, p1, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p1, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 40
    iget v2, p2, Lcom/appodeal/ads/l;->l:I

    if-eq v2, v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v3, "Load Failed"

    invoke-virtual {v2, v3, p2, p4}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 41
    iget-object v3, v3, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 42
    sget-object v4, Lcom/appodeal/ads/utils/EventsTracker$EventType;->FailedToLoad:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v2, v3, p2, v4}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/EventsTracker$EventType;)V

    if-eqz p2, :cond_4

    const/4 v2, 0x3

    iput v2, p2, Lcom/appodeal/ads/l;->l:I

    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v3

    iget-object v2, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 43
    iget-object v4, v2, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 44
    iget-object v2, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v2}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v5

    .line 45
    iget-object v7, p2, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    .line 46
    iget-object v2, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v2}, Lcom/appodeal/ads/AdUnit;->getAdUnitName()Ljava/lang/String;

    move-result-object v8

    .line 47
    invoke-virtual {p4}, Lcom/appodeal/ads/networking/LoadingError;->getCode()I

    move-result v10

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/appodeal/ads/n0;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;DLjava/lang/String;Ljava/lang/String;ZI)V

    .line 48
    iget-object v2, p2, Lcom/appodeal/ads/l;->i:Lcom/appodeal/ads/utils/ExchangeAd;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    if-ne p4, v3, :cond_3

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/utils/ExchangeAd;->trackError(I)V

    :cond_3
    iget-object v2, p2, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p4}, Lcom/appodeal/ads/unified/UnifiedAd;->onError(Lcom/appodeal/ads/networking/LoadingError;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 49
    invoke-interface {p3}, Lcom/appodeal/ads/AdUnit;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v2

    if-nez v2, :cond_6

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/appodeal/ads/networking/LoadingError;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v2

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/appodeal/ads/e0;->e:Lcom/appodeal/ads/e0;

    :goto_0
    invoke-interface {p3, v2}, Lcom/appodeal/ads/c0;->a(Lcom/appodeal/ads/e0;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p3, v2, v3}, Lcom/appodeal/ads/g5;->a(J)V

    .line 51
    :cond_6
    iget-object p3, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 52
    iget-object p3, p3, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    const/4 v2, 0x0

    if-eqz p3, :cond_15

    if-ne p3, p1, :cond_15

    .line 53
    iget-object p3, p1, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v1

    if-eqz p3, :cond_8

    if-eqz p2, :cond_7

    .line 54
    iget-object p3, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p3}, Lcom/appodeal/ads/AdUnit;->isAsync()Z

    move-result p3

    if-nez p3, :cond_7

    .line 55
    invoke-virtual {p1}, Lcom/appodeal/ads/r;->a()I

    move-result p3

    if-lez p3, :cond_7

    iget-object p3, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 56
    iget-object p4, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p4}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result p4

    .line 57
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->h:Z

    .line 58
    invoke-virtual {p3, p1, v2, p4, v0}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    :cond_7
    return-void

    :cond_8
    if-eqz p2, :cond_c

    .line 59
    iget-object p3, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p3}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result p3

    if-eqz p3, :cond_c

    if-nez v0, :cond_14

    .line 60
    iget-object p3, p1, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v1

    if-eqz p3, :cond_9

    .line 61
    iget-object p3, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p3, p1, v2, v1, v2}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    goto/16 :goto_4

    .line 62
    :cond_9
    iget-object p3, p1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v1

    if-eqz p3, :cond_a

    goto/16 :goto_3

    .line 63
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->o(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    .line 64
    invoke-virtual {p1, v2, v2}, Lcom/appodeal/ads/r;->a(ZZ)V

    .line 65
    iget-object p3, p1, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    if-eqz p3, :cond_b

    return-void

    .line 66
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    .line 67
    new-instance p3, Lcom/appodeal/ads/w;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/appodeal/ads/w;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    .line 68
    sget-object p4, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p4, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    iget-object p3, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 70
    iget v0, p3, Lcom/appodeal/ads/u;->B:I

    .line 71
    invoke-virtual {p3}, Lcom/appodeal/ads/u;->k()Z

    move-result p3

    if-eqz p3, :cond_14

    new-instance p3, Lcom/appodeal/ads/x;

    invoke-direct {p3, p0}, Lcom/appodeal/ads/x;-><init>(Lcom/appodeal/ads/b0;)V

    int-to-long v0, v0

    goto :goto_2

    .line 73
    :cond_c
    iget-object p3, p1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v1

    if-nez p3, :cond_11

    .line 74
    invoke-virtual {p1, v2, v2}, Lcom/appodeal/ads/r;->a(ZZ)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->q(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->o(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    .line 76
    :cond_d
    iget-object p3, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz p3, :cond_e

    .line 77
    invoke-virtual {p0, p1, p3, v2}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)V

    goto :goto_4

    .line 78
    :cond_e
    iget-object p3, p1, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    if-eqz p3, :cond_f

    return-void

    .line 79
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    .line 80
    new-instance p3, Lcom/appodeal/ads/w;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/appodeal/ads/w;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    .line 81
    sget-object p4, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p4, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_14

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z

    move-result p3

    if-eqz p3, :cond_10

    const/16 p3, 0x7530

    goto :goto_1

    :cond_10
    iget-object p3, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 83
    iget p3, p3, Lcom/appodeal/ads/u;->B:I

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/appodeal/ads/x;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/x;-><init>(Lcom/appodeal/ads/b0;)V

    int-to-long v1, p3

    move-object p3, v0

    move-wide v0, v1

    .line 72
    :goto_2
    invoke-virtual {p4, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_11
    if-nez v0, :cond_12

    .line 85
    :goto_3
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;)V

    goto :goto_4

    .line 86
    :cond_12
    iget-object p3, p1, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    if-eqz p3, :cond_13

    return-void

    .line 87
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    .line 88
    new-instance p3, Lcom/appodeal/ads/w;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/appodeal/ads/w;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    .line 89
    sget-object p4, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p4, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    :goto_4
    if-eqz p2, :cond_16

    .line 90
    invoke-virtual {p2}, Lcom/appodeal/ads/l;->k()V

    goto :goto_5

    .line 91
    :cond_15
    invoke-virtual {p1, v2, v2}, Lcom/appodeal/ads/r;->a(ZZ)V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->o(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    invoke-static {p3}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    :cond_16
    :goto_5
    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 7

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    if-ne p4, v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda2;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;Lcom/appodeal/ads/networking/LoadingError;)V

    .line 3
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p3, Lcom/appodeal/ads/w;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/appodeal/ads/w;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    .line 5
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 8

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->l(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->k(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lcom/appodeal/ads/r;->D:Z

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/appodeal/ads/r;->n:J

    .line 21
    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v2

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 22
    iget-object v3, v0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 23
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 24
    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v4

    .line 25
    iget-object v6, p2, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    .line 26
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getAdUnitName()Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/appodeal/ads/n0;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;DLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v1, "Clicked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 28
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 29
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    .line 30
    invoke-virtual {p2}, Lcom/appodeal/ads/l;->h()V

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 31
    iget-object v1, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 32
    sget-object v2, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Click:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/EventsTracker$EventType;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Lcom/appodeal/ads/segments/g;

    move-result-object v0

    .line 33
    iget v0, v0, Lcom/appodeal/ads/segments/g;->a:I

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->h()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, p2, v0, v1, p4}, Lcom/appodeal/ads/k0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Integer;Ljava/lang/Double;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->f(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4}, Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;->onTrackError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;",
            "Lcom/appodeal/ads/networking/LoadingError;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 93
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    :goto_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/f5;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 17
    iput-boolean p3, p1, Lcom/appodeal/ads/r;->y:Z

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->g(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/t2;Lcom/appodeal/ads/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final a(Lcom/appodeal/ads/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    return-void
.end method

.method public a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p0, Lcom/appodeal/ads/Native$b;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)Z"
        }
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->v:Z

    return p1
.end method

.method public a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    .line 2
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->D:Z

    return p1
.end method

.method public final b(Lcom/appodeal/ads/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->A:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/appodeal/ads/r;->A:Z

    .line 6
    iget-object v0, p2, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onHide()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v1, "Closed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V

    .line 9
    new-instance v0, Lcom/appodeal/ads/y;

    move-object v1, p0

    check-cast v1, Lcom/appodeal/ads/v2;

    invoke-direct {v0, v1, p1, p2}, Lcom/appodeal/ads/y;-><init>(Lcom/appodeal/ads/v2;Lcom/appodeal/ads/r;Lcom/appodeal/ads/j1;)V

    .line 10
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p4, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v1, "Load Failed (soft)"

    invoke-virtual {v0, v1, p2, p4}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 12
    iget-object v1, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 13
    sget-object v2, Lcom/appodeal/ads/utils/EventsTracker$EventType;->InternalError:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/EventsTracker$EventType;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0, v0}, Lcom/appodeal/ads/r;->a(ZZ)V

    .line 15
    iput-boolean v0, p1, Lcom/appodeal/ads/r;->u:Z

    .line 16
    iput-boolean v0, p1, Lcom/appodeal/ads/r;->v:Z

    :cond_1
    if-eqz p2, :cond_3

    .line 17
    iget-object v0, p2, Lcom/appodeal/ads/l;->i:Lcom/appodeal/ads/utils/ExchangeAd;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    if-ne p4, v1, :cond_2

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/utils/ExchangeAd;->trackError(I)V

    :cond_2
    iget-object v0, p2, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p4}, Lcom/appodeal/ads/unified/UnifiedAd;->onError(Lcom/appodeal/ads/networking/LoadingError;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 18
    iget-object v0, p1, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    if-eqz v0, :cond_4

    return-void

    .line 19
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 20
    iget v1, v0, Lcom/appodeal/ads/u;->B:I

    .line 21
    invoke-virtual {v0}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/appodeal/ads/x;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/x;-><init>(Lcom/appodeal/ads/b0;)V

    int-to-long v1, v1

    .line 22
    sget-object v3, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public b()Z
    .locals 1

    instance-of v0, p0, Lcom/appodeal/ads/o1$b;

    return v0
.end method

.method public b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)Z"
        }
    .end annotation

    .line 2
    iget-boolean p2, p1, Lcom/appodeal/ads/r;->u:Z

    if-nez p2, :cond_1

    .line 3
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->v:Z

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

.method public b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->z:Z

    return p1
.end method

.method public b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;Z)Z"
        }
    .end annotation

    .line 24
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->y:Z

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 25
    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 26
    iget-boolean p1, p1, Lcom/appodeal/ads/u;->t:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Lcom/appodeal/ads/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 2
    iget-object v1, v0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    if-lez p1, :cond_0

    iget-object v2, v0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v0, v0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/r;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 4
    iget-object v0, p1, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 5
    iget-object v2, p1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p1, Lcom/appodeal/ads/r;->G:Lorg/json/JSONObject;

    .line 7
    const-string v2, "ecpm"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 8
    iget-wide v4, p1, Lcom/appodeal/ads/r;->t:D

    cmpg-double v0, v4, v2

    if-gez v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 10
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->u:Z

    if-eqz v0, :cond_2

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->u:Z

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/appodeal/ads/r;->u()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/b0;->o(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->C:Z

    return p1
.end method

.method public final d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V

    .line 1
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lcom/appodeal/ads/r;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Lcom/appodeal/ads/segments/g;
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {p1}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda3;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    .line 1
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract f(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
.end method

.method public final g(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda1;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    .line 1
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract g(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
.end method

.method public h(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract h(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
.end method

.method public i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    return-void
.end method

.method public final i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lcom/appodeal/ads/r;->z:Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/appodeal/ads/r;->o:J

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p2}, Lcom/appodeal/ads/utils/d0;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p2, Lcom/appodeal/ads/l;->i:Lcom/appodeal/ads/utils/ExchangeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/ExchangeAd;->trackFinish()V

    :cond_0
    iget-object v0, p2, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    :cond_1
    iget-wide v0, p2, Lcom/appodeal/ads/l;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/appodeal/ads/l;->q:J

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v1, "Finished"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 7
    iget-object v1, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 8
    sget-object v2, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Finish:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/EventsTracker$EventType;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Lcom/appodeal/ads/segments/g;

    move-result-object v0

    .line 9
    iget v0, v0, Lcom/appodeal/ads/segments/g;->a:I

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->h()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/appodeal/ads/k0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->g(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    .line 11
    new-instance v0, Lcom/appodeal/ads/z;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/appodeal/ads/z;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    .line 12
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
    .locals 9

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lcom/appodeal/ads/r;->C:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/appodeal/ads/r;->m:J

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/r;->a(ZZ)V

    .line 3
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->B:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->o(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;)V

    invoke-static {p2}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 5
    iget-object v0, v0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 6
    invoke-static {v0}, Lcom/appodeal/ads/utils/y;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 7
    iget-object v2, v0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 8
    iget-object v0, p2, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    .line 9
    invoke-virtual {v0}, Lcom/appodeal/ads/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p2, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    .line 11
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getAdUnitName()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Lcom/appodeal/ads/segments/g;

    move-result-object v6

    .line 13
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v7

    .line 14
    invoke-static/range {v2 .. v8}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/segments/g;D)V

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v2, "Shown"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    .line 15
    iput-boolean v1, p1, Lcom/appodeal/ads/r;->u:Z

    .line 16
    iput-boolean v1, p1, Lcom/appodeal/ads/r;->v:Z

    .line 17
    invoke-virtual {p1, p2}, Lcom/appodeal/ads/r;->e(Lcom/appodeal/ads/l;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p2, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onShow()V

    :cond_1
    iget-wide v0, p2, Lcom/appodeal/ads/l;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/appodeal/ads/l;->n:J

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object v0

    .line 20
    iget v0, v0, Lcom/appodeal/ads/segments/g;->a:I

    .line 21
    invoke-virtual {p2, v0}, Lcom/appodeal/ads/l;->b(I)V

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 22
    iget-object v1, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 23
    sget-object v2, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Impression:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/EventsTracker$EventType;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->e(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Lcom/appodeal/ads/segments/g;

    move-result-object v0

    .line 24
    iget v0, v0, Lcom/appodeal/ads/segments/g;->a:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->h()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/appodeal/ads/k0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/b0;->h(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    .line 26
    new-instance v0, Lcom/appodeal/ads/a0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/appodeal/ads/a0;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    .line 27
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw p1

    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final k(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v2, p1, Lcom/appodeal/ads/r;->v:Z

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v2, p1, Lcom/appodeal/ads/r;->u:Z

    .line 4
    :goto_0
    iget-object v0, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 5
    invoke-static {v0}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    .line 6
    iget-object v0, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/appodeal/ads/l;->f()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/appodeal/ads/l;->k()V

    .line 8
    :cond_1
    iput-object p2, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 9
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 10
    iget-object v0, v0, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 12
    iget-object p2, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result p2

    if-nez p2, :cond_7

    .line 13
    invoke-virtual {p1, v1, v1}, Lcom/appodeal/ads/r;->a(ZZ)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/appodeal/ads/r;->a(ZZ)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    :goto_1
    :try_start_0
    iget-object v0, p2, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 16
    iget-object v0, p2, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/l;

    if-eqz v2, :cond_4

    .line 18
    iget-object v3, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v3}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v3

    iget-object v2, v2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v2}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v5

    cmpl-double v2, v3, v5

    if-lez v2, :cond_5

    .line 19
    :cond_4
    iget-object v2, p1, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 20
    :cond_6
    iget-object p1, p1, Lcom/appodeal/ads/r;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public abstract k(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
.end method

.method public l(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 2
    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v0

    .line 3
    iput-wide v0, p1, Lcom/appodeal/ads/r;->t:D

    return-void
.end method

.method public l(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)Z
    .locals 0

    .line 4
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->C:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final m(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    if-eqz v1, :cond_a

    if-ne v1, p1, :cond_a

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v1, "Expired"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    invoke-static {}, Lcom/appodeal/ads/utils/EventsTracker;->get()Lcom/appodeal/ads/utils/EventsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 4
    iget-object v1, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 5
    sget-object v3, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Expired:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v0, v1, p2, v3}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/EventsTracker$EventType;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/b0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    .line 6
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/l;

    .line 9
    iget-object v1, v1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 10
    invoke-interface {v1}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/appodeal/ads/l;->k()V

    goto/16 :goto_4

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v0, :cond_a

    if-ne v0, p2, :cond_a

    .line 14
    invoke-static {p2}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    .line 15
    iget-object v0, p1, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/o;->a(Ljava/util/Collection;)V

    .line 17
    iget-object v0, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/appodeal/ads/l;->k()V

    iput-object v2, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    iget-object v0, p1, Lcom/appodeal/ads/r;->I:Lcom/appodeal/ads/r$a;

    .line 18
    iput-object v2, v0, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/l;

    .line 19
    iput-boolean v1, p1, Lcom/appodeal/ads/r;->u:Z

    iput-boolean v1, p1, Lcom/appodeal/ads/r;->v:Z

    .line 20
    :cond_4
    :try_start_1
    iget-object v0, p1, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/l;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/appodeal/ads/l;->k()V

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_8

    .line 21
    invoke-static {p2}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    .line 22
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    :try_start_2
    iget-object v3, p1, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/l;

    .line 25
    iget-object v4, v4, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 26
    invoke-interface {v4}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 28
    :cond_8
    iget-object v0, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v0, :cond_9

    .line 29
    invoke-virtual {v0}, Lcom/appodeal/ads/l;->k()V

    iput-object v2, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    iget-object v0, p1, Lcom/appodeal/ads/r;->I:Lcom/appodeal/ads/r$a;

    .line 30
    iput-object v2, v0, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/l;

    .line 31
    iput-boolean v1, p1, Lcom/appodeal/ads/r;->u:Z

    iput-boolean v1, p1, Lcom/appodeal/ads/r;->v:Z

    .line 32
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/appodeal/ads/r;->y()V

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->h(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->f(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final n(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 1
    :try_start_0
    iget-boolean v1, p1, Lcom/appodeal/ads/r;->F:Z

    if-nez v1, :cond_17

    .line 2
    iget-boolean v1, p1, Lcom/appodeal/ads/r;->C:Z

    if-nez v1, :cond_17

    .line 3
    iget-boolean v1, p1, Lcom/appodeal/ads/r;->B:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 5
    iget-object v1, v1, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_1

    .line 6
    iget-object v1, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v1, :cond_1

    if-ne v1, p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/appodeal/ads/l;->k()V

    :goto_0
    return-void

    :cond_2
    iget v1, p2, Lcom/appodeal/ads/l;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-virtual {p2}, Lcom/appodeal/ads/l;->k()V

    return-void

    .line 8
    :cond_3
    iget-object v1, p1, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p1, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    const/4 v1, 0x2

    .line 10
    iput v1, p2, Lcom/appodeal/ads/l;->l:I

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const-string v2, "Loaded"

    invoke-virtual {v1, v2, p2, v0}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    .line 11
    iget-object v1, p2, Lcom/appodeal/ads/l;->i:Lcom/appodeal/ads/utils/ExchangeAd;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ExchangeAd;->trackFill()V

    :cond_5
    iget-object v1, p2, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/appodeal/ads/unified/UnifiedAd;->onLoaded()V

    .line 12
    :cond_6
    iget-object v1, p1, Lcom/appodeal/ads/r;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/appodeal/ads/r;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_7
    iget-object v1, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v1}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 15
    iget-object v1, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 16
    invoke-interface {v1}, Lcom/appodeal/ads/AdUnit;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v1

    if-nez v1, :cond_8

    .line 17
    iget-object v1, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 18
    sget-object v3, Lcom/appodeal/ads/e0;->b:Lcom/appodeal/ads/e0;

    invoke-interface {v1, v3}, Lcom/appodeal/ads/c0;->a(Lcom/appodeal/ads/e0;)V

    .line 19
    iget-object v1, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lcom/appodeal/ads/g5;->a(J)V

    .line 21
    :cond_8
    iget-object v1, p1, Lcom/appodeal/ads/r;->I:Lcom/appodeal/ads/r$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {p2}, Lcom/appodeal/ads/l;->f()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    iget-object v3, v1, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/l;

    if-eqz v3, :cond_a

    .line 23
    iget-object v3, v3, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 24
    invoke-interface {v3}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v3

    iget-object v5, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v5}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_b

    .line 25
    :cond_a
    iput-object p2, v1, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/l;

    .line 26
    :cond_b
    :goto_1
    iget-object v1, p1, Lcom/appodeal/ads/r;->I:Lcom/appodeal/ads/r$a;

    .line 27
    iget-object v1, v1, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/l;

    if-eqz v1, :cond_c

    goto :goto_2

    :cond_c
    move-object v1, p2

    .line 28
    :goto_2
    invoke-virtual {v1}, Lcom/appodeal/ads/l;->f()Z

    move-result v3

    if-nez v3, :cond_d

    .line 29
    iget-object v3, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v3, :cond_d

    if-eq v3, p2, :cond_d

    .line 30
    iget-object v3, v3, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 31
    invoke-interface {v3}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v3

    iget-object v5, v1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v5}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_e

    .line 32
    :cond_d
    invoke-virtual {p0, p1, v1}, Lcom/appodeal/ads/b0;->l(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    invoke-virtual {p0, p1, v1}, Lcom/appodeal/ads/b0;->k(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    :cond_e
    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v3

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 33
    iget-object v4, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 34
    iget-wide v5, p1, Lcom/appodeal/ads/r;->t:D

    .line 35
    iget-object v7, p2, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    .line 36
    iget-object v1, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v1}, Lcom/appodeal/ads/AdUnit;->getAdUnitName()Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/appodeal/ads/n0;->c(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;DLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 38
    iget-object v1, v1, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    if-ne v1, p1, :cond_f

    move v1, v2

    goto :goto_3

    :cond_f
    move v1, v3

    .line 39
    :goto_3
    iget-boolean v4, p1, Lcom/appodeal/ads/r;->h:Z

    if-nez v4, :cond_10

    .line 40
    iget-object v4, p1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_10

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->p(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;)V

    move v3, v2

    :cond_10
    if-nez v3, :cond_11

    .line 42
    iget-object v4, p1, Lcom/appodeal/ads/r;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v2, v4

    if-nez v2, :cond_11

    .line 43
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/b0;->d(Lcom/appodeal/ads/r;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    if-nez v1, :cond_13

    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->o(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    :cond_13
    if-eqz v1, :cond_18

    new-instance v1, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/b0$$ExternalSyntheticLambda4;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;)V

    sget-object v2, Lcom/appodeal/ads/utils/o;->a:Landroid/os/Handler;

    .line 44
    iget-object v2, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v2}, Lcom/appodeal/ads/AdUnit;->getExpTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_15

    .line 45
    sget-object v2, Lcom/appodeal/ads/utils/o;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_14

    sget-object v4, Lcom/appodeal/ads/utils/o;->a:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    :cond_14
    sget-object v2, Lcom/appodeal/ads/utils/o;->b:Ljava/util/HashMap;

    new-instance v4, Lcom/appodeal/ads/utils/o$a;

    invoke-direct {v4, p2, v1}, Lcom/appodeal/ads/utils/o$a;-><init>(Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/o$b;)V

    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/appodeal/ads/utils/o;->a(Lcom/appodeal/ads/l;)V

    .line 47
    :cond_15
    iget-object v1, p1, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    if-eqz v1, :cond_16

    return-void

    .line 48
    :cond_16
    invoke-virtual {p2}, Lcom/appodeal/ads/l;->f()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, p1, p2, v3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)V

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    const/16 v2, 0x1388

    .line 49
    iput v2, v1, Lcom/appodeal/ads/u;->B:I

    goto :goto_5

    .line 50
    :cond_17
    :goto_4
    invoke-virtual {p2}, Lcom/appodeal/ads/l;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    :cond_18
    :goto_5
    return-void
.end method

.method public final o(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->B:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/appodeal/ads/r;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/appodeal/ads/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_0
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->F:Z

    if-nez v0, :cond_3

    .line 4
    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    .line 5
    iget-object v1, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 6
    iget-wide v2, p1, Lcom/appodeal/ads/r;->t:D

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/n0;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;DZ)V

    :cond_3
    invoke-virtual {p1, p2}, Lcom/appodeal/ads/r;->b(Lcom/appodeal/ads/l;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lcom/appodeal/ads/r;->B:Z

    .line 9
    iget-object v0, p0, Lcom/appodeal/ads/b0;->a:Lcom/appodeal/ads/u;

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/k0;->a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public p(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 2
    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/appodeal/ads/l;->f()Z

    move-result v0

    if-nez v0, :cond_1

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

.method public q(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
