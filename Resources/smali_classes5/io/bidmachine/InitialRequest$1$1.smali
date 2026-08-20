.class Lio/bidmachine/InitialRequest$1$1;
.super Ljava/lang/Object;
.source "InitialRequest.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/InitialRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$Callback<",
        "Lio/bidmachine/protobuf/InitResponse;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/InitialRequest$1;


# direct methods
.method constructor <init>(Lio/bidmachine/InitialRequest$1;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .locals 5

    .line 99
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/InitialRequest;->access$002(Lio/bidmachine/InitialRequest;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    .line 103
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$500(Lio/bidmachine/InitialRequest;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$600(Lio/bidmachine/InitialRequest;)J

    move-result-wide v2

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "reschedule init request (%s)"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$300(Lio/bidmachine/InitialRequest;)Lio/bidmachine/InitialRequest$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$300(Lio/bidmachine/InitialRequest;)Lio/bidmachine/InitialRequest$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/InitialRequest$Listener;->onFail(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$200(Lio/bidmachine/InitialRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V

    .line 111
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$400(Lio/bidmachine/InitialRequest;)Lio/bidmachine/TrackingObject;

    move-result-object v0

    sget-object v2, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v2, v1, p1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/InitialRequest$1$1;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lio/bidmachine/protobuf/InitResponse;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/InitialRequest;->access$002(Lio/bidmachine/InitialRequest;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    .line 86
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lio/bidmachine/InitialRequest;->access$102(Lio/bidmachine/InitialRequest;J)J

    .line 87
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$200(Lio/bidmachine/InitialRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$300(Lio/bidmachine/InitialRequest;)Lio/bidmachine/InitialRequest$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object v0, v0, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {v0}, Lio/bidmachine/InitialRequest;->access$300(Lio/bidmachine/InitialRequest;)Lio/bidmachine/InitialRequest$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/InitialRequest$Listener;->onSuccess(Ljava/lang/Object;)V

    .line 91
    :cond_0
    iget-object p1, p0, Lio/bidmachine/InitialRequest$1$1;->this$1:Lio/bidmachine/InitialRequest$1;

    iget-object p1, p1, Lio/bidmachine/InitialRequest$1;->this$0:Lio/bidmachine/InitialRequest;

    invoke-static {p1}, Lio/bidmachine/InitialRequest;->access$400(Lio/bidmachine/InitialRequest;)Lio/bidmachine/TrackingObject;

    move-result-object p1

    sget-object v0, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    invoke-static {p1, v0, v1, v1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/InitialRequest$1$1;->onSuccess(Lio/bidmachine/protobuf/InitResponse;)V

    return-void
.end method
