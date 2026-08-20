.class public final Lcom/appodeal/ads/modules/libs/network/NetworkStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0096\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0001J\u0011\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0096\u0001J\u0011\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0096\u0001R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/NetworkStatus;",
        "Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver;",
        "Landroid/content/Context;",
        "applicationContext",
        "",
        "init",
        "",
        "isConnected",
        "Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;",
        "listener",
        "subscribe",
        "unsubscribe",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/appodeal/ads/modules/libs/network/NetworkState;",
        "getNetworkStateFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "networkStateFlow",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/modules/libs/network/state/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;-><init>()V

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/libs/network/state/a;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    return-void
.end method


# virtual methods
.method public getNetworkStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/appodeal/ads/modules/libs/network/NetworkState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/modules/libs/network/state/a;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/modules/libs/network/state/a;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/libs/network/state/a;->isConnected()Z

    move-result v0

    return v0
.end method

.method public subscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/modules/libs/network/state/a;->subscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V

    return-void
.end method

.method public unsubscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/modules/libs/network/state/a;->unsubscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V

    return-void
.end method
