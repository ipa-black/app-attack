.class Lio/bidmachine/measurer/VastOMSDKAdMeasurer$13;
.super Ljava/lang/Object;
.source "VastOMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->destroy()V
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

    .line 336
    iput-object p1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$13;->this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 339
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$13;->this$0:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->access$102(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    return-void
.end method
