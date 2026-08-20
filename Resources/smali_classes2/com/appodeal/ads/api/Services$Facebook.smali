.class public final Lcom/appodeal/ads/api/Services$Facebook;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/Services$FacebookOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Facebook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Services$Facebook$Builder;
    }
.end annotation


# static fields
.field public static final APP_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Facebook;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Facebook;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile appId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile userId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2475
    new-instance v0, Lcom/appodeal/ads/api/Services$Facebook;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$Facebook;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services$Facebook;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Facebook;

    .line 2483
    new-instance v0, Lcom/appodeal/ads/api/Services$Facebook$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$Facebook$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1775
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1946
    iput-byte v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedIsInitialized:B

    .line 1776
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    .line 1777
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1796
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Facebook;-><init>()V

    .line 1798
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1801
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 1805
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 1823
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Services$Facebook;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1817
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1819
    iput-object v2, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    goto :goto_0

    .line 1811
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1813
    iput-object v2, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;
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

    .line 1834
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1835
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1832
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1837
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1838
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->makeExtensionsImmutable()V

    .line 1839
    throw p1

    .line 1837
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1838
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1766
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Facebook;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1773
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1946
    iput-byte p1, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 1766
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .line 1766
    sget-boolean v0, Lcom/appodeal/ads/api/Services$Facebook;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/appodeal/ads/api/Services$Facebook;)Ljava/lang/Object;
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/appodeal/ads/api/Services$Facebook;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1766
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/appodeal/ads/api/Services$Facebook;)Ljava/lang/Object;
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/appodeal/ads/api/Services$Facebook;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1766
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 1766
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1766
    invoke-static {p0}, Lcom/appodeal/ads/api/Services$Facebook;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1766
    invoke-static {p0}, Lcom/appodeal/ads/api/Services$Facebook;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1

    .line 2479
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Facebook;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1843
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Facebook_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2093
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Facebook;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Facebook;->toBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2096
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Facebook;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Facebook;->toBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2066
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2067
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2074
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2034
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2040
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2079
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2080
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2086
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2087
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2054
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2055
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2061
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2062
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2023
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2029
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2044
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2050
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Facebook;",
            ">;"
        }
    .end annotation

    .line 2494
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1991
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Services$Facebook;

    if-nez v1, :cond_1

    .line 1992
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1994
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Services$Facebook;

    .line 1996
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1997
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Facebook;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1998
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 1999
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Facebook;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 2000
    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .line 1912
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    .line 1913
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1914
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1916
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1918
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1919
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1934
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    .line 1935
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1936
    check-cast v0, Ljava/lang/String;

    .line 1937
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1939
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    return-object v0

    .line 1942
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1

    .line 2504
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Facebook;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1766
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1766
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Facebook;",
            ">;"
        }
    .end annotation

    .line 2499
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1971
    iget v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1975
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getUserIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1976
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1978
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getAppIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 1979
    iget-object v2, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1981
    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1982
    iput v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .line 1866
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    .line 1867
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1868
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1870
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1872
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1873
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1888
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    .line 1889
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1890
    check-cast v0, Ljava/lang/String;

    .line 1891
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1893
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    return-object v0

    .line 1896
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2006
    iget v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2007
    iget v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedHashCode:I

    return v0

    .line 2010
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2012
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2014
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 2015
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2016
    iput v1, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1849
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Facebook_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services$Facebook;

    const-class v2, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    .line 1850
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1949
    iget-byte v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1953
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Services$Facebook;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 2091
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->newBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 2

    .line 2107
    new-instance v0, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1766
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->newBuilderForType()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1766
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Facebook;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1766
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->newBuilderForType()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1784
    new-instance p1, Lcom/appodeal/ads/api/Services$Facebook;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Services$Facebook;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 2

    .line 2100
    sget-object v0, Lcom/appodeal/ads/api/Services$Facebook;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Facebook;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2101
    new-instance v0, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1766
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->toBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1766
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->toBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;

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

    .line 1960
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getUserIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1961
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Facebook;->userId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1963
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Facebook;->getAppIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1964
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Facebook;->appId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1966
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Facebook;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
