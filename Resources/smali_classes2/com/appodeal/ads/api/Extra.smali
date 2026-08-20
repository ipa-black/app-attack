.class public final Lcom/appodeal/ads/api/Extra;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Extra.java"

# interfaces
.implements Lcom/appodeal/ads/api/ExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Extra$Builder;
    }
.end annotation


# static fields
.field public static final AD_UNIT_STAT_FIELD_NUMBER:I = 0x2

.field public static final APPS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Extra;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Extra;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRICE_FLOOR_FIELD_NUMBER:I = 0x1

.field public static final SA_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private volatile adUnitStat_:Ljava/lang/Object;

.field private apps_:Lcom/explorestack/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private priceFloor_:F

.field private sa_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1133
    new-instance v0, Lcom/appodeal/ads/api/Extra;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Extra;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Extra;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Extra;

    .line 1141
    new-instance v0, Lcom/appodeal/ads/api/Extra$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Extra$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 289
    iput-byte v0, p0, Lcom/appodeal/ads/api/Extra;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    .line 25
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra;-><init>()V

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    const/16 v5, 0xd

    if-eq v3, v5, :cond_6

    const/16 v5, 0x12

    if-eq v3, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x22

    if-eq v3, v5, :cond_1

    .line 89
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/appodeal/ads/api/Extra;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_2

    .line 82
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 85
    :cond_2
    iget-object v4, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_4

    .line 73
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 76
    :cond_4
    iget-object v4, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 67
    iput-object v3, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/appodeal/ads/api/Extra;->priceFloor_:F
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 100
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 101
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 98
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_8

    .line 104
    iget-object p2, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_8
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_9

    .line 107
    iget-object p2, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 109
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 110
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->makeExtensionsImmutable()V

    .line 111
    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_b

    .line 104
    iget-object p1, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_b
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_c

    .line 107
    iget-object p1, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 109
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 110
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Extra$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Extra;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 289
    iput-byte p1, p0, Lcom/appodeal/ads/api/Extra;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Extra$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Extra;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Extra;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Extra;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

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
    invoke-static {p0}, Lcom/appodeal/ads/api/Extra;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Extra;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Extra;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Extra;->priceFloor_:F

    return p1
.end method

.method static synthetic access$500(Lcom/appodeal/ads/api/Extra;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Extra;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Extra;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/Extra;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Extra;
    .locals 1

    .line 1137
    sget-object v0, Lcom/appodeal/ads/api/Extra;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Extra;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 115
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Extra_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 473
    sget-object v0, Lcom/appodeal/ads/api/Extra;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Extra;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Extra;->toBuilder()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 476
    sget-object v0, Lcom/appodeal/ads/api/Extra;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Extra;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Extra;->toBuilder()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 447
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 454
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 460
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 467
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 435
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 442
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 430
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Extra;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Extra;",
            ">;"
        }
    .end annotation

    .line 1152
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 357
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Extra;

    if-nez v1, :cond_1

    .line 358
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 360
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Extra;

    .line 362
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getPriceFloor()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 364
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Extra;->getPriceFloor()F

    move-result v2

    .line 363
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAdUnitStat()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Extra;->getAdUnitStat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 367
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAppsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 368
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Extra;->getAppsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 369
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getSaList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 370
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Extra;->getSaList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 371
    :cond_5
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public getAdUnitStat()Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    .line 154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 157
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 159
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAdUnitStatBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    .line 176
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    return-object v0

    .line 183
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getApps(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAppsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAppsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAppsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getAppsList()Ljava/util/List;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAppsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Extra;
    .locals 1

    .line 1162
    sget-object v0, Lcom/appodeal/ads/api/Extra;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Extra;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Extra;",
            ">;"
        }
    .end annotation

    .line 1157
    sget-object v0, Lcom/appodeal/ads/api/Extra;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPriceFloor()F
    .locals 1

    .line 138
    iget v0, p0, Lcom/appodeal/ads/api/Extra;->priceFloor_:F

    return v0
.end method

.method public getSa(I)Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSaBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSaCount()I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSaList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getSaList()Ljava/util/List;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getSaList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 320
    iget v0, p0, Lcom/appodeal/ads/api/Extra;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 324
    :cond_0
    iget v0, p0, Lcom/appodeal/ads/api/Extra;->priceFloor_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 326
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAdUnitStatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 329
    iget-object v3, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v2

    move v3, v1

    .line 333
    :goto_1
    iget-object v4, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 334
    iget-object v4, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/appodeal/ads/api/Extra;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v3

    .line 337
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAppsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    .line 341
    :goto_2
    iget-object v3, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 342
    iget-object v3, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/appodeal/ads/api/Extra;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v1

    .line 345
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getSaList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    iput v0, p0, Lcom/appodeal/ads/api/Extra;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 377
    iget v0, p0, Lcom/appodeal/ads/api/Extra;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 378
    iget v0, p0, Lcom/appodeal/ads/api/Extra;->memoizedHashCode:I

    return v0

    .line 381
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 384
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getPriceFloor()F

    move-result v0

    .line 383
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 386
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAdUnitStat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 387
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAppsCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 389
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAppsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getSaCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 393
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getSaList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x1d

    .line 395
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 396
    iput v1, p0, Lcom/appodeal/ads/api/Extra;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 121
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Extra_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Extra;

    const-class v2, Lcom/appodeal/ads/api/Extra$Builder;

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 292
    iget-byte v0, p0, Lcom/appodeal/ads/api/Extra;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 296
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Extra;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 471
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->newBuilder()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 2

    .line 487
    new-instance v0, Lcom/appodeal/ads/api/Extra$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Extra$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Extra$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->newBuilderForType()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->newBuilderForType()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 32
    new-instance p1, Lcom/appodeal/ads/api/Extra;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Extra;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 2

    .line 480
    sget-object v0, Lcom/appodeal/ads/api/Extra;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Extra;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 481
    new-instance v0, Lcom/appodeal/ads/api/Extra$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Extra$Builder;-><init>(Lcom/appodeal/ads/api/Extra$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Extra$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Extra$Builder;-><init>(Lcom/appodeal/ads/api/Extra$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->toBuilder()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->toBuilder()Lcom/appodeal/ads/api/Extra$Builder;

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

    .line 303
    iget v0, p0, Lcom/appodeal/ads/api/Extra;->priceFloor_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 304
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra;->getAdUnitStatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 307
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra;->adUnitStat_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 310
    iget-object v2, p0, Lcom/appodeal/ads/api/Extra;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
