.class Lcom/yandex/metrica/impl/ob/la$a;
.super Lcom/yandex/metrica/impl/ob/Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/metrica/impl/ob/la;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/la;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 2
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/Lm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/la;->b(Lcom/yandex/metrica/impl/ob/la;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/la;Z)Z

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lm;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    monitor-enter p0

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/la;->c(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 12
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :catch_0
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/la;->c(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/la;->c(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 18
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/la;Ljava/util/Map;)V

    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    .line 24
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
