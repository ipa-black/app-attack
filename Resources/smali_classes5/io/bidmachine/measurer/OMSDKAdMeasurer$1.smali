.class Lio/bidmachine/measurer/OMSDKAdMeasurer$1;
.super Ljava/lang/Object;
.source "OMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/OMSDKAdMeasurer;->registerAdContainer(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/measurer/OMSDKAdMeasurer;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;Landroid/view/ViewGroup;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    iput-object p2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 33
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->access$000(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->access$000(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->access$100(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->access$202(Lio/bidmachine/measurer/OMSDKAdMeasurer;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 39
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
