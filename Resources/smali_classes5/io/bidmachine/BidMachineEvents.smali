.class public Lio/bidmachine/BidMachineEvents;
.super Ljava/lang/Object;
.source "BidMachineEvents.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Lio/bidmachine/TrackingObject;)V
    .locals 1

    .line 52
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getSessionTracker()Lio/bidmachine/SessionTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p0}, Lio/bidmachine/SessionTracker;->clearTrackers(Lio/bidmachine/TrackingObject;)V

    :cond_0
    return-void
.end method

.method public static clearEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V
    .locals 1

    .line 45
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getSessionTracker()Lio/bidmachine/SessionTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/SessionTracker;->clearTrackingEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V

    :cond_0
    return-void
.end method

.method public static eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, p2, p3, v0}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V

    return-void
.end method

.method public static eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackingObject;",
            "Lio/bidmachine/TrackEventType;",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/utils/BMError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getSessionTracker()Lio/bidmachine/SessionTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 39
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/SessionTracker;->trackEventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;)V

    return-void
.end method

.method public static eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;)V
    .locals 1

    .line 19
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getSessionTracker()Lio/bidmachine/SessionTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/SessionTracker;->trackEventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;)V

    :cond_0
    return-void
.end method
