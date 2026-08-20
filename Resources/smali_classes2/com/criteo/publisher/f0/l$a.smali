.class Lcom/criteo/publisher/f0/l$a;
.super Lcom/criteo/publisher/x;
.source "CsmBidLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f0/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/criteo/publisher/f0/l;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f0/l;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/criteo/publisher/f0/l$a;->c:Lcom/criteo/publisher/f0/l;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/criteo/publisher/f0/l$a;->c:Lcom/criteo/publisher/f0/l;

    invoke-static {v0}, Lcom/criteo/publisher/f0/l;->b(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/x;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/l$a;->c:Lcom/criteo/publisher/f0/l;

    invoke-static {v1}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/x;->a(Lcom/criteo/publisher/f0/r;)V

    return-void
.end method
