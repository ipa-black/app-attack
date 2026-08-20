.class public final Lcom/appodeal/ads/api/Services$Appsflyer;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Appsflyer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_ID_FIELD_NUMBER:I = 0x1

.field public static final CONVERSION_DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Appsflyer;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Appsflyer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile attributionId_:Ljava/lang/Object;

.field private volatile conversionData_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 895
    new-instance v0, Lcom/appodeal/ads/api/Services$Appsflyer;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$Appsflyer;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 903
    new-instance v0, Lcom/appodeal/ads/api/Services$Appsflyer$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$Appsflyer$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 366
    iput-byte v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedIsInitialized:B

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    .line 197
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;-><init>()V

    .line 218
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 225
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 243
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Services$Appsflyer;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 239
    iput-object v2, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 233
    iput-object v2, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;
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

    .line 254
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 255
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 252
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 258
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->makeExtensionsImmutable()V

    .line 259
    throw p1

    .line 257
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 258
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 193
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 366
    iput-byte p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 186
    sget-boolean v0, Lcom/appodeal/ads/api/Services$Appsflyer;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/appodeal/ads/api/Services$Appsflyer;)Ljava/lang/Object;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Services$Appsflyer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/appodeal/ads/api/Services$Appsflyer;)Ljava/lang/Object;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Services$Appsflyer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 186
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1

    .line 899
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 263
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Appsflyer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 513
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Appsflyer;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Appsflyer;->toBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 516
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Appsflyer;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Appsflyer;->toBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 487
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 494
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 500
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 507
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 475
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 482
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 464
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 470
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Appsflyer;",
            ">;"
        }
    .end annotation

    .line 914
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 411
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Services$Appsflyer;

    if-nez v1, :cond_1

    .line 412
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 414
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 416
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getAttributionId()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->getAttributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getConversionData()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->getConversionData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 420
    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    .line 287
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 290
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 292
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 293
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAttributionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    .line 309
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 310
    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 313
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    return-object v0

    .line 316
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConversionData()Ljava/lang/String;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    .line 333
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 334
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 336
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 338
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 339
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    return-object v0
.end method

.method public getConversionDataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    .line 355
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 356
    check-cast v0, Ljava/lang/String;

    .line 357
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 359
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    return-object v0

    .line 362
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1

    .line 924
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Appsflyer;",
            ">;"
        }
    .end annotation

    .line 919
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 391
    iget v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getAttributionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 396
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 398
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getConversionDataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 399
    iget-object v2, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    iput v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 426
    iget v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 427
    iget v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedHashCode:I

    return v0

    .line 430
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 432
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 434
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getConversionData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 435
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 436
    iput v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 269
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Appsflyer_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services$Appsflyer;

    const-class v2, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 369
    iget-byte v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 373
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 511
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->newBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 2

    .line 527
    new-instance v0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->newBuilderForType()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->newBuilderForType()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 204
    new-instance p1, Lcom/appodeal/ads/api/Services$Appsflyer;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 2

    .line 520
    sget-object v0, Lcom/appodeal/ads/api/Services$Appsflyer;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Appsflyer;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 521
    new-instance v0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->toBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->toBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

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

    .line 380
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getAttributionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 381
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->attributionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getConversionDataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 384
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->conversionData_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
