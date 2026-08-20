.class public Lcom/yandex/metrica/impl/ob/wc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

.field private final b:Lcom/yandex/metrica/impl/ob/U7;

.field private final c:Lcom/yandex/metrica/impl/ob/T7;

.field private final d:Lcom/yandex/metrica/impl/ob/Ed;

.field private final e:Lcom/yandex/metrica/impl/ob/yd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->b()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/wc;->a:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 3
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ja;->f()Lcom/yandex/metrica/impl/ob/U7;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/wc;->b:Lcom/yandex/metrica/impl/ob/U7;

    .line 4
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->e()Lcom/yandex/metrica/impl/ob/T7;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/wc;->c:Lcom/yandex/metrica/impl/ob/T7;

    .line 5
    new-instance p1, Lcom/yandex/metrica/impl/ob/Ed;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ed;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/wc;->d:Lcom/yandex/metrica/impl/ob/Ed;

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/yd;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ed;->a()Lcom/yandex/metrica/impl/ob/wd;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/yd;-><init>(Lcom/yandex/metrica/impl/ob/wd;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/wc;->e:Lcom/yandex/metrica/impl/ob/yd;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wc;->a:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/T7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wc;->c:Lcom/yandex/metrica/impl/ob/T7;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/U7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wc;->b:Lcom/yandex/metrica/impl/ob/U7;

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/yd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wc;->e:Lcom/yandex/metrica/impl/ob/yd;

    return-object v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/Ed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wc;->d:Lcom/yandex/metrica/impl/ob/Ed;

    return-object v0
.end method
