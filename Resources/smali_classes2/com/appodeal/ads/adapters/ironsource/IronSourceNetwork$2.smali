.class Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$2;
.super Ljava/lang/Object;
.source "IronSourceNetwork.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/logger/LogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->initialize(Landroid/app/Activity;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$2;->this$0:Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 158
    const-string p3, "IronSource %s:%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Network"

    const-string p3, "Log"

    invoke-static {p2, p3, p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
