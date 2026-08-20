.class public Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;
    }
.end annotation


# instance fields
.field public final adm:Ljava/lang/String;

.field public final autoClose:Z

.field public final closeTime:I

.field public final expiryTime:J

.field public final packageName:Ljava/lang/String;

.field public final restrictedData:Lcom/appodeal/ads/RestrictedData;

.field public final vastUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/RestrictedData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iput-object p2, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->adm:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->vastUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->packageName:Ljava/lang/String;

    iput p5, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->closeTime:I

    iput-wide p6, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->expiryTime:J

    iput-boolean p8, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->autoClose:Z

    return-void
.end method
