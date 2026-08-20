.class public Lcom/criteo/publisher/f0/s;
.super Ljava/lang/Object;
.source "MetricRepositoryFactory.java"

# interfaces
.implements Lcom/criteo/publisher/s$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/s$a<",
        "Lcom/criteo/publisher/f0/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/criteo/publisher/f0/q;

.field private final c:Lcom/criteo/publisher/n0/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/f0/q;Lcom/criteo/publisher/n0/g;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/criteo/publisher/f0/s;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/criteo/publisher/f0/s;->b:Lcom/criteo/publisher/f0/q;

    .line 45
    iput-object p3, p0, Lcom/criteo/publisher/f0/s;->c:Lcom/criteo/publisher/n0/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/s;->b()Lcom/criteo/publisher/f0/r;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/criteo/publisher/f0/r;
    .locals 4

    .line 51
    new-instance v0, Lcom/criteo/publisher/f0/o;

    iget-object v1, p0, Lcom/criteo/publisher/f0/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/criteo/publisher/f0/s;->c:Lcom/criteo/publisher/n0/g;

    iget-object v3, p0, Lcom/criteo/publisher/f0/s;->b:Lcom/criteo/publisher/f0/q;

    invoke-direct {v0, v1, v2, v3}, Lcom/criteo/publisher/f0/o;-><init>(Landroid/content/Context;Lcom/criteo/publisher/n0/g;Lcom/criteo/publisher/f0/q;)V

    .line 52
    new-instance v1, Lcom/criteo/publisher/f0/m;

    invoke-direct {v1, v0}, Lcom/criteo/publisher/f0/m;-><init>(Lcom/criteo/publisher/f0/o;)V

    .line 53
    new-instance v0, Lcom/criteo/publisher/f0/i;

    iget-object v2, p0, Lcom/criteo/publisher/f0/s;->c:Lcom/criteo/publisher/n0/g;

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/f0/i;-><init>(Lcom/criteo/publisher/f0/r;Lcom/criteo/publisher/n0/g;)V

    return-object v0
.end method
