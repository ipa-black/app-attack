.class Lcom/yandex/metrica/impl/ob/Sc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Fc;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ob/pi;

.field private volatile c:Lcom/yandex/metrica/impl/ob/mc;

.field private final d:Lcom/yandex/metrica/impl/ob/U7;

.field private final e:Lcom/yandex/metrica/impl/ob/T7;

.field private final f:Lcom/yandex/metrica/coreutils/services/TimeProvider;

.field private final g:Lcom/yandex/metrica/impl/ob/fd;

.field private final h:Lcom/yandex/metrica/coreutils/services/ActivationBarrier;

.field private final i:Lcom/yandex/metrica/coreutils/services/ActivationBarrier$IActivationBarrierCallback;

.field private final j:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 10

    .line 1
    new-instance v7, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-direct {v7}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/fd;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/fd;-><init>()V

    .line 10
    invoke-static {}, Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;->getInstance()Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/services/UtilityServiceLocator;->getActivationBarrier()Lcom/yandex/metrica/coreutils/services/ActivationBarrier;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/Sc;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/fd;Lcom/yandex/metrica/coreutils/services/ActivationBarrier;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/coreutils/services/TimeProvider;Lcom/yandex/metrica/impl/ob/fd;Lcom/yandex/metrica/coreutils/services/ActivationBarrier;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->k:Z

    .line 150
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->a:Landroid/content/Context;

    .line 151
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    .line 152
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Sc;->b:Lcom/yandex/metrica/impl/ob/pi;

    .line 153
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Sc;->d:Lcom/yandex/metrica/impl/ob/U7;

    .line 154
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Sc;->e:Lcom/yandex/metrica/impl/ob/T7;

    .line 155
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Sc;->j:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 156
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Sc;->f:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    .line 157
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/Sc;->g:Lcom/yandex/metrica/impl/ob/fd;

    .line 158
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/Sc;->h:Lcom/yandex/metrica/coreutils/services/ActivationBarrier;

    .line 159
    new-instance p1, Lcom/yandex/metrica/impl/ob/Sc$a;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/Sc$a;-><init>(Lcom/yandex/metrica/impl/ob/Sc;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->i:Lcom/yandex/metrica/coreutils/services/ActivationBarrier$IActivationBarrierCallback;

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Sc;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sc;->g:Lcom/yandex/metrica/impl/ob/fd;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sc;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Sc;->b:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/yandex/metrica/impl/ob/fd;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/Fc;)Lcom/yandex/metrica/networktasks/api/NetworkTask;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->getInstance()Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->getNetworkCore()Lcom/yandex/metrica/networktasks/api/NetworkCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/networktasks/api/NetworkCore;->startTask(Lcom/yandex/metrica/networktasks/api/NetworkTask;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/J7;)Z
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_0

    .line 29
    iget v0, v0, Lcom/yandex/metrica/impl/ob/mc;->c:I

    int-to-long v0, v0

    .line 30
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/J7;->c()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_1

    .line 32
    iget-wide v0, v0, Lcom/yandex/metrica/impl/ob/mc;->e:J

    .line 33
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sc;->f:Lcom/yandex/metrica/coreutils/services/TimeProvider;

    invoke-interface {v2}, Lcom/yandex/metrica/coreutils/services/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/J7;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Sc;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->k:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->d:Lcom/yandex/metrica/impl/ob/U7;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Sc;->a(Lcom/yandex/metrica/impl/ob/J7;)Z

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sc;->e:Lcom/yandex/metrica/impl/ob/T7;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/Sc;->a(Lcom/yandex/metrica/impl/ob/J7;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->k:Z

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->h:Lcom/yandex/metrica/coreutils/services/ActivationBarrier;

    sget-wide v1, Lcom/yandex/metrica/coreutils/services/ActivationBarrier;->ACTIVATION_DELAY:J

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Sc;->j:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Sc;->i:Lcom/yandex/metrica/coreutils/services/ActivationBarrier$IActivationBarrierCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/coreutils/services/ActivationBarrier;->subscribe(JLcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/coreutils/services/ActivationBarrier$IActivationBarrierCallback;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz v0, :cond_2

    .line 20
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sc;->g:Lcom/yandex/metrica/impl/ob/fd;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sc;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Sc;->b:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/yandex/metrica/impl/ob/fd;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/Fc;)Lcom/yandex/metrica/networktasks/api/NetworkTask;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->getInstance()Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->getNetworkCore()Lcom/yandex/metrica/networktasks/api/NetworkCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/networktasks/api/NetworkCore;->startTask(Lcom/yandex/metrica/networktasks/api/NetworkTask;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->c:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sc;->b:Lcom/yandex/metrica/impl/ob/pi;

    return-void
.end method
