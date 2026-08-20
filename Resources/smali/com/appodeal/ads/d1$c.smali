.class public final Lcom/appodeal/ads/d1$c;
.super Lcom/appodeal/ads/AdNetworkBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/AdNetworkBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/appodeal/ads/AdNetwork;
    .locals 1

    new-instance v0, Lcom/appodeal/ads/d1;

    .line 1
    invoke-direct {v0, p0}, Lcom/appodeal/ads/d1;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-object v0
.end method

.method public final getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "debug"

    return-object v0
.end method
