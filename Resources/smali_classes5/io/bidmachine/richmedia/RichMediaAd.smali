.class Lio/bidmachine/richmedia/RichMediaAd;
.super Lio/bidmachine/ViewAd;
.source "RichMediaAd.java"

# interfaces
.implements Lio/bidmachine/richmedia/RichMediaInteractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ViewAd<",
        "Lio/bidmachine/richmedia/RichMediaAd;",
        "Lio/bidmachine/richmedia/RichMediaRequest;",
        "Lio/bidmachine/ViewAdObject<",
        "Lio/bidmachine/richmedia/RichMediaRequest;",
        "Lio/bidmachine/unified/UnifiedRichMediaAd;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        "Lio/bidmachine/AdListener<",
        "Lio/bidmachine/richmedia/RichMediaAd;",
        ">;>;",
        "Lio/bidmachine/richmedia/RichMediaInteractor;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    sget-object v0, Lio/bidmachine/AdsType;->RichMedia:Lio/bidmachine/AdsType;

    invoke-direct {p0, p1, v0}, Lio/bidmachine/ViewAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method protected createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/richmedia/RichMediaRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/ViewAdObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/richmedia/RichMediaRequest;",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/models/AdObjectParams;",
            "Lio/bidmachine/AdProcessCallback;",
            ")",
            "Lio/bidmachine/ViewAdObject<",
            "Lio/bidmachine/richmedia/RichMediaRequest;",
            "Lio/bidmachine/unified/UnifiedRichMediaAd;",
            "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdapter;->createRichMedia()Lio/bidmachine/unified/UnifiedRichMediaAd;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    new-instance p3, Lio/bidmachine/ViewAdObject;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ViewAdObject;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedViewAd;)V

    .line 47
    sget-object p1, Lio/bidmachine/ViewAdObject$MeasureMode;->Match:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {p3, p1}, Lio/bidmachine/ViewAdObject;->setWidthMeasureMode(Lio/bidmachine/ViewAdObject$MeasureMode;)V

    .line 48
    sget-object p1, Lio/bidmachine/ViewAdObject$MeasureMode;->Match:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {p3, p1}, Lio/bidmachine/ViewAdObject;->setHeightMeasureMode(Lio/bidmachine/ViewAdObject$MeasureMode;)V

    return-object p3
.end method

.method protected bridge synthetic createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;
    .locals 0

    .line 19
    check-cast p2, Lio/bidmachine/richmedia/RichMediaRequest;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/richmedia/RichMediaAd;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/richmedia/RichMediaRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/ViewAdObject;

    move-result-object p1

    return-object p1
.end method

.method public mute()V
    .locals 1

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ViewAdObject;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedRichMediaAd;

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedRichMediaAd;->onMute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ViewAdObject;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedRichMediaAd;

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedRichMediaAd;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ViewAdObject;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedRichMediaAd;

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedRichMediaAd;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public unmute()V
    .locals 1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/richmedia/RichMediaAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ViewAdObject;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedRichMediaAd;

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedRichMediaAd;->onUnMute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
