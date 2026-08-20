.class public final Lcom/appodeal/ads/api/Adapter;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Adapter.java"

# interfaces
.implements Lcom/appodeal/ads/api/AdapterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Adapter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Adapter;

.field public static final NETWORK_SDK_VERSION_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile networkSdkVersion_:Ljava/lang/Object;

.field private volatile status_:Ljava/lang/Object;

.field private volatile version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 884
    new-instance v0, Lcom/appodeal/ads/api/Adapter;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Adapter;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Adapter;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Adapter;

    .line 892
    new-instance v0, Lcom/appodeal/ads/api/Adapter$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Adapter$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 242
    iput-byte v0, p0, Lcom/appodeal/ads/api/Adapter;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/appodeal/ads/api/Adapter;-><init>()V

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 73
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Adapter;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 63
    iput-object v2, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 57
    iput-object v2, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 84
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 85
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 82
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->makeExtensionsImmutable()V

    .line 89
    throw p1

    .line 87
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Adapter$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 242
    iput-byte p1, p0, Lcom/appodeal/ads/api/Adapter;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Adapter$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Adapter;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/appodeal/ads/api/Adapter;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/appodeal/ads/api/Adapter;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/appodeal/ads/api/Adapter;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/appodeal/ads/api/Adapter;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Adapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/appodeal/ads/api/Adapter;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Adapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/appodeal/ads/api/Adapter;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Adapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/appodeal/ads/api/Adapter;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/appodeal/ads/api/Adapter;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Adapter;
    .locals 1

    .line 888
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Adapter;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 93
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Adapter_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 399
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Adapter;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Adapter;->toBuilder()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 402
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Adapter;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Adapter;->toBuilder()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 373
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 380
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 386
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 393
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 361
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 368
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Adapter;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Adapter;",
            ">;"
        }
    .end annotation

    .line 903
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 293
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Adapter;

    if-nez v1, :cond_1

    .line 294
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 296
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Adapter;

    .line 298
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Adapter;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Adapter;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 302
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Adapter;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Adapter;
    .locals 1

    .line 913
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Adapter;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    .line 209
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 212
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 214
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 215
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNetworkSdkVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    .line 231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 235
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 238
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
            "Lcom/appodeal/ads/api/Adapter;",
            ">;"
        }
    .end annotation

    .line 908
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 270
    iget v0, p0, Lcom/appodeal/ads/api/Adapter;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getStatusBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 275
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 278
    iget-object v2, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getNetworkSdkVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 281
    iget-object v2, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    iput v0, p0, Lcom/appodeal/ads/api/Adapter;->memoizedSize:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    .line 117
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 120
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 122
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    .line 139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    return-object v0

    .line 146
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    .line 163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 166
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 168
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    .line 185
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 189
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    return-object v0

    .line 192
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 310
    iget v0, p0, Lcom/appodeal/ads/api/Adapter;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 311
    iget v0, p0, Lcom/appodeal/ads/api/Adapter;->memoizedHashCode:I

    return v0

    .line 314
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 316
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 318
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 320
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 321
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 322
    iput v1, p0, Lcom/appodeal/ads/api/Adapter;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 99
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Adapter_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Adapter;

    const-class v2, Lcom/appodeal/ads/api/Adapter$Builder;

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 245
    iget-byte v0, p0, Lcom/appodeal/ads/api/Adapter;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 249
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Adapter;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 397
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->newBuilder()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 2

    .line 413
    new-instance v0, Lcom/appodeal/ads/api/Adapter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Adapter$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Adapter$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->newBuilderForType()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->newBuilderForType()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 28
    new-instance p1, Lcom/appodeal/ads/api/Adapter;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Adapter;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 2

    .line 406
    sget-object v0, Lcom/appodeal/ads/api/Adapter;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Adapter;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 407
    new-instance v0, Lcom/appodeal/ads/api/Adapter$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Adapter$Builder;-><init>(Lcom/appodeal/ads/api/Adapter$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Adapter$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Adapter$Builder;-><init>(Lcom/appodeal/ads/api/Adapter$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->toBuilder()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->toBuilder()Lcom/appodeal/ads/api/Adapter$Builder;

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

    .line 256
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getStatusBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter;->status_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 260
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter;->version_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter;->getNetworkSdkVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 263
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter;->networkSdkVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
