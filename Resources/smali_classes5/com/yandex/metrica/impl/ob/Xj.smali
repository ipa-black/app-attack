.class public Lcom/yandex/metrica/impl/ob/Xj;
.super Lcom/yandex/metrica/impl/ob/qj;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/yandex/metrica/impl/ob/qj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/yandex/metrica/impl/ob/Xj;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/qj;-><init>()V

    const-string v0, "android.hardware.telephony"

    .line 3
    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/mn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/yandex/metrica/impl/ob/Ij;

    invoke-direct {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/Ij;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/Kj;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Kj;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->a:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/qj;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/ak;)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/qj;->a(Lcom/yandex/metrica/impl/ob/ak;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/nc;->a(Lcom/yandex/metrica/impl/ob/mc;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/qj;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/vj;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/qj;->a(Lcom/yandex/metrica/impl/ob/vj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/qj;->a(Z)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->a:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Xj;->b:Lcom/yandex/metrica/impl/ob/qj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/qj;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
