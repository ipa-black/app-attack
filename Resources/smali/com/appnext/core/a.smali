.class public final Lcom/appnext/core/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation
.end field

.field private fH:Ljava/lang/Long;

.field private fI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private fJ:Ljava/lang/String;

.field private placementID:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/appnext/core/a;->state:I

    const-wide/16 v0, 0x0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/a;->fH:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/appnext/core/a;->ads:Ljava/util/ArrayList;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/appnext/core/a;->fJ:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/a;->fI:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lcom/appnext/core/a;)Ljava/util/ArrayList;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/appnext/core/a;->fI:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/appnext/core/a;->fJ:Ljava/lang/String;

    return-object v0
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/appnext/core/a;->fJ:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized O(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appnext/core/a$2;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/a$2;-><init>(Lcom/appnext/core/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/appnext/core/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p1, Lcom/appnext/core/a;->fI:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/appnext/core/a;->fI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/appnext/core/d$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/appnext/core/a;->fI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/appnext/core/a;->fH:Ljava/lang/Long;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;Z)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/appnext/core/a;->ads:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1068
    iput-object p1, p0, Lcom/appnext/core/a;->fH:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public final aU()Ljava/lang/Long;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/appnext/core/a;->fH:Ljava/lang/Long;

    return-object v0
.end method

.method public final b(Lcom/appnext/core/d$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/appnext/core/a;->fI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/appnext/core/a;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final declared-synchronized e(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appnext/core/a$1;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/a$1;-><init>(Lcom/appnext/core/a;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getAds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/appnext/core/a;->ads:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/appnext/core/a;->ads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getPlacementID()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/appnext/core/a;->placementID:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/appnext/core/a;->state:I

    return v0
.end method

.method public final setPlacementID(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/appnext/core/a;->placementID:Ljava/lang/String;

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/appnext/core/a;->state:I

    return-void
.end method
