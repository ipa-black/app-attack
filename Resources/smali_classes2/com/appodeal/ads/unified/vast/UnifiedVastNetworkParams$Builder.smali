.class public Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public adm:Ljava/lang/String;

.field public autoClose:Z

.field public closeTime:I

.field public expiryTime:J

.field public packageName:Ljava/lang/String;

.field public restrictedData:Lcom/appodeal/ads/RestrictedData;

.field public vastUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/RestrictedData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iput-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iget-object v0, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->adm:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->adm:Ljava/lang/String;

    iget-object v0, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->vastUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->vastUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->packageName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->expiryTime:J

    iput-wide v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->expiryTime:J

    iget v0, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->closeTime:I

    iput v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->closeTime:I

    iget-boolean p1, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->autoClose:Z

    iput-boolean p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->autoClose:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;
    .locals 10

    new-instance v9, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;

    iget-object v1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iget-object v2, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->adm:Ljava/lang/String;

    iget-object v3, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->vastUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->closeTime:I

    iget-wide v6, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->expiryTime:J

    iget-boolean v8, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->autoClose:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;-><init>(Lcom/appodeal/ads/RestrictedData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V

    return-object v9
.end method

.method public setAdm(Ljava/lang/String;)Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->adm:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoClose(Z)Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->autoClose:Z

    return-object p0
.end method

.method public setCloseTime(I)Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->closeTime:I

    return-object p0
.end method

.method public setExpiryTime(J)Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->expiryTime:J

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setVastUrl(Ljava/lang/String;)Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->vastUrl:Ljava/lang/String;

    return-object p0
.end method
