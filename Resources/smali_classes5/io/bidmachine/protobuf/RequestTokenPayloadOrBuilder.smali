.class public interface abstract Lio/bidmachine/protobuf/RequestTokenPayloadOrBuilder;
.super Ljava/lang/Object;
.source "RequestTokenPayloadOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsCustomData(Ljava/lang/String;)Z
.end method

.method public abstract getAppData()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
.end method

.method public abstract getAppDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppDataOrBuilder;
.end method

.method public abstract getCustomData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomDataCount()I
.end method

.method public abstract getCustomDataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceData()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
.end method

.method public abstract getDeviceDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceDataOrBuilder;
.end method

.method public abstract getPlacementData()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
.end method

.method public abstract getPlacementDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementDataOrBuilder;
.end method

.method public abstract getSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;
.end method

.method public abstract getSessionDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;
.end method

.method public abstract getUserData()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
.end method

.method public abstract getUserDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserDataOrBuilder;
.end method

.method public abstract hasAppData()Z
.end method

.method public abstract hasDeviceData()Z
.end method

.method public abstract hasPlacementData()Z
.end method

.method public abstract hasSessionData()Z
.end method

.method public abstract hasUserData()Z
.end method
