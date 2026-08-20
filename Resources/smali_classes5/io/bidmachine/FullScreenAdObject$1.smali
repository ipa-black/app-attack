.class Lio/bidmachine/FullScreenAdObject$1;
.super Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;
.source "FullScreenAdObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/FullScreenAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/FullScreenAdObject;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject$1;->this$0:Lio/bidmachine/FullScreenAdObject;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdObject$ImpressionThresholdTask;-><init>(Lio/bidmachine/FullScreenAdObject$1;)V

    return-void
.end method


# virtual methods
.method onTracked()V
    .locals 1

    .line 22
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject$1;->this$0:Lio/bidmachine/FullScreenAdObject;

    invoke-virtual {v0}, Lio/bidmachine/FullScreenAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processVisibilityTrackerImpression()V

    return-void
.end method
