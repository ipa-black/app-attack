.class Lcom/criteo/publisher/f0/l$d;
.super Lcom/criteo/publisher/x;
.source "CsmBidLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lcom/criteo/publisher/model/o;

.field final synthetic e:Lcom/criteo/publisher/f0/l;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f0/l;Ljava/lang/Exception;Lcom/criteo/publisher/model/o;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/criteo/publisher/f0/l$d;->e:Lcom/criteo/publisher/f0/l;

    iput-object p2, p0, Lcom/criteo/publisher/f0/l$d;->c:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/criteo/publisher/f0/l$d;->d:Lcom/criteo/publisher/model/o;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/criteo/publisher/f0/l$d;->c:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/criteo/publisher/f0/l$d;->e:Lcom/criteo/publisher/f0/l;

    iget-object v1, p0, Lcom/criteo/publisher/f0/l$d;->d:Lcom/criteo/publisher/model/o;

    invoke-static {v0, v1}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/l$d;->e:Lcom/criteo/publisher/f0/l;

    iget-object v1, p0, Lcom/criteo/publisher/f0/l$d;->d:Lcom/criteo/publisher/model/o;

    invoke-static {v0, v1}, Lcom/criteo/publisher/f0/l;->b(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/l$d;->d:Lcom/criteo/publisher/model/o;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/q;

    .line 207
    invoke-virtual {v1}, Lcom/criteo/publisher/model/q;->a()Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/criteo/publisher/f0/l$d;->e:Lcom/criteo/publisher/f0/l;

    invoke-static {v2}, Lcom/criteo/publisher/f0/l;->b(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/x;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/f0/l$d;->e:Lcom/criteo/publisher/f0/l;

    invoke-static {v3}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/r;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/criteo/publisher/f0/x;->a(Lcom/criteo/publisher/f0/r;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
