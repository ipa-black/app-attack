.class Lio/bidmachine/protobuf/analytics/PlacementTag$1;
.super Ljava/lang/Object;
.source "PlacementTag.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/PlacementTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/analytics/PlacementTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/PlacementTag$1;->findValueByNumber(I)Lio/bidmachine/protobuf/analytics/PlacementTag;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/analytics/PlacementTag;
    .locals 0

    .line 106
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/PlacementTag;->forNumber(I)Lio/bidmachine/protobuf/analytics/PlacementTag;

    move-result-object p1

    return-object p1
.end method
