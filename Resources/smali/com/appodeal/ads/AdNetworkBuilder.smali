.class public abstract Lcom/appodeal/ads/AdNetworkBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/appodeal/ads/AdNetwork;
.end method

.method public getAdActivityRules()[Lcom/appodeal/ads/utils/ActivityRule;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/appodeal/ads/utils/ActivityRule;

    return-object v0
.end method

.method public abstract getAdapterVersion()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method
