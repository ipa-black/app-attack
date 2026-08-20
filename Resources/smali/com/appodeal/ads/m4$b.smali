.class public final Lcom/appodeal/ads/m4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/UnifiedRewardedParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAfd()I
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    .line 1
    iget v0, v0, Lcom/appodeal/ads/u;->q:I

    return v0
.end method

.method public final getMaxDuration()I
    .locals 1

    sget v0, Lcom/appodeal/ads/o4;->b:I

    return v0
.end method

.method public final obtainPlacementId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    invoke-static {v0}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/segments/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final obtainSegmentId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->r()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
