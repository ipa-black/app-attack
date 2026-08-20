.class public Lcom/criteo/publisher/h0/c;
.super Ljava/lang/Object;
.source "HeaderBidding.java"


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/h0/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/i0/c;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/criteo/publisher/i0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/h0/d;",
            ">;",
            "Lcom/criteo/publisher/i0/c;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/criteo/publisher/h0/c;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/h0/c;->a:Lcom/criteo/publisher/logging/g;

    .line 42
    iput-object p1, p0, Lcom/criteo/publisher/h0/c;->b:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/criteo/publisher/h0/c;->c:Lcom/criteo/publisher/i0/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/criteo/publisher/h0/c;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p2}, Lcom/criteo/publisher/h0/a;->a(Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    if-eqz p1, :cond_3

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/h0/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/h0/d;

    .line 51
    invoke-interface {v1, p1}, Lcom/criteo/publisher/h0/d;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/criteo/publisher/h0/c;->c:Lcom/criteo/publisher/i0/c;

    invoke-interface {v1}, Lcom/criteo/publisher/h0/d;->a()Lcom/criteo/publisher/i0/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/criteo/publisher/i0/c;->a(Lcom/criteo/publisher/i0/a;)V

    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/criteo/publisher/Bid;->b()Lcom/criteo/publisher/model/s;

    move-result-object v0

    .line 55
    :goto_0
    invoke-interface {v1, p1}, Lcom/criteo/publisher/h0/d;->a(Ljava/lang/Object;)V

    if-nez v0, :cond_2

    .line 58
    iget-object p1, p0, Lcom/criteo/publisher/h0/c;->a:Lcom/criteo/publisher/logging/g;

    invoke-interface {v1}, Lcom/criteo/publisher/h0/d;->a()Lcom/criteo/publisher/i0/a;

    move-result-object p2

    invoke-static {p2}, Lcom/criteo/publisher/h0/a;->a(Lcom/criteo/publisher/i0/a;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    .line 62
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/Bid;->c()Lcom/criteo/publisher/n0/a;

    move-result-object p2

    invoke-interface {v1, p1, p2, v0}, Lcom/criteo/publisher/h0/d;->a(Ljava/lang/Object;Lcom/criteo/publisher/n0/a;Lcom/criteo/publisher/model/s;)V

    return-void

    .line 68
    :cond_3
    iget-object p2, p0, Lcom/criteo/publisher/h0/c;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/h0/a;->a(Ljava/lang/Object;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method
