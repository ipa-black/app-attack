.class public Lcom/yandex/metrica/impl/ob/sm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final b:Lcom/yandex/metrica/impl/ob/tm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/tm;

    invoke-direct {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/tm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/sm;-><init>(Ljava/util/concurrent/locks/ReentrantLock;Lcom/yandex/metrica/impl/ob/tm;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;Lcom/yandex/metrica/impl/ob/tm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/sm;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/sm;->b:Lcom/yandex/metrica/impl/ob/tm;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sm;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sm;->b:Lcom/yandex/metrica/impl/ob/tm;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/tm;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sm;->b:Lcom/yandex/metrica/impl/ob/tm;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/tm;->b()V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sm;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sm;->b:Lcom/yandex/metrica/impl/ob/tm;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/tm;->c()V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sm;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
