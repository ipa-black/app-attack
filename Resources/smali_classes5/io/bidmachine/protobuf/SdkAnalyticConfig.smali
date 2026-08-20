.class public final Lio/bidmachine/protobuf/SdkAnalyticConfig;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SdkAnalyticConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;,
        Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;,
        Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;
    }
.end annotation


# static fields
.field public static final CONTEXT_FIELD_NUMBER:I = 0x2

.field public static final COUNT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

.field public static final INTERVAL_FIELD_NUMBER:I = 0x3

.field public static final METRIC_CONFIGS_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile context_:Ljava/lang/Object;

.field private count_:I

.field private interval_:I

.field private memoizedIsInitialized:B

.field private metricConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation
.end field

.field private volatile url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2370
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2378
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1424
    iput-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>()V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_9

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-eq v4, v5, :cond_5

    const/16 v5, 0x18

    if-eq v4, v5, :cond_4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 87
    invoke-virtual {p0, p1, v0, p2, v4}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_2

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    move v2, v3

    .line 82
    :cond_2
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    .line 83
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 82
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 64
    iput-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 58
    iput-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
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

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_8

    .line 102
    iget-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    .line 104
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->makeExtensionsImmutable()V

    .line 106
    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_a

    .line 102
    iget-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    .line 104
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1424
    iput-byte p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1700(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1702(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1802(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lio/bidmachine/protobuf/SdkAnalyticConfig;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    return p1
.end method

.method static synthetic access$2002(Lio/bidmachine/protobuf/SdkAnalyticConfig;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    return p1
.end method

.method static synthetic access$2100(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Ljava/util/List;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2102(Lio/bidmachine/protobuf/SdkAnalyticConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2300(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2400()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1

    .line 2374
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 110
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 1606
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 1609
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1579
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1580
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1586
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1587
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1547
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1553
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1592
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1593
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1599
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1600
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1567
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1568
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1574
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1575
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1536
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1542
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1557
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1563
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            ">;"
        }
    .end annotation

    .line 2389
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1490
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-nez v1, :cond_1

    .line 1491
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1493
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 1495
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1497
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1499
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v1

    .line 1500
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 1501
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v1

    .line 1502
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 1503
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsList()Ljava/util/List;

    move-result-object v1

    .line 1504
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 1505
    :cond_6
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 2

    .line 1320
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    .line 1321
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1322
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1324
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1326
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1327
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    return-object v0
.end method

.method public getContextBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1342
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    .line 1343
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1344
    check-cast v0, Ljava/lang/String;

    .line 1345
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1347
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    return-object v0

    .line 1350
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1381
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1

    .line 2399
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .line 1366
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    return v0
.end method

.method public getMetricConfigs(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .locals 1

    .line 1413
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    return-object p1
.end method

.method public getMetricConfigsCount()I
    .locals 1

    .line 1406
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetricConfigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;",
            ">;"
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getMetricConfigsOrBuilder(I)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;
    .locals 1

    .line 1421
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;

    return-object p1
.end method

.method public getMetricConfigsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            ">;"
        }
    .end annotation

    .line 2394
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1458
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1462
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1463
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1465
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContextBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 1466
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1468
    :cond_2
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 1470
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1472
    :cond_3
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    .line 1474
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1476
    :cond_4
    :goto_1
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1477
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    .line 1478
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1480
    :cond_5
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1481
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1274
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    .line 1275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1276
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1278
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1280
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1281
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1296
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    .line 1297
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1298
    check-cast v0, Ljava/lang/String;

    .line 1299
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1301
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    return-object v0

    .line 1304
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1511
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1512
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedHashCode:I

    return v0

    .line 1515
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1517
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1519
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1521
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1523
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 1524
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1526
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x1d

    .line 1528
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1529
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 116
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1427
    iget-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1431
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 1604
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 2

    .line 1620
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 28
    new-instance p1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-direct {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 2

    .line 1613
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1614
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1438
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1439
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->url_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContextBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1442
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->context_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1444
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->interval_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1445
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1447
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->count_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1448
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    const/4 v0, 0x0

    .line 1450
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1451
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->metricConfigs_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1453
    :cond_4
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
