.class public final Lcom/appodeal/ads/modules/libs/network/state/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver;


# instance fields
.field public a:Landroid/net/ConnectivityManager;

.field public final b:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/appodeal/ads/modules/libs/network/NetworkState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/NetworkState;->NotInitialized:Lcom/appodeal/ads/modules/libs/network/NetworkState;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/modules/libs/network/state/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/ads/modules/libs/network/state/a;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/appodeal/ads/modules/libs/network/NetworkState;->Enabled:Lcom/appodeal/ads/modules/libs/network/NetworkState;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/appodeal/ads/modules/libs/network/NetworkState;->Disabled:Lcom/appodeal/ads/modules/libs/network/NetworkState;

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;

    invoke-virtual {p0}, Lcom/appodeal/ads/modules/libs/network/state/a;->isConnected()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;->onConnectionUpdated(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final getNetworkStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/modules/libs/network/NetworkState;->NotInitialized:Lcom/appodeal/ads/modules/libs/network/NetworkState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->a:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 4
    sget-object v1, Lcom/appodeal/ads/modules/libs/network/NetworkState;->Disabled:Lcom/appodeal/ads/modules/libs/network/NetworkState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/state/a$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/modules/libs/network/state/a$a;-><init>(Lcom/appodeal/ads/modules/libs/network/state/a;)V

    :try_start_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5
    :catchall_0
    iget-object p1, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 6
    sget-object v0, Lcom/appodeal/ads/modules/libs/network/NetworkState;->ConnectivityManagerError:Lcom/appodeal/ads/modules/libs/network/NetworkState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final subscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unsubscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
