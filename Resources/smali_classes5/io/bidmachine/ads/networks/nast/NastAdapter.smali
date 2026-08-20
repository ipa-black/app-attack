.class public Lio/bidmachine/ads/networks/nast/NastAdapter;
.super Lio/bidmachine/NetworkAdapter;
.source "NastAdapter.java"


# static fields
.field public static final ADAPTER_SDK_VERSION_NAME:Ljava/lang/String; = "1.0"

.field public static final ADAPTER_VERSION_NAME:Ljava/lang/String; = "2.1.5.1"

.field public static final KEY:Ljava/lang/String; = "nast"


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v0, 0x1

    .line 21
    new-array v6, v0, [Lio/bidmachine/AdsType;

    const/4 v0, 0x0

    sget-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const-string v2, "nast"

    const-string v3, "1.0"

    const-string v4, "2.1.5.1"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/NetworkAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public createNativeAd()Lio/bidmachine/unified/UnifiedNativeAd;
    .locals 1

    .line 43
    new-instance v0, Lio/bidmachine/ads/networks/nast/NastNative;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/NastNative;-><init>()V

    return-object v0
.end method

.method protected isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method
