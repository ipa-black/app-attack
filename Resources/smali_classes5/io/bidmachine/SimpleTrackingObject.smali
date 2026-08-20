.class public Lio/bidmachine/SimpleTrackingObject;
.super Lio/bidmachine/TrackingObject;
.source "SimpleTrackingObject.java"


# instance fields
.field private final trackingKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/SimpleTrackingObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/bidmachine/TrackingObject;-><init>()V

    .line 17
    iput-object p1, p0, Lio/bidmachine/SimpleTrackingObject;->trackingKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTrackingKey()Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/bidmachine/SimpleTrackingObject;->trackingKey:Ljava/lang/Object;

    return-object v0
.end method
