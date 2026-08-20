.class public Lcom/criteo/publisher/l0/d/h;
.super Ljava/lang/Object;
.source "TcfStrategyResolver.java"


# instance fields
.field private final a:Lcom/criteo/publisher/n0/q;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/q;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/criteo/publisher/l0/d/h;->a:Lcom/criteo/publisher/n0/q;

    return-void
.end method


# virtual methods
.method a()Lcom/criteo/publisher/l0/d/g;
    .locals 2

    .line 32
    new-instance v0, Lcom/criteo/publisher/l0/d/f;

    iget-object v1, p0, Lcom/criteo/publisher/l0/d/h;->a:Lcom/criteo/publisher/n0/q;

    invoke-direct {v0, v1}, Lcom/criteo/publisher/l0/d/f;-><init>(Lcom/criteo/publisher/n0/q;)V

    .line 34
    invoke-virtual {v0}, Lcom/criteo/publisher/l0/d/f;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lcom/criteo/publisher/l0/d/e;

    iget-object v1, p0, Lcom/criteo/publisher/l0/d/h;->a:Lcom/criteo/publisher/n0/q;

    invoke-direct {v0, v1}, Lcom/criteo/publisher/l0/d/e;-><init>(Lcom/criteo/publisher/n0/q;)V

    .line 40
    invoke-virtual {v0}, Lcom/criteo/publisher/l0/d/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
