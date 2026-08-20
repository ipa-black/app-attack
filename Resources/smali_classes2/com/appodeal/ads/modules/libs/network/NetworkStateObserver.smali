.class public interface abstract Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0001\u0011J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH&R\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver;",
        "",
        "networkStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/appodeal/ads/modules/libs/network/NetworkState;",
        "getNetworkStateFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "init",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "isConnected",
        "",
        "subscribe",
        "listener",
        "Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;",
        "unsubscribe",
        "ConnectionListener",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getNetworkStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/appodeal/ads/modules/libs/network/NetworkState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract subscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V
.end method

.method public abstract unsubscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V
.end method
