.class public Lcom/appodeal/ads/adapters/notsy/NotsyNetwork$builder;
.super Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork$builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/notsy/NotsyNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork$builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/appodeal/ads/AdNetwork;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/adapters/notsy/NotsyNetwork$builder;->build()Lcom/appodeal/ads/adapters/notsy/NotsyNetwork;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/appodeal/ads/adapters/notsy/NotsyNetwork;
    .locals 1

    new-instance v0, Lcom/appodeal/ads/adapters/notsy/NotsyNetwork;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/adapters/notsy/NotsyNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-object v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "notsy"

    return-object v0
.end method
