.class public Lio/bidmachine/richmedia/RichMediaView;
.super Lio/bidmachine/AdView;
.source "RichMediaView.java"

# interfaces
.implements Lio/bidmachine/richmedia/RichMediaInteractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdView<",
        "Lio/bidmachine/richmedia/RichMediaView;",
        "Lio/bidmachine/richmedia/RichMediaAd;",
        "Lio/bidmachine/richmedia/RichMediaRequest;",
        "Lio/bidmachine/ViewAdObject<",
        "Lio/bidmachine/richmedia/RichMediaRequest;",
        "Lio/bidmachine/unified/UnifiedRichMediaAd;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">;",
        "Lio/bidmachine/richmedia/RichMediaListener;",
        ">;",
        "Lio/bidmachine/richmedia/RichMediaInteractor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private mute(Lio/bidmachine/richmedia/RichMediaAd;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lio/bidmachine/richmedia/RichMediaAd;->mute()V

    :cond_0
    return-void
.end method

.method private pause(Lio/bidmachine/richmedia/RichMediaAd;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lio/bidmachine/richmedia/RichMediaAd;->pause()V

    :cond_0
    return-void
.end method

.method private resume(Lio/bidmachine/richmedia/RichMediaAd;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lio/bidmachine/richmedia/RichMediaAd;->resume()V

    :cond_0
    return-void
.end method

.method private unmute(Lio/bidmachine/richmedia/RichMediaAd;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lio/bidmachine/richmedia/RichMediaAd;->unmute()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lio/bidmachine/richmedia/RichMediaView;->createAd(Landroid/content/Context;)Lio/bidmachine/richmedia/RichMediaAd;

    move-result-object p1

    return-object p1
.end method

.method protected createAd(Landroid/content/Context;)Lio/bidmachine/richmedia/RichMediaAd;
    .locals 1

    .line 35
    new-instance v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {v0, p1}, Lio/bidmachine/richmedia/RichMediaAd;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public mute()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaView;->getPendingAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {p0, v0}, Lio/bidmachine/richmedia/RichMediaView;->mute(Lio/bidmachine/richmedia/RichMediaAd;)V

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaView;->getCurrentAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {p0, v0}, Lio/bidmachine/richmedia/RichMediaView;->mute(Lio/bidmachine/richmedia/RichMediaAd;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaView;->getPendingAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {p0, v0}, Lio/bidmachine/richmedia/RichMediaView;->pause(Lio/bidmachine/richmedia/RichMediaAd;)V

    .line 53
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaView;->getCurrentAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {p0, v0}, Lio/bidmachine/richmedia/RichMediaView;->pause(Lio/bidmachine/richmedia/RichMediaAd;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaView;->getPendingAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {p0, v0}, Lio/bidmachine/richmedia/RichMediaView;->resume(Lio/bidmachine/richmedia/RichMediaAd;)V

    .line 41
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaView;->getCurrentAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {p0, v0}, Lio/bidmachine/richmedia/RichMediaView;->resume(Lio/bidmachine/richmedia/RichMediaAd;)V

    return-void
.end method

.method public unmute()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaView;->getPendingAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {p0, v0}, Lio/bidmachine/richmedia/RichMediaView;->unmute(Lio/bidmachine/richmedia/RichMediaAd;)V

    .line 77
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaView;->getCurrentAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/richmedia/RichMediaAd;

    invoke-direct {p0, v0}, Lio/bidmachine/richmedia/RichMediaView;->unmute(Lio/bidmachine/richmedia/RichMediaAd;)V

    return-void
.end method
