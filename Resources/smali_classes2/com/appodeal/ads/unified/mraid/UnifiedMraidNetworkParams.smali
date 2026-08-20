.class public Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    }
.end annotation


# instance fields
.field public final adUrl:Ljava/lang/String;

.field public final adm:Ljava/lang/String;

.field public final baseUrl:Ljava/lang/String;

.field public final closeTime:I

.field public final expiryTime:J

.field public final height:I

.field public final isTag:Z

.field public final packageName:Ljava/lang/String;

.field public final pageFinishedScript:Ljava/lang/String;

.field public final preload:Z

.field public final restrictedData:Lcom/appodeal/ads/RestrictedData;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/RestrictedData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iput-object p2, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->baseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adm:Ljava/lang/String;

    iput-object p5, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->pageFinishedScript:Ljava/lang/String;

    iput-wide p7, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->expiryTime:J

    iput-boolean p9, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->preload:Z

    iput-boolean p10, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->isTag:Z

    iput p11, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->width:I

    iput p12, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->height:I

    iput p13, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->closeTime:I

    return-void
.end method
