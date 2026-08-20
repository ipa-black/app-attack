.class public final Lcom/yandex/metrica/impl/ob/gb$a;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/gb;-><init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/gb$b;Lkotlin/random/Random;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/kb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/gb;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/gb$b;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/kb;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/gb;Lcom/yandex/metrica/impl/ob/gb$b;Lcom/yandex/metrica/impl/ob/kb;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/gb$b;",
            "Lcom/yandex/metrica/impl/ob/kb;",
            "J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gb$a;->a:Lcom/yandex/metrica/impl/ob/gb;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/gb$a;->b:Lcom/yandex/metrica/impl/ob/gb$b;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/gb$a;->c:Lcom/yandex/metrica/impl/ob/kb;

    iput-wide p4, p0, Lcom/yandex/metrica/impl/ob/gb$a;->d:J

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb$a;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gb;->c(Lcom/yandex/metrica/impl/ob/gb;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb$a;->b:Lcom/yandex/metrica/impl/ob/gb$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gb$b;->a(Z)V

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb$a;->c:Lcom/yandex/metrica/impl/ob/kb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kb;->a()V

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb$a;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gb;->a(Lcom/yandex/metrica/impl/ob/gb;)Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gb$a;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/gb;->b(Lcom/yandex/metrica/impl/ob/gb;)Lcom/yandex/metrica/impl/ob/em;

    move-result-object v1

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/gb$a;->d:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
