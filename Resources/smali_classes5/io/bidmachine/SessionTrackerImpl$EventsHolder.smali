.class Lio/bidmachine/SessionTrackerImpl$EventsHolder;
.super Ljava/lang/Object;
.source "SessionTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/SessionTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventsHolder"
.end annotation


# instance fields
.field private final referenceHolder:Lio/bidmachine/SessionTrackerImpl$EventsHolder;

.field private final trackingMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/SessionTrackerImpl$EventsHolder;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->referenceHolder:Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    .line 130
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lio/bidmachine/TrackEventType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->trackingMap:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public getCount(Lio/bidmachine/TrackEventType;)I
    .locals 1

    .line 146
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->trackingMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public track(Lio/bidmachine/TrackEventType;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->referenceHolder:Lio/bidmachine/SessionTrackerImpl$EventsHolder;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->track(Lio/bidmachine/TrackEventType;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->trackingMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lio/bidmachine/SessionTrackerImpl$EventsHolder;->trackingMap:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_0
    return-void
.end method
