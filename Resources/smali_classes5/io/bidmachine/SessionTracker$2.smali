.class Lio/bidmachine/SessionTracker$2;
.super Ljava/lang/Object;
.source "SessionTracker.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/SessionTracker;->notifyError(Ljava/util/List;Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
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
.field final synthetic val$info:Lio/bidmachine/TrackEventInfo;

.field final synthetic val$trackErrorUrls:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lio/bidmachine/TrackEventInfo;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lio/bidmachine/SessionTracker$2;->val$trackErrorUrls:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/SessionTracker$2;->val$info:Lio/bidmachine/TrackEventInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .locals 3

    if-nez p1, :cond_0

    .line 139
    const-string p1, "Failed to track URL"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 141
    :cond_0
    iget-object v0, p0, Lio/bidmachine/SessionTracker$2;->val$trackErrorUrls:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/SessionTracker$2;->val$info:Lio/bidmachine/TrackEventInfo;

    sget-object v2, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    .line 143
    invoke-virtual {v2}, Lio/bidmachine/TrackEventType;->getOrtbActionValue()I

    move-result v2

    .line 141
    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/SessionTracker;->access$000(Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/SessionTracker$2;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/SessionTracker$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
