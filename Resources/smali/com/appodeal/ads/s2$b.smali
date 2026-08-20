.class public final Lcom/appodeal/ads/s2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/UnifiedNativeParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appodeal/ads/s2$b;->a:I

    return-void
.end method


# virtual methods
.method public final getAdCountToLoad()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/s2$b;->a:I

    return v0
.end method

.method public final getMediaAssetType()Lcom/appodeal/ads/Native$MediaAssetType;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    return-object v0
.end method

.method public final getNativeAdType()Lcom/appodeal/ads/Native$NativeAdType;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    return-object v0
.end method

.method public final obtainPlacementId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    invoke-static {v0}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/segments/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final obtainSegmentId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->r()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
