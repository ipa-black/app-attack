.class public final Lcom/appodeal/ads/api/Event;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Event.java"

# interfaces
.implements Lcom/appodeal/ads/api/EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Event$Builder;,
        Lcom/appodeal/ads/api/Event$EventType;
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x5

.field public static final CURRENCY_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Event;

.field public static final EVENTTYPE_FIELD_NUMBER:I = 0x1

.field public static final ID_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEMENT_ID_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private amount_:F

.field private volatile currency_:Ljava/lang/Object;

.field private eventType_:I

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private placementId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1147
    new-instance v0, Lcom/appodeal/ads/api/Event;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Event;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Event;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Event;

    .line 1155
    new-instance v0, Lcom/appodeal/ads/api/Event$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Event$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 402
    iput-byte v0, p0, Lcom/appodeal/ads/api/Event;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/appodeal/ads/api/Event;-><init>()V

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/16 v4, 0x12

    if-eq v2, v4, :cond_4

    const/16 v4, 0x18

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_1

    .line 87
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Event;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Event;->amount_:F

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 78
    iput-object v2, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Event;->placementId_:I

    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 67
    iput-object v2, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 61
    iput v2, p0, Lcom/appodeal/ads/api/Event;->eventType_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 98
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 99
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 96
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 102
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->makeExtensionsImmutable()V

    .line 103
    throw p1

    .line 101
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 102
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Event$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Event;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 402
    iput-byte p1, p0, Lcom/appodeal/ads/api/Event;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Event$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Event;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Event;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Event;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Event;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/appodeal/ads/api/Event;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    return p0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Event;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    return p1
.end method

.method static synthetic access$500(Lcom/appodeal/ads/api/Event;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Event;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Event;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Event;->placementId_:I

    return p1
.end method

.method static synthetic access$700(Lcom/appodeal/ads/api/Event;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/Event;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/Event;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Event;->amount_:F

    return p1
.end method

.method static synthetic access$900(Lcom/appodeal/ads/api/Event;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Event;
    .locals 1

    .line 1151
    sget-object v0, Lcom/appodeal/ads/api/Event;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Event;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 107
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    .line 583
    sget-object v0, Lcom/appodeal/ads/api/Event;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Event;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Event;->toBuilder()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    .line 586
    sget-object v0, Lcom/appodeal/ads/api/Event;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Event;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Event;->toBuilder()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 557
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 564
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 570
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 577
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 545
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 552
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 519
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 534
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 540
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Event;",
            ">;"
        }
    .end annotation

    .line 1166
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 468
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Event;

    if-nez v1, :cond_1

    .line 469
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 471
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Event;

    .line 473
    iget v1, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    iget v2, p1, Lcom/appodeal/ads/api/Event;->eventType_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getId()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 476
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getPlacementId()I

    move-result v1

    .line 477
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getPlacementId()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 478
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getCurrency()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 480
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getAmount()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 482
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Event;->getAmount()F

    move-result v2

    .line 481
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 483
    :cond_6
    iget-object v1, p0, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method public getAmount()F
    .locals 1

    .line 399
    iget v0, p0, Lcom/appodeal/ads/api/Event;->amount_:F

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    .line 354
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 355
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 357
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 359
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 360
    iput-object v0, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrencyBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    .line 376
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 377
    check-cast v0, Ljava/lang/String;

    .line 378
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 380
    iput-object v0, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    return-object v0

    .line 383
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Event;
    .locals 1

    .line 1176
    sget-object v0, Lcom/appodeal/ads/api/Event;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Event;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Lcom/appodeal/ads/api/Event$EventType;
    .locals 1

    .line 276
    iget v0, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Event$EventType;->valueOf(I)Lcom/appodeal/ads/api/Event$EventType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lcom/appodeal/ads/api/Event$EventType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Event$EventType;

    :cond_0
    return-object v0
.end method

.method public getEventTypeValue()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    .line 293
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 294
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 296
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 298
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 299
    iput-object v0, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    .line 315
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 316
    check-cast v0, Ljava/lang/String;

    .line 317
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 319
    iput-object v0, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    return-object v0

    .line 322
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Event;",
            ">;"
        }
    .end annotation

    .line 1171
    sget-object v0, Lcom/appodeal/ads/api/Event;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPlacementId()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/appodeal/ads/api/Event;->placementId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 436
    iget v0, p0, Lcom/appodeal/ads/api/Event;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 440
    :cond_0
    iget v0, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    sget-object v1, Lcom/appodeal/ads/api/Event$EventType;->INSTALL:Lcom/appodeal/ads/api/Event$EventType;

    invoke-virtual {v1}, Lcom/appodeal/ads/api/Event$EventType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 441
    iget v1, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    .line 442
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 444
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 445
    iget-object v2, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    :cond_2
    iget v1, p0, Lcom/appodeal/ads/api/Event;->placementId_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 449
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getCurrencyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 452
    iget-object v2, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :cond_4
    iget v1, p0, Lcom/appodeal/ads/api/Event;->amount_:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 456
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    :cond_5
    iget-object v1, p0, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    iput v0, p0, Lcom/appodeal/ads/api/Event;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 489
    iget v0, p0, Lcom/appodeal/ads/api/Event;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 490
    iget v0, p0, Lcom/appodeal/ads/api/Event;->memoizedHashCode:I

    return v0

    .line 493
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Event;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 495
    iget v0, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 499
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getPlacementId()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 501
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 504
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getAmount()F

    move-result v0

    .line 503
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 505
    iget-object v0, p0, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 506
    iput v1, p0, Lcom/appodeal/ads/api/Event;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 113
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Event_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Event;

    const-class v2, Lcom/appodeal/ads/api/Event$Builder;

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 405
    iget-byte v0, p0, Lcom/appodeal/ads/api/Event;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 409
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Event;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Event$Builder;
    .locals 1

    .line 581
    invoke-static {}, Lcom/appodeal/ads/api/Event;->newBuilder()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Event$Builder;
    .locals 2

    .line 597
    new-instance v0, Lcom/appodeal/ads/api/Event$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Event$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Event$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->newBuilderForType()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Event;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->newBuilderForType()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 32
    new-instance p1, Lcom/appodeal/ads/api/Event;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Event;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Event$Builder;
    .locals 2

    .line 590
    sget-object v0, Lcom/appodeal/ads/api/Event;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Event;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 591
    new-instance v0, Lcom/appodeal/ads/api/Event$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Event$Builder;-><init>(Lcom/appodeal/ads/api/Event$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Event$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Event$Builder;-><init>(Lcom/appodeal/ads/api/Event$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->toBuilder()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->toBuilder()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget v0, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    sget-object v1, Lcom/appodeal/ads/api/Event$EventType;->INSTALL:Lcom/appodeal/ads/api/Event$EventType;

    invoke-virtual {v1}, Lcom/appodeal/ads/api/Event$EventType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 417
    iget v1, p0, Lcom/appodeal/ads/api/Event;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 420
    iget-object v1, p0, Lcom/appodeal/ads/api/Event;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 422
    :cond_1
    iget v0, p0, Lcom/appodeal/ads/api/Event;->placementId_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 423
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event;->getCurrencyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 426
    iget-object v1, p0, Lcom/appodeal/ads/api/Event;->currency_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 428
    :cond_3
    iget v0, p0, Lcom/appodeal/ads/api/Event;->amount_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 429
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/api/Event;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
