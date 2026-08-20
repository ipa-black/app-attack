.class public final Lcom/appodeal/ads/api/Geo;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Geo.java"

# interfaces
.implements Lcom/appodeal/ads/api/GeoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Geo$Builder;,
        Lcom/appodeal/ads/api/Geo$LocationType;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Geo;

.field public static final LAT_FIELD_NUMBER:I = 0x4

.field public static final LOCAL_TIME_FIELD_NUMBER:I = 0x2

.field public static final LON_FIELD_NUMBER:I = 0x5

.field public static final LT_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Geo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTCOFFSET_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private lat_:F

.field private localTime_:J

.field private lon_:F

.field private lt_:I

.field private memoizedIsInitialized:B

.field private utcoffset_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 969
    new-instance v0, Lcom/appodeal/ads/api/Geo;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Geo;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Geo;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Geo;

    .line 977
    new-instance v0, Lcom/appodeal/ads/api/Geo$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Geo$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 327
    iput-byte v0, p0, Lcom/appodeal/ads/api/Geo;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/appodeal/ads/api/Geo;-><init>()V

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4

    const/16 v4, 0x18

    if-eq v2, v4, :cond_3

    const/16 v4, 0x25

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_1

    .line 83
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Geo;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Geo;->lon_:F

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Geo;->lat_:F

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 69
    iput v2, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Geo;->localTime_:J

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Geo;->utcoffset_:I
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

    .line 94
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 95
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 92
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 98
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->makeExtensionsImmutable()V

    .line 99
    throw p1

    .line 97
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 98
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Geo$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Geo;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 327
    iput-byte p1, p0, Lcom/appodeal/ads/api/Geo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Geo$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Geo;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Geo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Geo;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Geo;->utcoffset_:I

    return p1
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Geo;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Geo;->localTime_:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/appodeal/ads/api/Geo;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    return p0
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Geo;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    return p1
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/Geo;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Geo;->lat_:F

    return p1
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/Geo;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Geo;->lon_:F

    return p1
.end method

.method static synthetic access$900(Lcom/appodeal/ads/api/Geo;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Geo;
    .locals 1

    .line 973
    sget-object v0, Lcom/appodeal/ads/api/Geo;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Geo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 103
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Geo_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    .line 513
    sget-object v0, Lcom/appodeal/ads/api/Geo;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Geo;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Geo;->toBuilder()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    .line 516
    sget-object v0, Lcom/appodeal/ads/api/Geo;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Geo;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Geo;->toBuilder()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 487
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 494
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 500
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 507
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 475
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 482
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 464
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 470
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Geo;",
            ">;"
        }
    .end annotation

    .line 988
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 395
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Geo;

    if-nez v1, :cond_1

    .line 396
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 398
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Geo;

    .line 400
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getUtcoffset()I

    move-result v1

    .line 401
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getUtcoffset()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getLocalTime()J

    move-result-wide v1

    .line 403
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLocalTime()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    return v3

    .line 404
    :cond_3
    iget v1, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    iget v2, p1, Lcom/appodeal/ads/api/Geo;->lt_:I

    if-eq v1, v2, :cond_4

    return v3

    .line 405
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getLat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 407
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLat()F

    move-result v2

    .line 406
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 408
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getLon()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 410
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLon()F

    move-result v2

    .line 409
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 411
    :cond_6
    iget-object v1, p0, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Geo;
    .locals 1

    .line 998
    sget-object v0, Lcom/appodeal/ads/api/Geo;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Geo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public getLat()F
    .locals 1

    .line 309
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->lat_:F

    return v0
.end method

.method public getLocalTime()J
    .locals 2

    .line 267
    iget-wide v0, p0, Lcom/appodeal/ads/api/Geo;->localTime_:J

    return-wide v0
.end method

.method public getLon()F
    .locals 1

    .line 324
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->lon_:F

    return v0
.end method

.method public getLt()Lcom/appodeal/ads/api/Geo$LocationType;
    .locals 1

    .line 293
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Geo$LocationType;->valueOf(I)Lcom/appodeal/ads/api/Geo$LocationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    sget-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Geo$LocationType;

    :cond_0
    return-object v0
.end method

.method public getLtValue()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Geo;",
            ">;"
        }
    .end annotation

    .line 993
    sget-object v0, Lcom/appodeal/ads/api/Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 361
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 365
    :cond_0
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->utcoffset_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 367
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 369
    :goto_0
    iget-wide v1, p0, Lcom/appodeal/ads/api/Geo;->localTime_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 371
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_2
    iget v1, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    sget-object v2, Lcom/appodeal/ads/api/Geo$LocationType;->LOCATIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Geo$LocationType;

    invoke-virtual {v2}, Lcom/appodeal/ads/api/Geo$LocationType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 374
    iget v2, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    .line 375
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_3
    iget v1, p0, Lcom/appodeal/ads/api/Geo;->lat_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 379
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_4
    iget v1, p0, Lcom/appodeal/ads/api/Geo;->lon_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 383
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_5
    iget-object v1, p0, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    iput v0, p0, Lcom/appodeal/ads/api/Geo;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUtcoffset()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->utcoffset_:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 417
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 418
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->memoizedHashCode:I

    return v0

    .line 421
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 423
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getUtcoffset()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 426
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getLocalTime()J

    move-result-wide v2

    .line 425
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 428
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 431
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getLat()F

    move-result v0

    .line 430
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 434
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->getLon()F

    move-result v0

    .line 433
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 435
    iget-object v0, p0, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 436
    iput v1, p0, Lcom/appodeal/ads/api/Geo;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 109
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Geo_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Geo;

    const-class v2, Lcom/appodeal/ads/api/Geo$Builder;

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 330
    iget-byte v0, p0, Lcom/appodeal/ads/api/Geo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 334
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Geo;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    .line 511
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->newBuilder()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 2

    .line 527
    new-instance v0, Lcom/appodeal/ads/api/Geo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Geo$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Geo$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->newBuilderForType()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->newBuilderForType()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 30
    new-instance p1, Lcom/appodeal/ads/api/Geo;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Geo;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 2

    .line 520
    sget-object v0, Lcom/appodeal/ads/api/Geo;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Geo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 521
    new-instance v0, Lcom/appodeal/ads/api/Geo$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Geo$Builder;-><init>(Lcom/appodeal/ads/api/Geo$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Geo$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Geo$Builder;-><init>(Lcom/appodeal/ads/api/Geo$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->toBuilder()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo;->toBuilder()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->utcoffset_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 342
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 344
    :cond_0
    iget-wide v0, p0, Lcom/appodeal/ads/api/Geo;->localTime_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 345
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 347
    :cond_1
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    sget-object v1, Lcom/appodeal/ads/api/Geo$LocationType;->LOCATIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Geo$LocationType;

    invoke-virtual {v1}, Lcom/appodeal/ads/api/Geo$LocationType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 348
    iget v1, p0, Lcom/appodeal/ads/api/Geo;->lt_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 350
    :cond_2
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->lat_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 351
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 353
    :cond_3
    iget v0, p0, Lcom/appodeal/ads/api/Geo;->lon_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 354
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/api/Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
