.class public abstract Lcom/yandex/metrica/impl/ob/Ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/net/Socket;

.field final b:Lcom/yandex/metrica/impl/ob/Gh;

.field final c:Lcom/yandex/metrica/impl/ob/di;

.field final d:Landroid/net/Uri;

.field final e:Lcom/yandex/metrica/impl/ob/Hh;


# direct methods
.method constructor <init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Lcom/yandex/metrica/impl/ob/Hh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ah;->a:Ljava/net/Socket;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ah;->d:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ah;->b:Lcom/yandex/metrica/impl/ob/Gh;

    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ah;->c:Lcom/yandex/metrica/impl/ob/di;

    .line 6
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Ah;->e:Lcom/yandex/metrica/impl/ob/Hh;

    return-void
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\r\n"

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Ah;->a(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method a(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ah;->e:Lcom/yandex/metrica/impl/ob/Hh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Hh;->b()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ah;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/Ah;->a(Ljava/io/OutputStream;)V

    .line 8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v1, v0, p2}, Lcom/yandex/metrica/impl/ob/Ah;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/Ah;->a(Ljava/io/OutputStream;)V

    .line 12
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 13
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 15
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Ah;->e:Lcom/yandex/metrica/impl/ob/Hh;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hh;->c()V

    .line 16
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Ah;->b:Lcom/yandex/metrica/impl/ob/Gh;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Ah;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getLocalPort()I

    move-result p2

    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/Ah;->e:Lcom/yandex/metrica/impl/ob/Hh;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast p1, Lcom/yandex/metrica/impl/ob/Jh;

    :try_start_2
    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Jh;->b(ILcom/yandex/metrica/impl/ob/Hh;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 18
    :goto_1
    :try_start_3
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Ah;->b:Lcom/yandex/metrica/impl/ob/Gh;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string p3, "io_exception_during_sync"

    check-cast p2, Lcom/yandex/metrica/impl/ob/Jh;

    :try_start_4
    invoke-virtual {p2, p3, p1}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v0

    .line 22
    :goto_2
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    return-void

    :goto_3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 23
    throw p1
.end method
