.class public final Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$AppDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    }
.end annotation


# static fields
.field public static final APP_NAME_FIELD_NUMBER:I = 0x1

.field public static final APP_VER_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile appName_:Ljava/lang/Object;

.field private volatile appVer_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7922
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 7930
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7278
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7433
    iput-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedIsInitialized:B

    .line 7279
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    .line 7280
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7299
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;-><init>()V

    .line 7301
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7304
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 7308
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 7326
    invoke-virtual {p0, p1, v0, p2, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 7320
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7322
    iput-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    goto :goto_0

    .line 7314
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7316
    iput-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;
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

    .line 7337
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 7338
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7335
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7340
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 7341
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->makeExtensionsImmutable()V

    .line 7342
    throw p1

    .line 7340
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 7341
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7269
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 7276
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7433
    iput-byte p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 7269
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$8700()Z
    .locals 1

    .line 7269
    sget-boolean v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8900(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Ljava/lang/Object;
    .locals 0

    .line 7269
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8902(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7269
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9000(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Ljava/lang/Object;
    .locals 0

    .line 7269
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9002(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7269
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9100(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 7269
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$9200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 7269
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 7269
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 7269
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1

    .line 7926
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7346
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7580
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7583
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7553
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7554
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7560
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7561
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7521
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7527
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7566
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7567
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7573
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7574
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7541
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7542
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7548
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7549
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7510
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7516
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7531
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7537
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppData;",
            ">;"
        }
    .end annotation

    .line 7941
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7478
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    if-nez v1, :cond_1

    .line 7479
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7481
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    .line 7483
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 7484
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 7485
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppVer()Ljava/lang/String;

    move-result-object v1

    .line 7486
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 7487
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .line 7365
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    .line 7366
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7367
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7369
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7371
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7372
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7383
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    .line 7384
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7385
    check-cast v0, Ljava/lang/String;

    .line 7386
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7388
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    return-object v0

    .line 7391
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 2

    .line 7403
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    .line 7404
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7405
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7407
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7409
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7410
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7421
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    .line 7422
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7423
    check-cast v0, Ljava/lang/String;

    .line 7424
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7426
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 7429
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData;
    .locals 1

    .line 7951
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$AppData;",
            ">;"
        }
    .end annotation

    .line 7946
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 7458
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7462
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 7463
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7465
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 7466
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7468
    :cond_2
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7469
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 7293
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 7493
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 7494
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedHashCode:I

    return v0

    .line 7497
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 7499
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 7501
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 7502
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7503
    iput v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 7352
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    .line 7353
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7436
    iget-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7440
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7269
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 1

    .line 7578
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 2

    .line 7594
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 7287
    new-instance p1, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    invoke-direct {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;
    .locals 2

    .line 7587
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$AppData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 7588
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$AppData;)Lio/bidmachine/protobuf/RequestTokenPayload$AppData$Builder;

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

    .line 7447
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7448
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7450
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 7451
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->appVer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7453
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$AppData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
