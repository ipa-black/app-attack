.class Lcom/criteo/publisher/e$a;
.super Lcom/criteo/publisher/h;
.source "BidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/criteo/publisher/e;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/e;)V
    .locals 2

    .line 403
    iput-object p1, p0, Lcom/criteo/publisher/e$a;->d:Lcom/criteo/publisher/e;

    .line 404
    invoke-static {p1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/e;)Lcom/criteo/publisher/c0/a;

    move-result-object v0

    invoke-static {p1}, Lcom/criteo/publisher/e;->b(Lcom/criteo/publisher/e;)Lcom/criteo/publisher/l0/a;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/criteo/publisher/h;-><init>(Lcom/criteo/publisher/c0/a;Lcom/criteo/publisher/e;Lcom/criteo/publisher/l0/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/criteo/publisher/e$a;->d:Lcom/criteo/publisher/e;

    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e;->b(Ljava/util/List;)V

    .line 413
    invoke-super {p0, p1, p2}, Lcom/criteo/publisher/h;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V

    return-void
.end method
