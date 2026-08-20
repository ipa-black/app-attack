.class public abstract Lio/bidmachine/FullScreenAdRequestParameters;
.super Lio/bidmachine/AdRequestParameters;
.source "FullScreenAdRequestParameters.java"


# instance fields
.field private final adContentType:Lio/bidmachine/AdContentType;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequestParameters;-><init>(Lio/bidmachine/AdsType;)V

    .line 13
    iput-object p2, p0, Lio/bidmachine/FullScreenAdRequestParameters;->adContentType:Lio/bidmachine/AdContentType;

    return-void
.end method

.method private isParametersMatchedInternal(Lio/bidmachine/FullScreenAdRequestParameters;)Z
    .locals 0

    .line 33
    invoke-virtual {p1}, Lio/bidmachine/FullScreenAdRequestParameters;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;->isContentTypeMatch(Lio/bidmachine/AdContentType;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAdContentType()Lio/bidmachine/AdContentType;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequestParameters;->adContentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public isContentTypeMatch(Lio/bidmachine/AdContentType;)Z
    .locals 2

    .line 22
    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequestParameters;->adContentType:Lio/bidmachine/AdContentType;

    sget-object v1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequestParameters;->adContentType:Lio/bidmachine/AdContentType;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/bidmachine/FullScreenAdRequestParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lio/bidmachine/FullScreenAdRequestParameters;

    .line 29
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;->isParametersMatchedInternal(Lio/bidmachine/FullScreenAdRequestParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
