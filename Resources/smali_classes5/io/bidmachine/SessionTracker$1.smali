.class Lio/bidmachine/SessionTracker$1;
.super Ljava/lang/Object;
.source "SessionTracker.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/SessionTracker;->notifyTrack(Ljava/util/List;Ljava/util/List;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/TrackEventType;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$Callback<",
        "Ljava/lang/String;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$eventInfo:Lio/bidmachine/TrackEventInfo;

.field final synthetic val$eventType:Lio/bidmachine/TrackEventType;

.field final synthetic val$trackErrorUrls:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/TrackEventType;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lio/bidmachine/SessionTracker$1;->val$trackErrorUrls:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/SessionTracker$1;->val$eventInfo:Lio/bidmachine/TrackEventInfo;

    iput-object p3, p0, Lio/bidmachine/SessionTracker$1;->val$eventType:Lio/bidmachine/TrackEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .locals 3

    if-nez p1, :cond_0

    .line 101
    const-string p1, "Failed to track URL"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 103
    :cond_0
    iget-object v0, p0, Lio/bidmachine/SessionTracker$1;->val$trackErrorUrls:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/SessionTracker$1;->val$eventInfo:Lio/bidmachine/TrackEventInfo;

    iget-object v2, p0, Lio/bidmachine/SessionTracker$1;->val$eventType:Lio/bidmachine/TrackEventType;

    .line 105
    invoke-virtual {v2}, Lio/bidmachine/TrackEventType;->getOrtbActionValue()I

    move-result v2

    .line 103
    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/SessionTracker;->access$000(Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/SessionTracker$1;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/SessionTracker$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
