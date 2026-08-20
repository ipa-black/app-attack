.class Lio/bidmachine/SessionTrackerImpl;
.super Lio/bidmachine/SessionTracker;
.source "SessionTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/SessionTrackerImpl$EventsHolder;
    }
.end annotation


# instance fields
.field final intervalHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/TrackEventType;",
            "Lio/bidmachine/TrackEventInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final totalHolder:Lio/bidmachine/SessionTrackerImpl$EventsHolder;

.field final trackingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/SessionTrackerImpl$EventsHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lio/bidmachine/SessionTracker;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->trackingMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->intervalHolders:Ljava/util/Map;

    .line 21
    new-instance v0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/SessionTrackerImpl$EventsHolder;-><init>(Lio/bidmachine/SessionTrackerImpl$EventsHolder;)V

    iput-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->totalHolder:Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    return-void
.end method

.method private obtainHolder(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionTrackerImpl$EventsHolder;
    .locals 2

    .line 111
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->trackingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    iget-object v1, p0, Lio/bidmachine/SessionTrackerImpl;->totalHolder:Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    invoke-direct {v0, v1}, Lio/bidmachine/SessionTrackerImpl$EventsHolder;-><init>(Lio/bidmachine/SessionTrackerImpl$EventsHolder;)V

    .line 113
    iget-object v1, p0, Lio/bidmachine/SessionTrackerImpl;->trackingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->trackingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    :goto_0
    return-object v0
.end method


# virtual methods
.method clearTrackers(Lio/bidmachine/TrackingObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->intervalHolders:Ljava/util/Map;

    invoke-virtual {p1}, Lio/bidmachine/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method clearTrackingEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->intervalHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EnumMap;

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public getEventCount(Lio/bidmachine/AdsType;Lio/bidmachine/TrackEventType;)I
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lio/bidmachine/SessionTrackerImpl;->obtainHolder(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->getCount(Lio/bidmachine/TrackEventType;)I

    move-result p1

    return p1
.end method

.method public getTotalEventCount(Lio/bidmachine/TrackEventType;)I
    .locals 1

    .line 106
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->totalHolder:Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    invoke-virtual {v0, p1}, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->getCount(Lio/bidmachine/TrackEventType;)I

    move-result p1

    return p1
.end method

.method public trackEventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V
    .locals 4
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

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lio/bidmachine/SessionTrackerImpl;->intervalHolders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/TrackEventInfo;

    if-eqz v1, :cond_2

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lio/bidmachine/TrackEventInfo;->finishTimeMs:J

    .line 65
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v0}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionTrackerImpl;->clearTrackers(Lio/bidmachine/TrackingObject;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 70
    :cond_4
    :goto_0
    invoke-static {p1, p2, v1, p4, p5}, Lio/bidmachine/SessionTrackerImpl;->notifyTrack(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/utils/BMError;Ljava/util/Map;)V

    if-eqz p3, :cond_5

    if-nez p4, :cond_5

    .line 72
    invoke-direct {p0, p3}, Lio/bidmachine/SessionTrackerImpl;->obtainHolder(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->track(Lio/bidmachine/TrackEventType;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public trackEventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl;->intervalHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-nez v0, :cond_2

    .line 36
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 37
    iget-object v1, p0, Lio/bidmachine/SessionTrackerImpl;->intervalHolders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p3, :cond_3

    goto :goto_0

    .line 41
    :cond_3
    new-instance p3, Lio/bidmachine/TrackEventInfo;

    invoke-direct {p3}, Lio/bidmachine/TrackEventInfo;-><init>()V

    .line 40
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method
