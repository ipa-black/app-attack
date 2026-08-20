.class Lio/bidmachine/measurer/VastOMSDKAdMeasurer$10;
.super Ljava/lang/Object;
.source "VastOMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->onVideoResumed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$10;->this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 286
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$10;->this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-static {v0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->access$100(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$10;->this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-static {v0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->access$100(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->resume()V

    .line 290
    :cond_0
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$10;->this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    const-string v1, "onVideoResumed"

    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 292
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
