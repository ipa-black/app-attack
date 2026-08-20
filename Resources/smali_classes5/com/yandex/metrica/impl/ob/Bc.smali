.class public Lcom/yandex/metrica/impl/ob/Bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/J0;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/Pc;

.field private b:Lcom/yandex/metrica/impl/ob/Cc;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Ec<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/pc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pc<",
            "Lcom/yandex/metrica/impl/ob/Xb;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/metrica/impl/ob/pc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pc<",
            "Lcom/yandex/metrica/impl/ob/Xb;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/ob/pc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pc<",
            "Lcom/yandex/metrica/impl/ob/Xb;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yandex/metrica/impl/ob/pc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pc<",
            "Lcom/yandex/metrica/impl/ob/cc;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yandex/metrica/impl/ob/H0;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/Pc;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Bc;-><init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/e9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/Pb;Lcom/yandex/metrica/impl/ob/Pb;Lcom/yandex/metrica/impl/ob/Lc;Lcom/yandex/metrica/impl/ob/ec;Lcom/yandex/metrica/impl/ob/H0$c;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Bc;->b:Lcom/yandex/metrica/impl/ob/Cc;

    .line 11
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Cc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz p1, :cond_0

    .line 12
    iget-boolean v0, p1, Lcom/yandex/metrica/impl/ob/mc;->g:Z

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->i:Z

    .line 13
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    .line 14
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    .line 15
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    .line 16
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mc;->q:Lcom/yandex/metrica/impl/ob/cc;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    move-object v1, p1

    move-object v2, v1

    .line 18
    :goto_0
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Bc;->a:Lcom/yandex/metrica/impl/ob/Pc;

    .line 21
    invoke-virtual {p3, p2, v1}, Lcom/yandex/metrica/impl/ob/Pb;->a(Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/Ec;

    move-result-object p3

    .line 23
    invoke-virtual {p4, p2, v0}, Lcom/yandex/metrica/impl/ob/Pb;->a(Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/Ec;

    move-result-object p4

    .line 25
    invoke-virtual {p5, p2, v2}, Lcom/yandex/metrica/impl/ob/Lc;->a(Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/Ec;

    move-result-object p2

    .line 27
    invoke-virtual {p6, p1}, Lcom/yandex/metrica/impl/ob/ec;->a(Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ob/Ec;

    move-result-object p1

    const/4 p5, 0x4

    .line 28
    new-array p5, p5, [Lcom/yandex/metrica/impl/ob/Ec;

    const/4 p6, 0x0

    aput-object p3, p5, p6

    const/4 p6, 0x1

    aput-object p4, p5, p6

    const/4 p6, 0x2

    aput-object p2, p5, p6

    const/4 p6, 0x3

    aput-object p1, p5, p6

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Bc;->c:Ljava/util/List;

    .line 29
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Bc;->d:Lcom/yandex/metrica/impl/ob/pc;

    .line 30
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Bc;->e:Lcom/yandex/metrica/impl/ob/pc;

    .line 31
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Bc;->f:Lcom/yandex/metrica/impl/ob/pc;

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Bc;->g:Lcom/yandex/metrica/impl/ob/pc;

    .line 33
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Bc;->b:Lcom/yandex/metrica/impl/ob/Cc;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Bc;->a:Lcom/yandex/metrica/impl/ob/Pc;

    .line 34
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Pc;->b()Lcom/yandex/metrica/impl/ob/xc;

    move-result-object p2

    invoke-virtual {p7, p1, p0, p2}, Lcom/yandex/metrica/impl/ob/H0$c;->a(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/J0;Lcom/yandex/metrica/impl/ob/H0$d;)Lcom/yandex/metrica/impl/ob/H0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Bc;->h:Lcom/yandex/metrica/impl/ob/H0;

    .line 35
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Bc;->a:Lcom/yandex/metrica/impl/ob/Pc;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Pc;->b()Lcom/yandex/metrica/impl/ob/xc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/G0;->a(Lcom/yandex/metrica/impl/ob/H0;)V

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/e9;)V
    .locals 8

    .line 3
    new-instance v3, Lcom/yandex/metrica/impl/ob/fc;

    invoke-direct {v3, p1, p3}, Lcom/yandex/metrica/impl/ob/fc;-><init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;)V

    new-instance v4, Lcom/yandex/metrica/impl/ob/kc;

    invoke-direct {v4, p1, p3}, Lcom/yandex/metrica/impl/ob/kc;-><init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Lc;

    invoke-direct {v5, p1}, Lcom/yandex/metrica/impl/ob/Lc;-><init>(Lcom/yandex/metrica/impl/ob/Cc;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/ec;

    invoke-direct {v6, p1, p3, p2}, Lcom/yandex/metrica/impl/ob/ec;-><init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/Pc;)V

    new-instance v7, Lcom/yandex/metrica/impl/ob/H0$c;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/H0$c;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/Bc;-><init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/Pb;Lcom/yandex/metrica/impl/ob/Pb;Lcom/yandex/metrica/impl/ob/Lc;Lcom/yandex/metrica/impl/ob/ec;Lcom/yandex/metrica/impl/ob/H0$c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/Ec;

    .line 3
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Ec;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 5
    iget-boolean v0, p1, Lcom/yandex/metrica/impl/ob/mc;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->i:Z

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->a:Lcom/yandex/metrica/impl/ob/Pc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Pc;->a(Lcom/yandex/metrica/impl/ob/mc;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->d:Lcom/yandex/metrica/impl/ob/pc;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    :goto_1
    check-cast v0, Lcom/yandex/metrica/impl/ob/Ec;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Ec;->a(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->e:Lcom/yandex/metrica/impl/ob/pc;

    if-nez p1, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    :goto_2
    check-cast v0, Lcom/yandex/metrica/impl/ob/Ec;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Ec;->a(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->f:Lcom/yandex/metrica/impl/ob/pc;

    if-nez p1, :cond_3

    move-object v2, v1

    goto :goto_3

    :cond_3
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    :goto_3
    check-cast v0, Lcom/yandex/metrica/impl/ob/Ec;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Ec;->a(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->g:Lcom/yandex/metrica/impl/ob/pc;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/mc;->q:Lcom/yandex/metrica/impl/ob/cc;

    :goto_4
    check-cast v0, Lcom/yandex/metrica/impl/ob/Ec;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Ec;->a(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Bc;->a()V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->a:Lcom/yandex/metrica/impl/ob/Pc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Pc;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->a:Lcom/yandex/metrica/impl/ob/Pc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pc;->a()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->i:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->h:Lcom/yandex/metrica/impl/ob/H0;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/H0;->c()V

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/Ec;

    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Ec;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->h:Lcom/yandex/metrica/impl/ob/H0;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/H0;->d()V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/Ec;

    .line 3
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Ec;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
