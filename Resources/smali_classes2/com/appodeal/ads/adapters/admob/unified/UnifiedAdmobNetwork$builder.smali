.class public abstract Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork$builder;
.super Lcom/appodeal/ads/AdNetworkBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/AdNetworkBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdActivityRules()[Lcom/appodeal/ads/utils/ActivityRule;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/appodeal/ads/utils/ActivityRule;

    new-instance v1, Lcom/appodeal/ads/utils/ActivityRule$Builder;

    const-string v2, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/ActivityRule$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/ActivityRule$Builder;->build()Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
