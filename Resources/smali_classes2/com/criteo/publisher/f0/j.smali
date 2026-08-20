.class Lcom/criteo/publisher/f0/j;
.super Ljava/lang/Object;
.source "BoundedSendingQueue.java"

# interfaces
.implements Lcom/criteo/publisher/f0/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/f0/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/f0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/criteo/publisher/f0/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f0/k;Lcom/criteo/publisher/f0/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f0/k<",
            "TT;>;",
            "Lcom/criteo/publisher/f0/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/f0/j;->b:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/criteo/publisher/f0/j;->a:Lcom/criteo/publisher/f0/k;

    .line 40
    iput-object p2, p0, Lcom/criteo/publisher/f0/j;->c:Lcom/criteo/publisher/f0/a0;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/f0/j;->a:Lcom/criteo/publisher/f0/k;

    invoke-interface {v0}, Lcom/criteo/publisher/f0/k;->a()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/criteo/publisher/f0/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/f0/j;->a:Lcom/criteo/publisher/f0/k;

    invoke-interface {v1, p1}, Lcom/criteo/publisher/f0/k;->a(I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/f0/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/j;->a()I

    move-result v1

    iget-object v2, p0, Lcom/criteo/publisher/f0/j;->c:Lcom/criteo/publisher/f0/a0;

    invoke-interface {v2}, Lcom/criteo/publisher/f0/a0;->c()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/criteo/publisher/f0/j;->a:Lcom/criteo/publisher/f0/k;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/criteo/publisher/f0/k;->a(I)Ljava/util/List;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/criteo/publisher/f0/j;->a:Lcom/criteo/publisher/f0/k;

    invoke-interface {v1, p1}, Lcom/criteo/publisher/f0/k;->a(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
