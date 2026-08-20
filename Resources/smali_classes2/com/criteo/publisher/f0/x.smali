.class public Lcom/criteo/publisher/f0/x;
.super Ljava/lang/Object;
.source "MetricSendingQueueProducer.java"


# instance fields
.field private final a:Lcom/criteo/publisher/f0/u;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f0/u;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/criteo/publisher/f0/x;->a:Lcom/criteo/publisher/f0/u;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/f0/x;)Lcom/criteo/publisher/f0/u;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/criteo/publisher/f0/x;->a:Lcom/criteo/publisher/f0/u;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/f0/r;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/r;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/f0/n;

    .line 32
    invoke-virtual {v1}, Lcom/criteo/publisher/f0/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/criteo/publisher/f0/x;->a(Lcom/criteo/publisher/f0/r;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/criteo/publisher/f0/r;Ljava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/criteo/publisher/f0/x$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f0/x$a;-><init>(Lcom/criteo/publisher/f0/x;)V

    invoke-virtual {p1, p2, v0}, Lcom/criteo/publisher/f0/r;->a(Ljava/lang/String;Lcom/criteo/publisher/f0/p;)V

    return-void
.end method
