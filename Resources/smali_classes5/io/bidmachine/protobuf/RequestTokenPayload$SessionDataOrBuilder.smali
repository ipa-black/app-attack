.class public interface abstract Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;
.super Ljava/lang/Object;
.source "RequestTokenPayload.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionDataOrBuilder"
.end annotation


# virtual methods
.method public abstract containsSessionPlacementData(Ljava/lang/String;)Z
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getSessionPlacementData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSessionPlacementDataCount()I
.end method

.method public abstract getSessionPlacementDataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionPlacementDataOrDefault(Ljava/lang/String;Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
.end method

.method public abstract getSessionPlacementDataOrThrow(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
.end method

.method public abstract getSessionduration()J
.end method
