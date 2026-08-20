.class public final Lcom/yandex/metrica/impl/ob/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/gb$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/em;

.field private volatile b:Z

.field private final c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/gb$b;Lkotlin/random/Random;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/kb;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 13
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->b()I

    move-result v0

    int-to-long v5, v0

    .line 14
    new-instance v0, Lcom/yandex/metrica/impl/ob/gb$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/gb$a;-><init>(Lcom/yandex/metrica/impl/ob/gb;Lcom/yandex/metrica/impl/ob/gb$b;Lcom/yandex/metrica/impl/ob/kb;J)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    .line 25
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/gb$b;->a()Z

    move-result p2

    const-string p5, "periodicRunnable"

    if-eqz p2, :cond_1

    .line 27
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    if-nez p1, :cond_0

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/em;->run()V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->a()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Lkotlin/random/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    .line 31
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    if-nez p3, :cond_2

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p4, p3, p1, p2, p5}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/yandex/metrica/impl/ob/gb;)Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/metrica/impl/ob/gb;)Lcom/yandex/metrica/impl/ob/em;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    if-nez p0, :cond_0

    const-string v0, "periodicRunnable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/metrica/impl/ob/gb;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/metrica/impl/ob/gb;->b:Z

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/gb;->b:Z

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/em;

    if-nez v1, :cond_0

    const-string v2, "periodicRunnable"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    return-void
.end method
