.class public final Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$PlacementDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlacementData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKVER_FIELD_NUMBER:I = 0x2

.field public static final SDK_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 930
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 938
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 401
    iput-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedIsInitialized:B

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    .line 232
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;-><init>()V

    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 260
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 278
    invoke-virtual {p0, p1, v0, p2, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 274
    iput-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 268
    iput-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 289
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 290
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 287
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->makeExtensionsImmutable()V

    .line 294
    throw p1

    .line 292
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 228
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 401
    iput-byte p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 221
    sget-boolean v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Ljava/lang/Object;
    .locals 0

    .line 221
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Ljava/lang/Object;
    .locals 0

    .line 221
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 221
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 221
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 221
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 221
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1

    .line 934
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 298
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 548
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 551
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 522
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 529
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 489
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 495
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 535
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 542
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 510
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 517
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 478
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 484
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 505
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;",
            ">;"
        }
    .end annotation

    .line 949
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 446
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    if-nez v1, :cond_1

    .line 447
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 449
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    .line 451
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdk()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 453
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkver()Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 455
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1

    .line 959
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;",
            ">;"
        }
    .end annotation

    .line 954
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 321
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    .line 322
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 323
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 325
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 327
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 328
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 343
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    .line 344
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 345
    check-cast v0, Ljava/lang/String;

    .line 346
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 348
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 351
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .locals 2

    .line 367
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    .line 368
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 369
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 371
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 373
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 374
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 389
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    .line 390
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 391
    check-cast v0, Ljava/lang/String;

    .line 392
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 394
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 397
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 426
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 431
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 433
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 434
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_2
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 245
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 461
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 462
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedHashCode:I

    return v0

    .line 465
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 469
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 470
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 471
    iput v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 304
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    .line 305
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 404
    iget-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 408
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 546
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 2

    .line 562
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 239
    new-instance p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    invoke-direct {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 2

    .line 555
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 556
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

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

    .line 415
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 416
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 418
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 419
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->sdkver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 421
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
