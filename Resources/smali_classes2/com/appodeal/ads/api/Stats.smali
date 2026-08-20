.class public final Lcom/appodeal/ads/api/Stats;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Stats.java"

# interfaces
.implements Lcom/appodeal/ads/api/StatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Stats$Builder;,
        Lcom/appodeal/ads/api/Stats$AdUnit;,
        Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;,
        Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;
    }
.end annotation


# static fields
.field public static final ADAPTER_FIELD_NUMBER:I = 0x7

.field public static final AD_UNIT_FIELD_NUMBER:I = 0x6

.field public static final CAPACITY_FIELD_NUMBER:I = 0x1

.field public static final COMPLETED_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats;

.field public static final FINISH_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Stats;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_FIELD_NUMBER:I = 0x2

.field public static final SUCCESSFUL_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private adUnit_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private adapter_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private capacity_:I

.field private completed_:Z

.field private finish_:J

.field private memoizedIsInitialized:B

.field private start_:J

.field private successful_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2963
    new-instance v0, Lcom/appodeal/ads/api/Stats;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Stats;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Stats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats;

    .line 2971
    new-instance v0, Lcom/appodeal/ads/api/Stats$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Stats$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1616
    iput-byte v0, p0, Lcom/appodeal/ads/api/Stats;->memoizedIsInitialized:B

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    const/16 v5, 0x8

    if-eq v3, v5, :cond_9

    const/16 v5, 0x10

    if-eq v3, v5, :cond_8

    const/16 v5, 0x18

    if-eq v3, v5, :cond_7

    const/16 v5, 0x20

    if-eq v3, v5, :cond_6

    const/16 v5, 0x28

    if-eq v3, v5, :cond_5

    const/16 v5, 0x32

    if-eq v3, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    .line 102
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/appodeal/ads/api/Stats;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    .line 98
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 97
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_4

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 88
    :cond_4
    iget-object v3, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    .line 89
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 88
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/appodeal/ads/api/Stats;->completed_:Z

    goto :goto_0

    .line 75
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/appodeal/ads/api/Stats;->successful_:Z

    goto :goto_0

    .line 70
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/appodeal/ads/api/Stats;->finish_:J

    goto :goto_0

    .line 65
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/appodeal/ads/api/Stats;->start_:J

    goto :goto_0

    .line 60
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/appodeal/ads/api/Stats;->capacity_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 113
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 114
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 111
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_b

    .line 117
    iget-object p2, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_c

    .line 120
    iget-object p2, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    .line 122
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->makeExtensionsImmutable()V

    .line 124
    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_e

    .line 117
    iget-object p1, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    :cond_e
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_f

    .line 120
    iget-object p1, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    .line 122
    :cond_f
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Stats$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Stats;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1616
    iput-byte p1, p0, Lcom/appodeal/ads/api/Stats;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Stats$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Stats;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Stats;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/appodeal/ads/api/Stats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Stats;->capacity_:I

    return p1
.end method

.method static synthetic access$1902(Lcom/appodeal/ads/api/Stats;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats;->start_:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/appodeal/ads/api/Stats;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats;->finish_:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/appodeal/ads/api/Stats;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Stats;->successful_:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/appodeal/ads/api/Stats;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Stats;->completed_:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/appodeal/ads/api/Stats;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/appodeal/ads/api/Stats;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/appodeal/ads/api/Stats;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Stats;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Stats;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/appodeal/ads/api/Stats;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Stats;
    .locals 1

    .line 2967
    sget-object v0, Lcom/appodeal/ads/api/Stats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 128
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 1828
    sget-object v0, Lcom/appodeal/ads/api/Stats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats;->toBuilder()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 1831
    sget-object v0, Lcom/appodeal/ads/api/Stats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats;->toBuilder()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1801
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1802
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1808
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1809
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1769
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1775
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1814
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1815
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1821
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1822
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1789
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1790
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1796
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1797
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1758
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1764
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1779
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1785
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Stats;",
            ">;"
        }
    .end annotation

    .line 2982
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1698
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Stats;

    if-nez v1, :cond_1

    .line 1699
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1701
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Stats;

    .line 1703
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getCapacity()I

    move-result v1

    .line 1704
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getCapacity()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 1705
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getStart()J

    move-result-wide v1

    .line 1706
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getStart()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    return v3

    .line 1707
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getFinish()J

    move-result-wide v1

    .line 1708
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getFinish()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    return v3

    .line 1709
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getSuccessful()Z

    move-result v1

    .line 1710
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getSuccessful()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 1711
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getCompleted()Z

    move-result v1

    .line 1712
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getCompleted()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 1713
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getAdUnitList()Ljava/util/List;

    move-result-object v1

    .line 1714
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getAdUnitList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 1715
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getAdapterList()Ljava/util/List;

    move-result-object v1

    .line 1716
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats;->getAdapterList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 1717
    :cond_8
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v0
.end method

.method public getAdUnit(I)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p1
.end method

.method public getAdUnitCount()I
    .locals 1

    .line 1530
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdUnitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1507
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    return-object v0
.end method

.method public getAdUnitOrBuilder(I)Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;
    .locals 1

    .line 1553
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;

    return-object p1
.end method

.method public getAdUnitOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    return-object v0
.end method

.method public getAdapter(I)Lcom/appodeal/ads/api/Adapter;
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter;

    return-object p1
.end method

.method public getAdapterCount()I
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdapterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/api/Adapter;",
            ">;"
        }
    .end annotation

    .line 1567
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    return-object v0
.end method

.method public getAdapterOrBuilder(I)Lcom/appodeal/ads/api/AdapterOrBuilder;
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdapterOrBuilder;

    return-object p1
.end method

.method public getAdapterOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/appodeal/ads/api/AdapterOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .line 1433
    iget v0, p0, Lcom/appodeal/ads/api/Stats;->capacity_:I

    return v0
.end method

.method public getCompleted()Z
    .locals 1

    .line 1493
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats;->completed_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats;
    .locals 1

    .line 2992
    sget-object v0, Lcom/appodeal/ads/api/Stats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public getFinish()J
    .locals 2

    .line 1463
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats;->finish_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Stats;",
            ">;"
        }
    .end annotation

    .line 2987
    sget-object v0, Lcom/appodeal/ads/api/Stats;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1656
    iget v0, p0, Lcom/appodeal/ads/api/Stats;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1660
    :cond_0
    iget v0, p0, Lcom/appodeal/ads/api/Stats;->capacity_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 1662
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1664
    :goto_0
    iget-wide v2, p0, Lcom/appodeal/ads/api/Stats;->start_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 1666
    invoke-static {v6, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1668
    :cond_2
    iget-wide v2, p0, Lcom/appodeal/ads/api/Stats;->finish_:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    .line 1670
    invoke-static {v4, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1672
    :cond_3
    iget-boolean v2, p0, Lcom/appodeal/ads/api/Stats;->successful_:Z

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    .line 1674
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1676
    :cond_4
    iget-boolean v2, p0, Lcom/appodeal/ads/api/Stats;->completed_:Z

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 1678
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    move v2, v1

    .line 1680
    :goto_1
    iget-object v3, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1681
    iget-object v3, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    .line 1682
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1684
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1685
    iget-object v2, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    .line 1686
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1688
    :cond_7
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1689
    iput v0, p0, Lcom/appodeal/ads/api/Stats;->memoizedSize:I

    return v0
.end method

.method public getStart()J
    .locals 2

    .line 1448
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats;->start_:J

    return-wide v0
.end method

.method public getSuccessful()Z
    .locals 1

    .line 1478
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats;->successful_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1723
    iget v0, p0, Lcom/appodeal/ads/api/Stats;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1724
    iget v0, p0, Lcom/appodeal/ads/api/Stats;->memoizedHashCode:I

    return v0

    .line 1727
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1729
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getCapacity()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1732
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getStart()J

    move-result-wide v2

    .line 1731
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1735
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getFinish()J

    move-result-wide v2

    .line 1734
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1738
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getSuccessful()Z

    move-result v0

    .line 1737
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1741
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getCompleted()Z

    move-result v0

    .line 1740
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 1742
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getAdUnitCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1744
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1746
    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getAdapterCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1748
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->getAdapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x1d

    .line 1750
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1751
    iput v1, p0, Lcom/appodeal/ads/api/Stats;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 134
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Stats;

    const-class v2, Lcom/appodeal/ads/api/Stats$Builder;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1619
    iget-byte v0, p0, Lcom/appodeal/ads/api/Stats;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1623
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Stats;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 1

    .line 1826
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->newBuilder()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Stats$Builder;
    .locals 2

    .line 1842
    new-instance v0, Lcom/appodeal/ads/api/Stats$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Stats$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Stats$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->newBuilderForType()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->newBuilderForType()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 31
    new-instance p1, Lcom/appodeal/ads/api/Stats;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Stats;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Stats$Builder;
    .locals 2

    .line 1835
    sget-object v0, Lcom/appodeal/ads/api/Stats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1836
    new-instance v0, Lcom/appodeal/ads/api/Stats$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Stats$Builder;-><init>(Lcom/appodeal/ads/api/Stats$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Stats$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Stats$Builder;-><init>(Lcom/appodeal/ads/api/Stats$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->toBuilder()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats;->toBuilder()Lcom/appodeal/ads/api/Stats$Builder;

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

    .line 1630
    iget v0, p0, Lcom/appodeal/ads/api/Stats;->capacity_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1631
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1633
    :cond_0
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats;->start_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 1634
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1636
    :cond_1
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats;->finish_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 1637
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1639
    :cond_2
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats;->successful_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1640
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1642
    :cond_3
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats;->completed_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 1643
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    .line 1645
    :goto_0
    iget-object v2, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1646
    iget-object v2, p0, Lcom/appodeal/ads/api/Stats;->adUnit_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1648
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1649
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats;->adapter_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1651
    :cond_6
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
