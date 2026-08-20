.class public final enum Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
.super Ljava/lang/Enum;
.source "ResponsePayload.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;
.implements Lcom/explorestack/protobuf/AbstractMessageLite$InternalOneOfEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;",
        "Lcom/explorestack/protobuf/AbstractMessageLite$InternalOneOfEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

.field public static final enum PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

.field public static final enum RESPONSE_CACHE:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

.field public static final enum RESPONSE_CACHE_URL:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 134
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    const-string v1, "RESPONSE_CACHE_URL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE_URL:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 135
    new-instance v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "RESPONSE_CACHE"

    invoke-direct {v1, v6, v4, v5}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 136
    new-instance v4, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    const-string v5, "PAYLOADONEOF_NOT_SET"

    invoke-direct {v4, v5, v3, v2}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 131
    filled-new-array {v0, v1, v4}, [Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->$VALUES:[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput p3, p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_0
    sget-object p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object p0

    .line 153
    :cond_1
    sget-object p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->RESPONSE_CACHE_URL:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object p0

    .line 155
    :cond_2
    sget-object p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {p0}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .locals 1

    .line 131
    const-class v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .locals 1

    .line 131
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->$VALUES:[Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 160
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->value:I

    return v0
.end method
