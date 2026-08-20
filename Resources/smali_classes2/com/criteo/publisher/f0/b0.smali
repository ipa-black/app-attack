.class public Lcom/criteo/publisher/f0/b0;
.super Ljava/lang/Object;
.source "SendingQueueFactory.java"

# interfaces
.implements Lcom/criteo/publisher/s$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/s$a<",
        "Lcom/criteo/publisher/f0/k<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/f0/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/f0/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f0/z;Lcom/criteo/publisher/f0/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f0/z<",
            "TT;>;",
            "Lcom/criteo/publisher/f0/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/criteo/publisher/f0/b0;->a:Lcom/criteo/publisher/f0/z;

    .line 35
    iput-object p2, p0, Lcom/criteo/publisher/f0/b0;->b:Lcom/criteo/publisher/f0/a0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/b0;->b()Lcom/criteo/publisher/f0/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/criteo/publisher/f0/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/criteo/publisher/f0/k<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/criteo/publisher/f0/e0;

    iget-object v1, p0, Lcom/criteo/publisher/f0/b0;->a:Lcom/criteo/publisher/f0/z;

    iget-object v2, p0, Lcom/criteo/publisher/f0/b0;->b:Lcom/criteo/publisher/f0/a0;

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/f0/e0;-><init>(Lcom/criteo/publisher/f0/z;Lcom/criteo/publisher/f0/a0;)V

    .line 42
    new-instance v1, Lcom/criteo/publisher/f0/j;

    iget-object v2, p0, Lcom/criteo/publisher/f0/b0;->b:Lcom/criteo/publisher/f0/a0;

    invoke-direct {v1, v0, v2}, Lcom/criteo/publisher/f0/j;-><init>(Lcom/criteo/publisher/f0/k;Lcom/criteo/publisher/f0/a0;)V

    return-object v1
.end method
