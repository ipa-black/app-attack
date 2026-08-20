.class Lio/bidmachine/AdRequest$2;
.super Lio/bidmachine/SimpleTrackingObject;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;Ljava/lang/Object;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lio/bidmachine/AdRequest$2;->this$0:Lio/bidmachine/AdRequest;

    invoke-direct {p0, p2}, Lio/bidmachine/SimpleTrackingObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/bidmachine/AdRequest$2;->this$0:Lio/bidmachine/AdRequest;

    iget-object v0, v0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lio/bidmachine/AdRequest$2;->this$0:Lio/bidmachine/AdRequest;

    iget-object v0, v0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/AdResponse;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdResponse;->getTrackUrlListByEvent(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lio/bidmachine/SimpleTrackingObject;->getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
