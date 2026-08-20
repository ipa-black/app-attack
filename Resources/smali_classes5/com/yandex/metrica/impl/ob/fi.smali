.class public Lcom/yandex/metrica/impl/ob/fi;
.super Lcom/yandex/metrica/impl/ob/Gg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Gg<",
        "Lcom/yandex/metrica/impl/ob/Mg;",
        "Lcom/yandex/metrica/impl/ob/Mg$b;",
        "Lcom/yandex/metrica/impl/ob/Mg$b;",
        "Lcom/yandex/metrica/impl/ob/Mg$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Mg$c;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Mg$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Gg;-><init>(Lcom/yandex/metrica/impl/ob/Eg$d;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Dg;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/Mg$b;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Eg$c;

    .line 2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Gg;->c()Lcom/yandex/metrica/impl/ob/Dg;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/Mg$b;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/Mg$b;->a(Lcom/yandex/metrica/impl/ob/Mg$b;)Lcom/yandex/metrica/impl/ob/Mg$b;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/Eg$c;-><init>(Lcom/yandex/metrica/impl/ob/pi;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/Gg;->a(Lcom/yandex/metrica/impl/ob/Eg$c;)V

    .line 6
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Gg;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
