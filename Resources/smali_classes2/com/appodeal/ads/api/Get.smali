.class public final Lcom/appodeal/ads/api/Get;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Get.java"

# interfaces
.implements Lcom/appodeal/ads/api/GetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Get$Builder;
    }
.end annotation


# static fields
.field public static final CHECK_SDK_VERSION_FIELD_NUMBER:I = 0x6

.field public static final DEBUG_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Get;

.field public static final LARGE_BANNERS_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Get;",
            ">;"
        }
    .end annotation
.end field

.field public static final REWARDED_VIDEO_FIELD_NUMBER:I = 0x3

.field public static final SHOW_ARRAY_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private checkSdkVersion_:Z

.field private debug_:Z

.field private largeBanners_:Z

.field private memoizedIsInitialized:B

.field private rewardedVideo_:Z

.field private showArray_:Lcom/explorestack/protobuf/LazyStringList;

.field private volatile type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1131
    new-instance v0, Lcom/appodeal/ads/api/Get;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Get;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Get;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Get;

    .line 1139
    new-instance v0, Lcom/appodeal/ads/api/Get$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Get$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 285
    iput-byte v0, p0, Lcom/appodeal/ads/api/Get;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

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
    invoke-direct {p0}, Lcom/appodeal/ads/api/Get;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_a

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    const/16 v5, 0x10

    if-eq v4, v5, :cond_6

    const/16 v5, 0x18

    if-eq v4, v5, :cond_5

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_2

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    .line 94
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/appodeal/ads/api/Get;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/appodeal/ads/api/Get;->checkSdkVersion_:Z

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_3

    .line 82
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    move v2, v3

    .line 85
    :cond_3
    iget-object v5, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/appodeal/ads/api/Get;->debug_:Z

    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/appodeal/ads/api/Get;->rewardedVideo_:Z

    goto :goto_0

    .line 66
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/appodeal/ads/api/Get;->largeBanners_:Z

    goto :goto_0

    .line 59
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 61
    iput-object v4, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 105
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 106
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_9

    .line 109
    iget-object p2, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 111
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 112
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->makeExtensionsImmutable()V

    .line 113
    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_b

    .line 109
    iget-object p1, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    .line 111
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 112
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Get$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Get;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 285
    iput-byte p1, p0, Lcom/appodeal/ads/api/Get;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Get$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Get;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/appodeal/ads/api/Get;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Get;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Get;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Get;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/appodeal/ads/api/Get;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Get;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Get;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Get;->largeBanners_:Z

    return p1
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Get;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Get;->rewardedVideo_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/Get;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Get;->debug_:Z

    return p1
.end method

.method static synthetic access$800(Lcom/appodeal/ads/api/Get;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/Get;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$902(Lcom/appodeal/ads/api/Get;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Get;->checkSdkVersion_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Get;
    .locals 1

    .line 1135
    sget-object v0, Lcom/appodeal/ads/api/Get;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Get;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 117
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Get_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 487
    sget-object v0, Lcom/appodeal/ads/api/Get;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Get;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Get;->toBuilder()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 490
    sget-object v0, Lcom/appodeal/ads/api/Get;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Get;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Get;->toBuilder()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 461
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 468
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 474
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 481
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 449
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 456
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 423
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Get;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Get;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Get;",
            ">;"
        }
    .end annotation

    .line 1150
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 363
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Get;

    if-nez v1, :cond_1

    .line 364
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 366
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Get;

    .line 368
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getType()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getLargeBanners()Z

    move-result v1

    .line 371
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getLargeBanners()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getRewardedVideo()Z

    move-result v1

    .line 373
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getRewardedVideo()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 374
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getDebug()Z

    move-result v1

    .line 375
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getDebug()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 376
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getShowArrayList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 377
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getShowArrayList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 378
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getCheckSdkVersion()Z

    move-result v1

    .line 379
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Get;->getCheckSdkVersion()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 380
    :cond_7
    iget-object v1, p0, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getCheckSdkVersion()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get;->checkSdkVersion_:Z

    return v0
.end method

.method public getDebug()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get;->debug_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Get;
    .locals 1

    .line 1160
    sget-object v0, Lcom/appodeal/ads/api/Get;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Get;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public getLargeBanners()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get;->largeBanners_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Get;",
            ">;"
        }
    .end annotation

    .line 1155
    sget-object v0, Lcom/appodeal/ads/api/Get;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRewardedVideo()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get;->rewardedVideo_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 322
    iget v0, p0, Lcom/appodeal/ads/api/Get;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 329
    :goto_0
    iget-boolean v2, p0, Lcom/appodeal/ads/api/Get;->largeBanners_:Z

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 331
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 333
    :cond_2
    iget-boolean v2, p0, Lcom/appodeal/ads/api/Get;->rewardedVideo_:Z

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 335
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 337
    :cond_3
    iget-boolean v2, p0, Lcom/appodeal/ads/api/Get;->debug_:Z

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    .line 339
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    move v2, v1

    .line 343
    :goto_1
    iget-object v3, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 344
    iget-object v3, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/appodeal/ads/api/Get;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v2

    .line 347
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getShowArrayList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Get;->checkSdkVersion_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 351
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_6
    iget-object v1, p0, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    iput v0, p0, Lcom/appodeal/ads/api/Get;->memoizedSize:I

    return v0
.end method

.method public getShowArray(I)Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getShowArrayBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getShowArrayCount()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getShowArrayList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getShowArrayList()Ljava/util/List;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getShowArrayList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    .line 141
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 144
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 146
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    .line 163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Ljava/lang/String;

    .line 165
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 167
    iput-object v0, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    return-object v0

    .line 170
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 386
    iget v0, p0, Lcom/appodeal/ads/api/Get;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 387
    iget v0, p0, Lcom/appodeal/ads/api/Get;->memoizedHashCode:I

    return v0

    .line 390
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Get;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 392
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 395
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getLargeBanners()Z

    move-result v0

    .line 394
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 398
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getRewardedVideo()Z

    move-result v0

    .line 397
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 401
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getDebug()Z

    move-result v0

    .line 400
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 402
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getShowArrayCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 404
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getShowArrayList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 408
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getCheckSdkVersion()Z

    move-result v0

    .line 407
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 409
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 410
    iput v1, p0, Lcom/appodeal/ads/api/Get;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 123
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Get_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Get;

    const-class v2, Lcom/appodeal/ads/api/Get$Builder;

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 288
    iget-byte v0, p0, Lcom/appodeal/ads/api/Get;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 292
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Get;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Get$Builder;
    .locals 1

    .line 485
    invoke-static {}, Lcom/appodeal/ads/api/Get;->newBuilder()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Get$Builder;
    .locals 2

    .line 501
    new-instance v0, Lcom/appodeal/ads/api/Get$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Get$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Get$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->newBuilderForType()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Get;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->newBuilderForType()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 31
    new-instance p1, Lcom/appodeal/ads/api/Get;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Get;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Get$Builder;
    .locals 2

    .line 494
    sget-object v0, Lcom/appodeal/ads/api/Get;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Get;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 495
    new-instance v0, Lcom/appodeal/ads/api/Get$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Get$Builder;-><init>(Lcom/appodeal/ads/api/Get$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Get$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Get$Builder;-><init>(Lcom/appodeal/ads/api/Get$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->toBuilder()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->toBuilder()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Get;->getTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->type_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get;->largeBanners_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 303
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 305
    :cond_1
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get;->rewardedVideo_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 306
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 308
    :cond_2
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get;->debug_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 309
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_3
    const/4 v0, 0x0

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/appodeal/ads/api/Get;->showArray_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_4
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Get;->checkSdkVersion_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 315
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/api/Get;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
