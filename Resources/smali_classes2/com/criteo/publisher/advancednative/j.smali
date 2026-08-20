.class Lcom/criteo/publisher/advancednative/j;
.super Ljava/lang/Object;
.source "ImpressionTask.java"

# interfaces
.implements Lcom/criteo/publisher/advancednative/p;


# instance fields
.field private final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/advancednative/i;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;",
            "Lcom/criteo/publisher/advancednative/i;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/j;->a:Ljava/lang/Iterable;

    .line 43
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/j;->b:Ljava/lang/ref/Reference;

    .line 44
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/j;->c:Lcom/criteo/publisher/advancednative/i;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/j;->c:Lcom/criteo/publisher/advancednative/i;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/j;->a:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/i;->a(Ljava/lang/Iterable;)V

    .line 56
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/j;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    if-eqz v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/j;->c:Lcom/criteo/publisher/advancednative/i;

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/advancednative/i;->a(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    :cond_1
    return-void
.end method
