.class public final Lcom/appodeal/ads/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/AdNetworkMediationParams;


# instance fields
.field public a:Lcom/appodeal/ads/r;

.field public final b:Lcom/appodeal/ads/RestrictedData;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/h;->a:Lcom/appodeal/ads/r;

    iput-object p2, p0, Lcom/appodeal/ads/h;->b:Lcom/appodeal/ads/RestrictedData;

    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/i0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/h;->a:Lcom/appodeal/ads/r;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/r;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getRestrictedData()Lcom/appodeal/ads/RestrictedData;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/h;->b:Lcom/appodeal/ads/RestrictedData;

    return-object v0
.end method

.method public final getStoreUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/i0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final isCoronaApp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/appodeal/ads/i0;->c:Z

    return v0
.end method

.method public final isTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/r0;->b:Z

    return v0
.end method
