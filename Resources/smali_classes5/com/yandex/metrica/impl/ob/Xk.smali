.class Lcom/yandex/metrica/impl/ob/Xk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ll;

.field private final b:Lcom/yandex/metrica/impl/ob/kk;

.field private final c:Lcom/yandex/metrica/impl/ob/b9;

.field private volatile d:Lcom/yandex/metrica/impl/ob/fl;

.field private final e:Lcom/yandex/metrica/impl/ob/Bl;

.field private final f:Lcom/yandex/metrica/impl/ob/gk$b;

.field private final g:Lcom/yandex/metrica/impl/ob/hk;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Bl;Lcom/yandex/metrica/impl/ob/hk;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/yandex/metrica/impl/ob/gk$b;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/gk$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/Xk;-><init>(Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Bl;Lcom/yandex/metrica/impl/ob/hk;Lcom/yandex/metrica/impl/ob/gk$b;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Bl;Lcom/yandex/metrica/impl/ob/hk;Lcom/yandex/metrica/impl/ob/gk$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xk$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Xk$a;-><init>(Lcom/yandex/metrica/impl/ob/Xk;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Xk;->a:Lcom/yandex/metrica/impl/ob/ll;

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Xk;->d:Lcom/yandex/metrica/impl/ob/fl;

    .line 51
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Xk;->b:Lcom/yandex/metrica/impl/ob/kk;

    .line 52
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Xk;->c:Lcom/yandex/metrica/impl/ob/b9;

    .line 53
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Xk;->e:Lcom/yandex/metrica/impl/ob/Bl;

    .line 54
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Xk;->f:Lcom/yandex/metrica/impl/ob/gk$b;

    .line 55
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Xk;->g:Lcom/yandex/metrica/impl/ob/hk;

    return-void
.end method

.method private a(Landroid/app/Activity;JLcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;)V
    .locals 8

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xk;->e:Lcom/yandex/metrica/impl/ob/Bl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Xk;->f:Lcom/yandex/metrica/impl/ob/gk$b;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Xk;->b:Lcom/yandex/metrica/impl/ob/kk;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Xk;->c:Lcom/yandex/metrica/impl/ob/b9;

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Xk;->a:Lcom/yandex/metrica/impl/ob/ll;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    new-instance v1, Lcom/yandex/metrica/impl/ob/gk;

    .line 62
    new-instance v7, Lcom/yandex/metrica/impl/ob/gk$a;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/gk$a;-><init>()V

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/gk;-><init>(Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;ZLcom/yandex/metrica/impl/ob/ll;Lcom/yandex/metrica/impl/ob/gk$a;)V

    .line 63
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/Bl;->a(Landroid/app/Activity;JLcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 6

    .line 2
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Xk;->d:Lcom/yandex/metrica/impl/ob/fl;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xk;->g:Lcom/yandex/metrica/impl/ob/hk;

    invoke-virtual {v0, p1, v4}, Lcom/yandex/metrica/impl/ob/hk;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/fl;)Lcom/yandex/metrica/impl/ob/Wk;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/Wk;->a:Lcom/yandex/metrica/impl/ob/Wk;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    iget-wide v2, v5, Lcom/yandex/metrica/impl/ob/wl;->d:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Xk;->a(Landroid/app/Activity;JLcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;)V

    :cond_0
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/fl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Xk;->d:Lcom/yandex/metrica/impl/ob/fl;

    return-void
.end method

.method b(Landroid/app/Activity;)V
    .locals 6

    .line 1
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Xk;->d:Lcom/yandex/metrica/impl/ob/fl;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xk;->g:Lcom/yandex/metrica/impl/ob/hk;

    invoke-virtual {v0, p1, v4}, Lcom/yandex/metrica/impl/ob/hk;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/fl;)Lcom/yandex/metrica/impl/ob/Wk;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/Wk;->a:Lcom/yandex/metrica/impl/ob/Wk;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Xk;->a(Landroid/app/Activity;JLcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;)V

    :cond_0
    return-void
.end method
