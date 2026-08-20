.class public final Lcom/appodeal/ads/api/Stats$AdUnit;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Stats.java"

# interfaces
.implements Lcom/appodeal/ads/api/Stats$AdUnitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdUnit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats$AdUnit;

.field public static final ECPM_FIELD_NUMBER:I = 0x6

.field public static final FINISH_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRECACHE_FIELD_NUMBER:I = 0x5

.field public static final RESULT_FIELD_NUMBER:I = 0x4

.field public static final START_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private ecpm_:D

.field private finish_:J

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private precache_:Z

.field private result_:I

.field private start_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1387
    new-instance v0, Lcom/appodeal/ads/api/Stats$AdUnit;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Stats$AdUnit;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats$AdUnit;

    .line 1395
    new-instance v0, Lcom/appodeal/ads/api/Stats$AdUnit$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Stats$AdUnit$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 400
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 632
    iput-byte v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedIsInitialized:B

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;-><init>()V

    .line 423
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 430
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5

    const/16 v4, 0x18

    if-eq v2, v4, :cond_4

    const/16 v4, 0x20

    if-eq v2, v4, :cond_3

    const/16 v4, 0x28

    if-eq v2, v4, :cond_2

    const/16 v4, 0x31

    if-eq v2, v4, :cond_1

    .line 468
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Stats$AdUnit;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 464
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->ecpm_:D

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->precache_:Z

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 454
    iput v2, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    goto :goto_0

    .line 448
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->finish_:J

    goto :goto_0

    .line 443
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->start_:J

    goto :goto_0

    .line 436
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 438
    iput-object v2, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;
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

    .line 479
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 480
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 477
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 483
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->makeExtensionsImmutable()V

    .line 484
    throw p1

    .line 482
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 483
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Stats$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Stats$AdUnit;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 398
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 632
    iput-byte p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Stats$1;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 391
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 391
    invoke-static {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 391
    sget-boolean v0, Lcom/appodeal/ads/api/Stats$AdUnit;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/appodeal/ads/api/Stats$AdUnit;)Ljava/lang/Object;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Stats$AdUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Stats$AdUnit;J)J
    .locals 0

    .line 391
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->start_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Stats$AdUnit;J)J
    .locals 0

    .line 391
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->finish_:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/appodeal/ads/api/Stats$AdUnit;)I
    .locals 0

    .line 391
    iget p0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    return p0
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/Stats$AdUnit;I)I
    .locals 0

    .line 391
    iput p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    return p1
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/Stats$AdUnit;Z)Z
    .locals 0

    .line 391
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->precache_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/appodeal/ads/api/Stats$AdUnit;D)D
    .locals 0

    .line 391
    iput-wide p1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->ecpm_:D

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1

    .line 1391
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 488
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    .line 828
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats$AdUnit;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats$AdUnit;->toBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    .line 831
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats$AdUnit;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats$AdUnit;->toBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 802
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 809
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 769
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 775
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 815
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 822
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 790
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 797
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 758
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 764
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 779
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 785
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1406
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 706
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Stats$AdUnit;

    if-nez v1, :cond_1

    .line 707
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 709
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Stats$AdUnit;

    .line 711
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getId()Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 713
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getStart()J

    move-result-wide v3

    .line 714
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getStart()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 715
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getFinish()J

    move-result-wide v3

    .line 716
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getFinish()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 717
    :cond_4
    iget v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    iget v3, p1, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    if-eq v1, v3, :cond_5

    return v2

    .line 718
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getPrecache()Z

    move-result v1

    .line 719
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getPrecache()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 720
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getEcpm()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 722
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->getEcpm()D

    move-result-wide v5

    .line 721
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 723
    :cond_7
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 1

    .line 1416
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats$AdUnit;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public getEcpm()D
    .locals 2

    .line 629
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->ecpm_:D

    return-wide v0
.end method

.method public getFinish()J
    .locals 2

    .line 572
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->finish_:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    .line 512
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 513
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 515
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 517
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 518
    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    .line 534
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 535
    check-cast v0, Ljava/lang/String;

    .line 536
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 538
    iput-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    return-object v0

    .line 541
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
            "Lcom/appodeal/ads/api/Stats$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1411
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPrecache()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->precache_:Z

    return v0
.end method

.method public getResult()Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;
    .locals 1

    .line 598
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->valueOf(I)Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->UNRECOGNIZED:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    :cond_0
    return-object v0
.end method

.method public getResultValue()I
    .locals 1

    .line 586
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 669
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 674
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 676
    :goto_0
    iget-wide v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->start_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 678
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 680
    :cond_2
    iget-wide v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->finish_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 682
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 684
    :cond_3
    iget v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    sget-object v2, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->SUCCESSFUL:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    invoke-virtual {v2}, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x4

    .line 685
    iget v2, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    .line 686
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 688
    :cond_4
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->precache_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 690
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 692
    :cond_5
    iget-wide v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->ecpm_:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    .line 694
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 696
    :cond_6
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 697
    iput v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedSize:I

    return v0
.end method

.method public getStart()J
    .locals 2

    .line 557
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->start_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 729
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 730
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedHashCode:I

    return v0

    .line 733
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 735
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 738
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getStart()J

    move-result-wide v2

    .line 737
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 741
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getFinish()J

    move-result-wide v2

    .line 740
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 743
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 746
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getPrecache()Z

    move-result v0

    .line 745
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 749
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getEcpm()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 748
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 750
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 751
    iput v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 494
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Stats_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Stats$AdUnit;

    const-class v2, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    .line 495
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 635
    iget-byte v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 639
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 1

    .line 826
    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->newBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2

    .line 842
    new-instance v0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Stats$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->newBuilderForType()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 391
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnit;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->newBuilderForType()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 409
    new-instance p1, Lcom/appodeal/ads/api/Stats$AdUnit;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Stats$AdUnit;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;
    .locals 2

    .line 835
    sget-object v0, Lcom/appodeal/ads/api/Stats$AdUnit;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Stats$AdUnit;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 836
    new-instance v0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;-><init>(Lcom/appodeal/ads/api/Stats$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;-><init>(Lcom/appodeal/ads/api/Stats$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats$AdUnit;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->toBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->toBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

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

    .line 646
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Stats$AdUnit;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 647
    iget-object v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 649
    :cond_0
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->start_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 650
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 652
    :cond_1
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->finish_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 653
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 655
    :cond_2
    iget v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    sget-object v1, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->SUCCESSFUL:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    invoke-virtual {v1}, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    .line 656
    iget v1, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->result_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 658
    :cond_3
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->precache_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 659
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 661
    :cond_4
    iget-wide v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->ecpm_:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    .line 662
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 664
    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/api/Stats$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
