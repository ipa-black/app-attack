.class synthetic Lio/bidmachine/protobuf/ResponsePayload$2;
.super Ljava/lang/Object;
.source "ResponsePayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 702
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->values()[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    :try_start_0
    sget-object v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE_URL:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    sget-object v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
