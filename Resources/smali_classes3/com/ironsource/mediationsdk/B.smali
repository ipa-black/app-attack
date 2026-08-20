.class public final Lcom/ironsource/mediationsdk/B;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/ironsource/mediationsdk/B;


# instance fields
.field private b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/mediationsdk/B;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/B;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/B;->a:Lcom/ironsource/mediationsdk/B;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-void
.end method

.method public static declared-synchronized a()Lcom/ironsource/mediationsdk/B;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/B;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/B;->a:Lcom/ironsource/mediationsdk/B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/B;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-object p0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/B;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p0

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/B$2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/B$2;-><init>(Lcom/ironsource/mediationsdk/B;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/B$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/B$1;-><init>(Lcom/ironsource/mediationsdk/B;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/B$6;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/B$6;-><init>(Lcom/ironsource/mediationsdk/B;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/B$3;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/B$3;-><init>(Lcom/ironsource/mediationsdk/B;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/B$4;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/B$4;-><init>(Lcom/ironsource/mediationsdk/B;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/B$5;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/B$5;-><init>(Lcom/ironsource/mediationsdk/B;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B;->b:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/B$7;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/B$7;-><init>(Lcom/ironsource/mediationsdk/B;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
