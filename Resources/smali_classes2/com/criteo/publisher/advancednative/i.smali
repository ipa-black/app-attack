.class public Lcom/criteo/publisher/advancednative/i;
.super Ljava/lang/Object;
.source "ImpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/advancednative/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/k0/g;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/criteo/publisher/e0/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/k0/g;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/e0/c;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/i;->a:Lcom/criteo/publisher/k0/g;

    .line 44
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/i;->b:Ljava/util/concurrent/Executor;

    .line 45
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/i;->c:Lcom/criteo/publisher/e0/c;

    return-void
.end method


# virtual methods
.method a(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/i;->c:Lcom/criteo/publisher/e0/c;

    new-instance v1, Lcom/criteo/publisher/advancednative/i$a;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/advancednative/i$a;-><init>(Lcom/criteo/publisher/advancednative/i;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e0/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 58
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/i;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/criteo/publisher/advancednative/i$b;

    iget-object v3, p0, Lcom/criteo/publisher/advancednative/i;->a:Lcom/criteo/publisher/k0/g;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/criteo/publisher/advancednative/i$b;-><init>(Ljava/net/URL;Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/advancednative/i$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
