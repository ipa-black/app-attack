.class public Lcom/yandex/metrica/impl/ob/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bj;

.field private final b:Lcom/yandex/metrica/impl/ob/sm;

.field private final c:Lcom/yandex/metrica/impl/ob/fj;

.field private final d:Lcom/yandex/metrica/impl/ob/cj;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bj;Lcom/yandex/metrica/impl/ob/cj;Lcom/yandex/metrica/impl/ob/sm;Lcom/yandex/metrica/impl/ob/fj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dj;->a:Lcom/yandex/metrica/impl/ob/bj;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dj;->d:Lcom/yandex/metrica/impl/ob/cj;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/dj;->b:Lcom/yandex/metrica/impl/ob/sm;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/fj;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/W0;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dj;->b:Lcom/yandex/metrica/impl/ob/sm;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/sm;->a()V

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/fj;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fj;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dj;->a:Lcom/yandex/metrica/impl/ob/bj;

    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/bj;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dj;->d:Lcom/yandex/metrica/impl/ob/cj;

    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/cj;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/fj;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/fj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object v1, v0

    .line 18
    :catchall_1
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dj;->b:Lcom/yandex/metrica/impl/ob/sm;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/sm;->b()V

    if-nez v1, :cond_2

    .line 21
    new-instance v1, Lcom/yandex/metrica/impl/ob/W0;

    sget-object v2, Lcom/yandex/metrica/impl/ob/U0;->g:Lcom/yandex/metrica/impl/ob/U0;

    const-string v3, "Uuid must be obtained via async API YandexMetricaInternal#requestStartupIdentifiers(@NonNull Context context, @NonNull IIdentifierCallback callback,@NonNull String... identifiers)"

    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/W0;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/U0;Ljava/lang/String;)V

    return-object v1

    .line 29
    :cond_2
    new-instance v2, Lcom/yandex/metrica/impl/ob/W0;

    sget-object v3, Lcom/yandex/metrica/impl/ob/U0;->b:Lcom/yandex/metrica/impl/ob/U0;

    invoke-direct {v2, v1, v3, v0}, Lcom/yandex/metrica/impl/ob/W0;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/U0;Ljava/lang/String;)V

    return-object v2
.end method
