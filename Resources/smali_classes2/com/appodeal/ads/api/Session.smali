.class public final Lcom/appodeal/ads/api/Session;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Session.java"

# interfaces
.implements Lcom/appodeal/ads/api/SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Session$Builder;
    }
.end annotation


# static fields
.field public static final ACTIVE_SESSION_ID_FIELD_NUMBER:I = 0xb

.field public static final ACTIVE_SESSION_UPTIME_FIELD_NUMBER:I = 0xa

.field public static final AD_STATS_FIELD_NUMBER:I = 0x8

.field public static final APP_SESSION_AVERAGE_LENGTH_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Session;

.field public static final EXT_FIELD_NUMBER:I = 0x2

.field public static final MONOTONIC_APP_SESSION_AVERAGE_LENGTH_FIELD_NUMBER:I = 0xd

.field public static final MONOTONIC_SESSION_UPTIME_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Session;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_ID_FIELD_NUMBER:I = 0x7

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x4

.field public static final SESSION_UPTIME_FIELD_NUMBER:I = 0x6

.field public static final SESSION_UUID_FIELD_NUMBER:I = 0x5

.field public static final TEST_FIELD_NUMBER:I = 0x1

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private activeSessionId_:I

.field private activeSessionUptime_:J

.field private adStats_:Lcom/appodeal/ads/api/AdStats;

.field private appSessionAverageLength_:J

.field private volatile ext_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private monotonicAppSessionAverageLength_:J

.field private monotonicSessionUptime_:J

.field private segmentId_:I

.field private sessionId_:J

.field private sessionUptime_:J

.field private volatile sessionUuid_:Ljava/lang/Object;

.field private test_:Z

.field private volatile token_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1855
    new-instance v0, Lcom/appodeal/ads/api/Session;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Session;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Session;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Session;

    .line 1863
    new-instance v0, Lcom/appodeal/ads/api/Session$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Session$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 477
    iput-byte v0, p0, Lcom/appodeal/ads/api/Session;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/appodeal/ads/api/Session;-><init>()V

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 135
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Session;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_3

    .line 131
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Session;->monotonicAppSessionAverageLength_:J

    goto :goto_0

    .line 126
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Session;->appSessionAverageLength_:J

    goto :goto_0

    .line 121
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Session;->activeSessionId_:I

    goto :goto_0

    .line 116
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Session;->activeSessionUptime_:J

    goto :goto_0

    .line 111
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Session;->monotonicSessionUptime_:J

    goto :goto_0

    .line 98
    :sswitch_5
    iget-object v2, p0, Lcom/appodeal/ads/api/Session;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v2}, Lcom/appodeal/ads/api/AdStats;->toBuilder()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 101
    :goto_1
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/api/AdStats;

    iput-object v3, p0, Lcom/appodeal/ads/api/Session;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v2, v3}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 104
    invoke-virtual {v2}, Lcom/appodeal/ads/api/AdStats$Builder;->buildPartial()Lcom/appodeal/ads/api/AdStats;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Session;->adStats_:Lcom/appodeal/ads/api/AdStats;

    goto :goto_0

    .line 93
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Session;->segmentId_:I

    goto :goto_0

    .line 88
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Session;->sessionUptime_:J

    goto :goto_0

    .line 81
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 83
    iput-object v2, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    goto :goto_0

    .line 77
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Session;->sessionId_:J

    goto :goto_0

    .line 70
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 72
    iput-object v2, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 66
    iput-object v2, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    goto :goto_0

    .line 60
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appodeal/ads/api/Session;->test_:Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_d
    move v1, v3

    goto/16 :goto_0

    :goto_3
    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 146
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 147
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 144
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 150
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->makeExtensionsImmutable()V

    .line 151
    throw p1

    .line 149
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 150
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x20 -> :sswitch_9
        0x2a -> :sswitch_8
        0x30 -> :sswitch_7
        0x38 -> :sswitch_6
        0x42 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Session$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Session;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 477
    iput-byte p1, p0, Lcom/appodeal/ads/api/Session;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Session$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Session;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/appodeal/ads/api/Session;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Session;->segmentId_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/appodeal/ads/api/Session;Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Session;->adStats_:Lcom/appodeal/ads/api/AdStats;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/appodeal/ads/api/Session;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session;->monotonicSessionUptime_:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/appodeal/ads/api/Session;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session;->activeSessionUptime_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/appodeal/ads/api/Session;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Session;->activeSessionId_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/appodeal/ads/api/Session;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session;->appSessionAverageLength_:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/appodeal/ads/api/Session;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session;->monotonicAppSessionAverageLength_:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/appodeal/ads/api/Session;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Session;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Session;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Session;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Session;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Session;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Session;->test_:Z

    return p1
.end method

.method static synthetic access$500(Lcom/appodeal/ads/api/Session;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Session;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/appodeal/ads/api/Session;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Session;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/Session;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session;->sessionId_:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/appodeal/ads/api/Session;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/Session;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/appodeal/ads/api/Session;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Session;->sessionUptime_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Session;
    .locals 1

    .line 1859
    sget-object v0, Lcom/appodeal/ads/api/Session;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Session;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 155
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 756
    sget-object v0, Lcom/appodeal/ads/api/Session;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Session;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Session;->toBuilder()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 759
    sget-object v0, Lcom/appodeal/ads/api/Session;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Session;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Session;->toBuilder()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 730
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 737
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 703
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 743
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 750
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 718
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 725
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 686
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 692
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 707
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 713
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Session;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Session;",
            ">;"
        }
    .end annotation

    .line 1874
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 598
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Session;

    if-nez v1, :cond_1

    .line 599
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 601
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Session;

    .line 603
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getTest()Z

    move-result v1

    .line 604
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getTest()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 605
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getExt()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 607
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 609
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSessionId()J

    move-result-wide v1

    .line 610
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSessionId()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    return v3

    .line 611
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSessionUuid()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSessionUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 613
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSessionUptime()J

    move-result-wide v1

    .line 614
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSessionUptime()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    return v3

    .line 615
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSegmentId()I

    move-result v1

    .line 616
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getSegmentId()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 617
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->hasAdStats()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->hasAdStats()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 618
    :cond_9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->hasAdStats()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 619
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getAdStats()Lcom/appodeal/ads/api/AdStats;

    move-result-object v1

    .line 620
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getAdStats()Lcom/appodeal/ads/api/AdStats;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/AdStats;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 622
    :cond_a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getMonotonicSessionUptime()J

    move-result-wide v1

    .line 623
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getMonotonicSessionUptime()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_b

    return v3

    .line 624
    :cond_b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getActiveSessionUptime()J

    move-result-wide v1

    .line 625
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getActiveSessionUptime()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_c

    return v3

    .line 626
    :cond_c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getActiveSessionId()I

    move-result v1

    .line 627
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getActiveSessionId()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 628
    :cond_d
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getAppSessionAverageLength()J

    move-result-wide v1

    .line 629
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getAppSessionAverageLength()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_e

    return v3

    .line 630
    :cond_e
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getMonotonicAppSessionAverageLength()J

    move-result-wide v1

    .line 631
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Session;->getMonotonicAppSessionAverageLength()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_f

    return v3

    .line 632
    :cond_f
    iget-object v1, p0, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v3

    :cond_10
    return v0
.end method

.method public getActiveSessionId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    iget v0, p0, Lcom/appodeal/ads/api/Session;->activeSessionId_:I

    return v0
.end method

.method public getActiveSessionUptime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->activeSessionUptime_:J

    return-wide v0
.end method

.method public getAdStats()Lcom/appodeal/ads/api/AdStats;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->getDefaultInstance()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAdStatsOrBuilder()Lcom/appodeal/ads/api/AdStatsOrBuilder;
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getAdStats()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public getAppSessionAverageLength()J
    .locals 2

    .line 459
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->appSessionAverageLength_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Session;
    .locals 1

    .line 1884
    sget-object v0, Lcom/appodeal/ads/api/Session;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Session;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    .line 194
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 197
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 199
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 200
    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    .line 216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 217
    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 220
    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    return-object v0

    .line 223
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMonotonicAppSessionAverageLength()J
    .locals 2

    .line 474
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->monotonicAppSessionAverageLength_:J

    return-wide v0
.end method

.method public getMonotonicSessionUptime()J
    .locals 2

    .line 414
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->monotonicSessionUptime_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Session;",
            ">;"
        }
    .end annotation

    .line 1879
    sget-object v0, Lcom/appodeal/ads/api/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSegmentId()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/appodeal/ads/api/Session;->segmentId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 535
    iget v0, p0, Lcom/appodeal/ads/api/Session;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 539
    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Session;->test_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 541
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 543
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getExtBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 544
    iget-object v2, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 546
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getTokenBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 547
    iget-object v2, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 549
    :cond_3
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session;->sessionId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 551
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSessionUuidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 554
    iget-object v2, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 556
    :cond_5
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session;->sessionUptime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x6

    .line 558
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 560
    :cond_6
    iget v1, p0, Lcom/appodeal/ads/api/Session;->segmentId_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 562
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    :cond_7
    iget-object v1, p0, Lcom/appodeal/ads/api/Session;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 566
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getAdStats()Lcom/appodeal/ads/api/AdStats;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 568
    :cond_8
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session;->monotonicSessionUptime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    const/16 v5, 0x9

    .line 570
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    :cond_9
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session;->activeSessionUptime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 574
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 576
    :cond_a
    iget v1, p0, Lcom/appodeal/ads/api/Session;->activeSessionId_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 578
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 580
    :cond_b
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session;->appSessionAverageLength_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    const/16 v5, 0xc

    .line 582
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 584
    :cond_c
    iget-wide v1, p0, Lcom/appodeal/ads/api/Session;->monotonicAppSessionAverageLength_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_d

    const/16 v3, 0xd

    .line 586
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 588
    :cond_d
    iget-object v1, p0, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    iput v0, p0, Lcom/appodeal/ads/api/Session;->memoizedSize:I

    return v0
.end method

.method public getSessionId()J
    .locals 2

    .line 285
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->sessionId_:J

    return-wide v0
.end method

.method public getSessionUptime()J
    .locals 2

    .line 346
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->sessionUptime_:J

    return-wide v0
.end method

.method public getSessionUuid()Ljava/lang/String;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    .line 301
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 304
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 306
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 307
    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionUuidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    .line 323
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 324
    check-cast v0, Ljava/lang/String;

    .line 325
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 327
    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    return-object v0

    .line 330
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTest()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Session;->test_:Z

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    .line 240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 243
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 245
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTokenBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    .line 262
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Ljava/lang/String;

    .line 264
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 266
    iput-object v0, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    return-object v0

    .line 269
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAdStats()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 638
    iget v0, p0, Lcom/appodeal/ads/api/Session;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 639
    iget v0, p0, Lcom/appodeal/ads/api/Session;->memoizedHashCode:I

    return v0

    .line 642
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Session;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 645
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getTest()Z

    move-result v0

    .line 644
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 647
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 649
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 652
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSessionId()J

    move-result-wide v2

    .line 651
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 654
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSessionUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 657
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSessionUptime()J

    move-result-wide v2

    .line 656
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 659
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSegmentId()I

    move-result v0

    add-int/2addr v1, v0

    .line 660
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->hasAdStats()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 662
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getAdStats()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/AdStats;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 666
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getMonotonicSessionUptime()J

    move-result-wide v2

    .line 665
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 669
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getActiveSessionUptime()J

    move-result-wide v2

    .line 668
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 671
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getActiveSessionId()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 674
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getAppSessionAverageLength()J

    move-result-wide v2

    .line 673
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 677
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getMonotonicAppSessionAverageLength()J

    move-result-wide v2

    .line 676
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 678
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 679
    iput v1, p0, Lcom/appodeal/ads/api/Session;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 161
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Session;

    const-class v2, Lcom/appodeal/ads/api/Session$Builder;

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 480
    iget-byte v0, p0, Lcom/appodeal/ads/api/Session;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 484
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Session;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Session$Builder;
    .locals 1

    .line 754
    invoke-static {}, Lcom/appodeal/ads/api/Session;->newBuilder()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Session$Builder;
    .locals 2

    .line 770
    new-instance v0, Lcom/appodeal/ads/api/Session$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Session$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Session$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->newBuilderForType()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Session;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->newBuilderForType()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 32
    new-instance p1, Lcom/appodeal/ads/api/Session;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Session;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Session$Builder;
    .locals 2

    .line 763
    sget-object v0, Lcom/appodeal/ads/api/Session;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Session;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 764
    new-instance v0, Lcom/appodeal/ads/api/Session$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Session$Builder;-><init>(Lcom/appodeal/ads/api/Session$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Session$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Session$Builder;-><init>(Lcom/appodeal/ads/api/Session$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->toBuilder()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->toBuilder()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Session;->test_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 492
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getExtBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 495
    iget-object v1, p0, Lcom/appodeal/ads/api/Session;->ext_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getTokenBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 498
    iget-object v1, p0, Lcom/appodeal/ads/api/Session;->token_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 500
    :cond_2
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->sessionId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 501
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 503
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getSessionUuidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 504
    iget-object v1, p0, Lcom/appodeal/ads/api/Session;->sessionUuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 506
    :cond_4
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->sessionUptime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    .line 507
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 509
    :cond_5
    iget v0, p0, Lcom/appodeal/ads/api/Session;->segmentId_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 510
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 512
    :cond_6
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->adStats_:Lcom/appodeal/ads/api/AdStats;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 513
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Session;->getAdStats()Lcom/appodeal/ads/api/AdStats;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 515
    :cond_7
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->monotonicSessionUptime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    .line 516
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 518
    :cond_8
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->activeSessionUptime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 519
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 521
    :cond_9
    iget v0, p0, Lcom/appodeal/ads/api/Session;->activeSessionId_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 522
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 524
    :cond_a
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->appSessionAverageLength_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    const/16 v4, 0xc

    .line 525
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 527
    :cond_b
    iget-wide v0, p0, Lcom/appodeal/ads/api/Session;->monotonicAppSessionAverageLength_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    .line 528
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 530
    :cond_c
    iget-object v0, p0, Lcom/appodeal/ads/api/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
