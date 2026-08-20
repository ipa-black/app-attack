.class public Lcom/yandex/metrica/impl/ob/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gg;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/gg;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/gg;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/gg;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gg;->b:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/gg;)Landroid/database/Cursor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/gg;->b:Landroid/database/Cursor;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/vg;)V
    .locals 4

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 4
    new-instance v1, Lcom/yandex/metrica/impl/ob/fg;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/fg;-><init>(Lcom/yandex/metrica/impl/ob/gg;)V

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 6
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Pm;->a(Ljava/lang/Runnable;)Lcom/yandex/metrica/impl/ob/Lm;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/dg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gg;->b:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 16
    check-cast p1, Lcom/yandex/metrica/impl/ob/ng$a;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ng$a;->a(Lcom/yandex/metrica/impl/ob/dg;)V

    return-void

    .line 17
    :catchall_0
    :try_start_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/ng$a;

    .line 18
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ng$a;->a:Lcom/yandex/metrica/impl/ob/ng;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ng;->a:Lcom/yandex/metrica/impl/ob/mg$b;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mg$b;->a:Lcom/yandex/metrica/impl/ob/mg;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/mg;->c(Lcom/yandex/metrica/impl/ob/mg;)Lcom/yandex/metrica/impl/ob/mg$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/mg;->a(Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/ob/dg;Lcom/yandex/metrica/impl/ob/mg$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/gg;->b:Landroid/database/Cursor;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gg;->b:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 20
    throw p1
.end method
