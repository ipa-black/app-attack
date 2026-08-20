.class public Lcom/yandex/metrica/impl/ob/Of;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/M0;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Sf;

.field private final b:Lcom/yandex/metrica/impl/ob/ag;

.field private final c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/yandex/metrica/impl/ob/Wf;

.field private final f:Lcom/yandex/metrica/e;

.field private final g:Lcom/yandex/metrica/f;

.field private final h:Lcom/yandex/metrica/impl/ob/Nf;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ag;Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/f;Lcom/yandex/metrica/e;)V
    .locals 9

    .line 12
    new-instance v8, Lcom/yandex/metrica/impl/ob/Nf;

    .line 21
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Zf;->a()Lcom/yandex/metrica/impl/ob/Yf;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$c;

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v7, p7

    invoke-direct {v1, p4, p2, v7}, Lcom/yandex/metrica/impl/ob/Of$c;-><init>(Lcom/yandex/metrica/impl/ob/Sf;Landroid/content/Context;Lcom/yandex/metrica/e;)V

    move-object v3, p1

    move-object v6, p6

    invoke-direct {v8, v0, p6, p1, v1}, Lcom/yandex/metrica/impl/ob/Nf;-><init>(Lcom/yandex/metrica/impl/ob/Yf;Lcom/yandex/metrica/f;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/qm;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/Of;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ag;Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/f;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ob/Nf;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ag;Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/f;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ob/Nf;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 25
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Of;->d:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    .line 27
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Of;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 28
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Of;->e:Lcom/yandex/metrica/impl/ob/Wf;

    .line 29
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 30
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Of;->f:Lcom/yandex/metrica/e;

    .line 31
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/Of;->h:Lcom/yandex/metrica/impl/ob/Nf;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/yandex/metrica/impl/ob/Sf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Sf;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/Of;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Sf;)V

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Sf;)V
    .locals 8

    .line 3
    new-instance v3, Lcom/yandex/metrica/impl/ob/ag;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/ag;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Wf;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Wf;-><init>()V

    new-instance v6, Lcom/yandex/metrica/f;

    new-instance v0, Lcom/yandex/metrica/impl/ob/D2;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/D2;-><init>()V

    invoke-direct {v6, p4, v0}, Lcom/yandex/metrica/f;-><init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/D2;)V

    .line 10
    invoke-static {p3}, Lcom/yandex/metrica/e;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yandex/metrica/e$a;->a()Lcom/yandex/metrica/e;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/Of;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ag;Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/f;Lcom/yandex/metrica/e;)V

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/e;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->a:Lcom/yandex/metrica/impl/ob/Sf;

    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Of;->d:Landroid/content/Context;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/R2;->c(Lcom/yandex/metrica/e;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/yandex/metrica/impl/ob/M0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->a:Lcom/yandex/metrica/impl/ob/Sf;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Of;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Of;->f:Lcom/yandex/metrica/e;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/R2;->a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/e;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->e:Lcom/yandex/metrica/impl/ob/Wf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Wf;->a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$t;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$t;-><init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/e;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/H6;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$m;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$m;-><init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/impl/ob/H6;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/w6;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$u;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$u;-><init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/impl/ob/w6;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$w;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Of$w;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$v;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/Of$v;-><init>(Lcom/yandex/metrica/impl/ob/Of;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Of$a;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/e$a;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/e$a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/yandex/metrica/e$a;->a()Lcom/yandex/metrica/e;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$s;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$s;-><init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/e;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Of$b;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPluginExtension()Lcom/yandex/metrica/plugins/IPluginReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->h:Lcom/yandex/metrica/impl/ob/Nf;

    return-object v0
.end method

.method public pauseSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$k;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/Of$k;-><init>(Lcom/yandex/metrica/impl/ob/Of;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportAdRevenue(Lcom/yandex/metrica/AdRevenue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportAdRevenue(Lcom/yandex/metrica/AdRevenue;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$p;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$p;-><init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/AdRevenue;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportECommerce(Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportECommerce(Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$q;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$q;-><init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/metrica/impl/ob/Zf;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v2, Lcom/yandex/metrica/impl/ob/Of$h;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/yandex/metrica/impl/ob/Of$h;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Zf;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Of$h;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Zf;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    .line 148
    new-instance p2, Lcom/yandex/metrica/impl/ob/k6;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/k6;-><init>()V

    .line 149
    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Of$g;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportEvent(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$d;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$d;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Zf;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Of$e;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Zf;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Of$f;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportRevenue(Lcom/yandex/metrica/Revenue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportRevenue(Lcom/yandex/metrica/Revenue;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$o;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$o;-><init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/Revenue;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportUnhandledException(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$i;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$i;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$n;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$n;-><init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/profile/UserProfile;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$j;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/Of$j;-><init>(Lcom/yandex/metrica/impl/ob/Of;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventsBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$x;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/Of$x;-><init>(Lcom/yandex/metrica/impl/ob/Of;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStatisticsSending(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$r;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$r;-><init>(Lcom/yandex/metrica/impl/ob/Of;Z)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->b:Lcom/yandex/metrica/impl/ob/ag;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->g:Lcom/yandex/metrica/f;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Of$l;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Of$l;-><init>(Lcom/yandex/metrica/impl/ob/Of;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
