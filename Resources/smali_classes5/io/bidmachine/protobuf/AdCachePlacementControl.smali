.class public final Lio/bidmachine/protobuf/AdCachePlacementControl;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdCachePlacementControl.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdCachePlacementControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

.field public static final MAX_AGE_FIELD_NUMBER:I = 0x3

.field public static final MAX_CACHE_SIZE_FIELD_NUMBER:I = 0x2

.field public static final MAX_RETAIN_COUNT_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private maxAge_:I

.field private maxCacheSize_:I

.field private maxRetainCount_:I

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 578
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 586
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 131
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    .line 67
    invoke-virtual {p0, p1, v0, p2, v2}, Lio/bidmachine/protobuf/AdCachePlacementControl;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I
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

    .line 78
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 79
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 76
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 82
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->makeExtensionsImmutable()V

    .line 83
    throw p1

    .line 81
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 82
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 131
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I

    return p1
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    return p1
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/AdCachePlacementControl;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    return p1
.end method

.method static synthetic access$700(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1

    .line 582
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 87
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    .line 291
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    .line 294
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 265
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 272
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 278
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 285
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 253
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 260
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 221
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 227
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 242
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 248
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 597
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 185
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    if-nez v1, :cond_1

    .line 186
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 188
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 190
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v1

    .line 191
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 192
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v1

    .line 193
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 194
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v1

    .line 195
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 196
    :cond_4
    iget-object v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1

    .line 607
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .line 128
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    return v0
.end method

.method public getMaxCacheSize()I
    .locals 1

    .line 106
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I

    return v0
.end method

.method public getMaxRetainCount()I
    .locals 1

    .line 117
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 602
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 159
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 163
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 165
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 167
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 169
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_2
    iget v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 173
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    iput v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 202
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedHashCode:I

    return v0

    .line 206
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 208
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 210
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 212
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxAge()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 213
    iget-object v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 214
    iput v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 93
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdCachePlacementControl_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    const-class v2, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 134
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->newBuilderForType()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->newBuilderForType()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 1

    .line 289
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->newBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 2

    .line 305
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;
    .locals 2

    .line 298
    sget-object v0, Lio/bidmachine/protobuf/AdCachePlacementControl;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdCachePlacementControl;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 299
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>(Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;-><init>(Lio/bidmachine/protobuf/AdCachePlacementControl$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxCacheSize_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 146
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 148
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxAge_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 149
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 151
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->maxRetainCount_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 152
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 154
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/AdCachePlacementControl;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
