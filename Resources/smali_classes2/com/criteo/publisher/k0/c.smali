.class Lcom/criteo/publisher/k0/c;
.super Lcom/criteo/publisher/x;
.source "CdbCall.java"


# instance fields
.field private final c:Lcom/criteo/publisher/k0/g;

.field private final d:Lcom/criteo/publisher/model/p;

.field private final e:Lcom/criteo/publisher/i;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/criteo/publisher/context/ContextData;

.field private final h:Lcom/criteo/publisher/h;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/i;Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/k0/g;",
            "Lcom/criteo/publisher/model/p;",
            "Lcom/criteo/publisher/i;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            "Lcom/criteo/publisher/h;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/criteo/publisher/k0/c;->c:Lcom/criteo/publisher/k0/g;

    .line 61
    iput-object p2, p0, Lcom/criteo/publisher/k0/c;->d:Lcom/criteo/publisher/model/p;

    .line 62
    iput-object p3, p0, Lcom/criteo/publisher/k0/c;->e:Lcom/criteo/publisher/i;

    .line 63
    iput-object p4, p0, Lcom/criteo/publisher/k0/c;->f:Ljava/util/List;

    .line 64
    iput-object p5, p0, Lcom/criteo/publisher/k0/c;->g:Lcom/criteo/publisher/context/ContextData;

    .line 65
    iput-object p6, p0, Lcom/criteo/publisher/k0/c;->h:Lcom/criteo/publisher/h;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/r;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/criteo/publisher/k0/c;->e:Lcom/criteo/publisher/i;

    invoke-interface {v0}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v0

    .line 86
    invoke-virtual {p1}, Lcom/criteo/publisher/model/r;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/model/s;

    .line 87
    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/model/s;->a(J)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/criteo/publisher/k0/c;->d:Lcom/criteo/publisher/model/p;

    iget-object v1, p0, Lcom/criteo/publisher/k0/c;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/criteo/publisher/k0/c;->g:Lcom/criteo/publisher/context/ContextData;

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/model/p;->a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)Lcom/criteo/publisher/model/o;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/criteo/publisher/k0/c;->d:Lcom/criteo/publisher/model/p;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/p;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/criteo/publisher/k0/c;->h:Lcom/criteo/publisher/h;

    invoke-virtual {v2, v0}, Lcom/criteo/publisher/h;->a(Lcom/criteo/publisher/model/o;)V

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/criteo/publisher/k0/c;->c:Lcom/criteo/publisher/k0/g;

    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/k0/g;->a(Lcom/criteo/publisher/model/o;Ljava/lang/String;)Lcom/criteo/publisher/model/r;

    move-result-object v1

    .line 77
    invoke-direct {p0, v1}, Lcom/criteo/publisher/k0/c;->a(Lcom/criteo/publisher/model/r;)V

    .line 78
    iget-object v2, p0, Lcom/criteo/publisher/k0/c;->h:Lcom/criteo/publisher/h;

    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/h;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    iget-object v2, p0, Lcom/criteo/publisher/k0/c;->h:Lcom/criteo/publisher/h;

    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/h;->a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
