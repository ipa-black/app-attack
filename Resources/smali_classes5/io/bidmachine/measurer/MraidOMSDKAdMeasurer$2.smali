.class Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$2;
.super Ljava/lang/Object;
.source "MraidOMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->destroy(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$postBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$2;->this$0:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    iput-object p2, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$2;->val$postBack:Ljava/lang/Runnable;

    iput-object p3, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 83
    iget-object v0, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$2;->this$0:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    invoke-virtual {v0}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->destroy()V

    .line 84
    iget-object v0, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$2;->val$postBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$2;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
