.class public Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adUrl:Ljava/lang/String;

.field private adm:Ljava/lang/String;

.field private baseUrl:Ljava/lang/String;

.field private closeTime:I

.field private expiryTime:J

.field private height:I

.field private isTag:Z

.field private packageName:Ljava/lang/String;

.field private pageFinishedScript:Ljava/lang/String;

.field private preload:Z

.field private final restrictedData:Lcom/appodeal/ads/RestrictedData;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/RestrictedData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->closeTime:I

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->closeTime:I

    iget-object v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iget-object v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->baseUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->baseUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adm:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->adm:Ljava/lang/String;

    iget-object v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->adUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->adUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->pageFinishedScript:Ljava/lang/String;

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->pageFinishedScript:Ljava/lang/String;

    iget-wide v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->expiryTime:J

    iput-wide v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->expiryTime:J

    iget-boolean v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->preload:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->preload:Z

    iget-boolean v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->isTag:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->isTag:Z

    iget v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->width:I

    iput v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->width:I

    iget v0, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->height:I

    iput v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->height:I

    iget p1, p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->closeTime:I

    iput p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->closeTime:I

    return-void
.end method


# virtual methods
.method public build()Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;
    .locals 15

    new-instance v14, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    iget-object v1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iget-object v2, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->baseUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->adm:Ljava/lang/String;

    iget-object v5, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->adUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->pageFinishedScript:Ljava/lang/String;

    iget-wide v7, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->expiryTime:J

    iget-boolean v9, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->preload:Z

    iget-boolean v10, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->isTag:Z

    iget v11, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->width:I

    iget v12, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->height:I

    iget v13, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->closeTime:I

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;-><init>(Lcom/appodeal/ads/RestrictedData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZIII)V

    return-object v14
.end method

.method public setAdUrl(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->adUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setAdm(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->adm:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCloseTime(I)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->closeTime:I

    return-object p0
.end method

.method public setExpiryTime(J)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->expiryTime:J

    return-object p0
.end method

.method public setHeight(I)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->height:I

    return-object p0
.end method

.method public setIsTag(Z)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->isTag:Z

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setPageFinishedScript(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->pageFinishedScript:Ljava/lang/String;

    return-object p0
.end method

.method public setPreload(Z)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->preload:Z

    return-object p0
.end method

.method public setWidth(I)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->width:I

    return-object p0
.end method
