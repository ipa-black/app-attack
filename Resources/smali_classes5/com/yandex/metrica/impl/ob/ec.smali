.class public Lcom/yandex/metrica/impl/ob/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/e9;

.field private final b:Lcom/yandex/metrica/impl/ob/Cc;

.field private final c:Lcom/yandex/metrica/impl/ob/gc;

.field private final d:Lcom/yandex/metrica/impl/ob/bc;

.field private final e:Lcom/yandex/metrica/impl/ob/Zb;

.field private final f:Lcom/yandex/metrica/impl/ob/dc;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/Pc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ec;->b:Lcom/yandex/metrica/impl/ob/Cc;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ec;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ec;->b()Lcom/yandex/metrica/impl/ob/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ec;->c:Lcom/yandex/metrica/impl/ob/gc;

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ec;->a(Lcom/yandex/metrica/impl/ob/gc;)Lcom/yandex/metrica/impl/ob/Zb;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ec;->e:Lcom/yandex/metrica/impl/ob/Zb;

    .line 6
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ec;->a()Lcom/yandex/metrica/impl/ob/bc;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ec;->d:Lcom/yandex/metrica/impl/ob/bc;

    .line 7
    invoke-direct {p0, p3}, Lcom/yandex/metrica/impl/ob/ec;->a(Lcom/yandex/metrica/impl/ob/Pc;)Lcom/yandex/metrica/impl/ob/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ec;->f:Lcom/yandex/metrica/impl/ob/dc;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/gc;)Lcom/yandex/metrica/impl/ob/Zb;
    .locals 2

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Zb;

    .line 4
    new-instance v1, Lcom/yandex/metrica/impl/ob/x2;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/x2;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/Zb;-><init>(Lcom/yandex/metrica/impl/ob/gc;Lcom/yandex/metrica/impl/ob/x2;)V

    return-object v0
.end method

.method private a()Lcom/yandex/metrica/impl/ob/bc;
    .locals 2

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/bc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ec;->b:Lcom/yandex/metrica/impl/ob/Cc;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bc;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    return-object v0
.end method

.method private a(Lcom/yandex/metrica/impl/ob/Pc;)Lcom/yandex/metrica/impl/ob/dc;
    .locals 4

    .line 5
    new-instance v0, Lcom/yandex/metrica/impl/ob/dc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ec;->b:Lcom/yandex/metrica/impl/ob/Cc;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/Sb;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->c:Lcom/yandex/metrica/impl/ob/yd;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/yandex/metrica/impl/ob/dc;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;Lcom/yandex/metrica/impl/ob/yd;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ec;)Lcom/yandex/metrica/impl/ob/e9;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ec;->a:Lcom/yandex/metrica/impl/ob/e9;

    return-object p0
.end method

.method private b()Lcom/yandex/metrica/impl/ob/gc;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ec$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/ec$a;-><init>(Lcom/yandex/metrica/impl/ob/ec;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ob/Ec;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/cc;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Ec<",
            "Lcom/yandex/metrica/impl/ob/cc;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v6, Lcom/yandex/metrica/impl/ob/Ec;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ec;->f:Lcom/yandex/metrica/impl/ob/dc;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ec;->e:Lcom/yandex/metrica/impl/ob/Zb;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ec;->c:Lcom/yandex/metrica/impl/ob/gc;

    .line 7
    new-instance v3, Lcom/yandex/metrica/impl/ob/Ob;

    .line 8
    new-instance v4, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-direct {v4}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;-><init>()V

    invoke-direct {v3, v0, v4}, Lcom/yandex/metrica/impl/ob/Ob;-><init>(Lcom/yandex/metrica/impl/ob/gc;Lcom/yandex/metrica/coreutils/services/TimeProvider;)V

    .line 9
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ec;->d:Lcom/yandex/metrica/impl/ob/bc;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Ec;-><init>(Lcom/yandex/metrica/impl/ob/Dc;Lcom/yandex/metrica/impl/ob/Lb;Lcom/yandex/metrica/impl/ob/Gc;Lcom/yandex/metrica/impl/ob/Qb;Ljava/lang/Object;)V

    return-object v6
.end method
