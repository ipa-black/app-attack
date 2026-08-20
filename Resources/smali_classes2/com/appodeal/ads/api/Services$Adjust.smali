.class public final Lcom/appodeal/ads/api/Services$Adjust;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/Services$AdjustOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adjust"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Services$Adjust$Builder;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_ID_FIELD_NUMBER:I = 0x1

.field public static final CONVERSION_DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Adjust;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Adjust;",
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

    .line 1685
    new-instance v0, Lcom/appodeal/ads/api/Services$Adjust;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$Adjust;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services$Adjust;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Adjust;

    .line 1693
    new-instance v0, Lcom/appodeal/ads/api/Services$Adjust$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Services$Adjust$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 985
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1156
    iput-byte v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedIsInitialized:B

    .line 986
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    .line 987
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1006
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Adjust;-><init>()V

    .line 1008
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 1015
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 1033
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Services$Adjust;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1027
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1029
    iput-object v2, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    goto :goto_0

    .line 1021
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1023
    iput-object v2, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;
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

    .line 1044
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1045
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1042
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1048
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->makeExtensionsImmutable()V

    .line 1049
    throw p1

    .line 1047
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1048
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 976
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 983
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1156
    iput-byte p1, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 976
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 976
    sget-boolean v0, Lcom/appodeal/ads/api/Services$Adjust;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/appodeal/ads/api/Services$Adjust;)Ljava/lang/Object;
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/appodeal/ads/api/Services$Adjust;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/appodeal/ads/api/Services$Adjust;)Ljava/lang/Object;
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/appodeal/ads/api/Services$Adjust;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 976
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 976
    invoke-static {p0}, Lcom/appodeal/ads/api/Services$Adjust;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 976
    invoke-static {p0}, Lcom/appodeal/ads/api/Services$Adjust;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1

    .line 1689
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Adjust;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1053
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Adjust_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1303
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Adjust;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Adjust;->toBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1306
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Adjust;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Adjust;->toBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1276
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1277
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1284
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1244
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1250
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1290
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1296
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1297
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1264
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1265
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1272
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1233
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1239
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1254
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1260
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Adjust;",
            ">;"
        }
    .end annotation

    .line 1704
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1201
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Services$Adjust;

    if-nez v1, :cond_1

    .line 1202
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1204
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust;

    .line 1206
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getAttributionId()Ljava/lang/String;

    move-result-object v1

    .line 1207
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Adjust;->getAttributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1208
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getConversionData()Ljava/lang/String;

    move-result-object v1

    .line 1209
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Adjust;->getConversionData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1210
    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    .line 1077
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1078
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1080
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1082
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1083
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAttributionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    .line 1099
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1100
    check-cast v0, Ljava/lang/String;

    .line 1101
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1103
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    return-object v0

    .line 1106
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConversionData()Ljava/lang/String;
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    .line 1123
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1124
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1126
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1128
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1129
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    return-object v0
.end method

.method public getConversionDataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1144
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    .line 1145
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1146
    check-cast v0, Ljava/lang/String;

    .line 1147
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1149
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    return-object v0

    .line 1152
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1

    .line 1714
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Adjust;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Services$Adjust;",
            ">;"
        }
    .end annotation

    .line 1709
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1181
    iget v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1185
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getAttributionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1186
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1188
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getConversionDataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 1189
    iget-object v2, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1191
    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1192
    iput v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1216
    iget v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1217
    iget v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedHashCode:I

    return v0

    .line 1220
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1222
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1224
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getConversionData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1225
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1226
    iput v1, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1059
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Adjust_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services$Adjust;

    const-class v2, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    .line 1060
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1159
    iget-byte v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1163
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Services$Adjust;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1301
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->newBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 2

    .line 1317
    new-instance v0, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->newBuilderForType()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 976
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->newBuilderForType()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 994
    new-instance p1, Lcom/appodeal/ads/api/Services$Adjust;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Services$Adjust;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 2

    .line 1310
    sget-object v0, Lcom/appodeal/ads/api/Services$Adjust;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Services$Adjust;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1311
    new-instance v0, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;-><init>(Lcom/appodeal/ads/api/Services$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->toBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->toBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;

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

    .line 1170
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getAttributionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1171
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Adjust;->attributionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1173
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust;->getConversionDataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1174
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Adjust;->conversionData_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
