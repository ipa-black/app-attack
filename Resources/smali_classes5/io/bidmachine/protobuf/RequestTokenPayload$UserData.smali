.class public final Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$UserDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    }
.end annotation


# static fields
.field public static final CCPA_FIELD_NUMBER:I = 0x3

.field public static final CONSENT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

.field public static final GDPR_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile ccpa_:Ljava/lang/Object;

.field private volatile consent_:Ljava/lang/Object;

.field private gdpr_:Z

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7204
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 7212
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6495
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6666
    iput-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedIsInitialized:B

    .line 6496
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    .line 6497
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6516
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;-><init>()V

    .line 6518
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6521
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 6525
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 6548
    invoke-virtual {p0, p1, v0, p2, v2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 6542
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6544
    iput-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    goto :goto_0

    .line 6538
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->gdpr_:Z

    goto :goto_0

    .line 6531
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6533
    iput-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;
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

    .line 6559
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 6560
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 6557
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6562
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 6563
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->makeExtensionsImmutable()V

    .line 6564
    throw p1

    .line 6562
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 6563
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6486
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 6493
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 6666
    iput-byte p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 6486
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$7500()Z
    .locals 1

    .line 6486
    sget-boolean v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7700(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Ljava/lang/Object;
    .locals 0

    .line 6486
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7702(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6486
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7802(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;Z)Z
    .locals 0

    .line 6486
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->gdpr_:Z

    return p1
.end method

.method static synthetic access$7900(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Ljava/lang/Object;
    .locals 0

    .line 6486
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7902(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6486
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8000(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 6486
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$8100()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 6486
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6486
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6486
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1

    .line 7208
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6568
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 6825
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 6828
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6798
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6799
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6805
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6806
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6766
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6772
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6811
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6812
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6818
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6819
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6786
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6787
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6793
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6794
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6755
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6761
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6776
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6782
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserData;",
            ">;"
        }
    .end annotation

    .line 7223
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6718
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    if-nez v1, :cond_1

    .line 6719
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6721
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    .line 6723
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getConsent()Ljava/lang/String;

    move-result-object v1

    .line 6724
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getConsent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6725
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getGdpr()Z

    move-result v1

    .line 6726
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getGdpr()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 6727
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getCcpa()Ljava/lang/String;

    move-result-object v1

    .line 6728
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getCcpa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 6729
    :cond_4
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getCcpa()Ljava/lang/String;
    .locals 2

    .line 6636
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    .line 6637
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6638
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6640
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6642
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6643
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCcpaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6654
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    .line 6655
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6656
    check-cast v0, Ljava/lang/String;

    .line 6657
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6659
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    return-object v0

    .line 6662
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConsent()Ljava/lang/String;
    .locals 2

    .line 6587
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    .line 6588
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6589
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6591
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6593
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6594
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    return-object v0
.end method

.method public getConsentBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6605
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    .line 6606
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6607
    check-cast v0, Ljava/lang/String;

    .line 6608
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6610
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    return-object v0

    .line 6613
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6486
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6486
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData;
    .locals 1

    .line 7233
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    return-object v0
.end method

.method public getGdpr()Z
    .locals 1

    .line 6625
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->gdpr_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$UserData;",
            ">;"
        }
    .end annotation

    .line 7228
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6694
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 6698
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getConsentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 6699
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6701
    :goto_0
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->gdpr_:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 6703
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6705
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getCcpaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 6706
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6708
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6709
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 6510
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 6735
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 6736
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedHashCode:I

    return v0

    .line 6739
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 6741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getConsent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 6744
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getGdpr()Z

    move-result v0

    .line 6743
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 6746
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getCcpa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 6747
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6748
    iput v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 6574
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    .line 6575
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 6669
    iget-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 6673
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6486
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6486
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6486
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 1

    .line 6823
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 2

    .line 6839
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 6504
    new-instance p1, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    invoke-direct {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6486
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6486
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;
    .locals 2

    .line 6832
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$UserData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 6833
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$UserData;)Lio/bidmachine/protobuf/RequestTokenPayload$UserData$Builder;

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

    .line 6680
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getConsentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6681
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->consent_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 6683
    :cond_0
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->gdpr_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 6684
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6686
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->getCcpaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6687
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->ccpa_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 6689
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$UserData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
