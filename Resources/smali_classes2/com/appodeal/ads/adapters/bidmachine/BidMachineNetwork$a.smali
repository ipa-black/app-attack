.class public final Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;
.super Ljava/lang/Object;
.source "BidMachineNetwork.java"

# interfaces
.implements Lcom/appodeal/ads/adapters/bidmachine/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/TargetingParams;

.field public final synthetic b:Lio/bidmachine/PriceFloorParams;

.field public final synthetic c:Lio/bidmachine/CustomParams;

.field public final synthetic d:Lorg/json/JSONArray;

.field public final synthetic e:Lcom/appodeal/ads/NetworkInitializationListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/PriceFloorParams;Lio/bidmachine/CustomParams;Lorg/json/JSONArray;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->a:Lio/bidmachine/TargetingParams;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->b:Lio/bidmachine/PriceFloorParams;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->c:Lio/bidmachine/CustomParams;

    iput-object p4, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->d:Lorg/json/JSONArray;

    iput-object p5, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->e:Lcom/appodeal/ads/NetworkInitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->e:Lcom/appodeal/ads/NetworkInitializationListener;

    invoke-interface {v0, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onInitializationFinished()V
    .locals 5

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->a:Lio/bidmachine/TargetingParams;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->b:Lio/bidmachine/PriceFloorParams;

    iget-object v3, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->c:Lio/bidmachine/CustomParams;

    .line 4
    iget-object v4, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->d:Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;-><init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/PriceFloorParams;Lio/bidmachine/CustomParams;Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->e:Lcom/appodeal/ads/NetworkInitializationListener;

    invoke-interface {v1, v0}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;->e:Lcom/appodeal/ads/NetworkInitializationListener;

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {v0, v1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_1
    return-void
.end method
