.class public final Lcom/appodeal/ads/api/User;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "User.java"

# interfaces
.implements Lcom/appodeal/ads/api/UserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/User$Builder;
    }
.end annotation


# static fields
.field public static final CONSENT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/User;

.field public static final IAB_CONSENT_DATA_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/User;",
            ">;"
        }
    .end annotation
.end field

.field public static final USERSETTINGS_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private consent_:Z

.field private volatile iabConsentData_:Ljava/lang/Object;

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private userSettings_:Lcom/appodeal/ads/api/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1043
    new-instance v0, Lcom/appodeal/ads/api/User;

    invoke-direct {v0}, Lcom/appodeal/ads/api/User;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/User;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/User;

    .line 1051
    new-instance v0, Lcom/appodeal/ads/api/User$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/User$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 264
    iput-byte v0, p0, Lcom/appodeal/ads/api/User;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/appodeal/ads/api/User;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/16 v4, 0x12

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 88
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/User;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 84
    iput-object v2, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 78
    iput-object v2, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_3
    iget-object v2, p0, Lcom/appodeal/ads/api/User;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-eqz v2, :cond_4

    .line 65
    invoke-virtual {v2}, Lcom/appodeal/ads/api/UserSettings;->toBuilder()Lcom/appodeal/ads/api/UserSettings$Builder;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 67
    :goto_1
    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/api/UserSettings;

    iput-object v3, p0, Lcom/appodeal/ads/api/User;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v2, v3}, Lcom/appodeal/ads/api/UserSettings$Builder;->mergeFrom(Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings$Builder;

    .line 70
    invoke-virtual {v2}, Lcom/appodeal/ads/api/UserSettings$Builder;->buildPartial()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/User;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    goto :goto_0

    .line 59
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appodeal/ads/api/User;->consent_:Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_2
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 99
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 100
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 97
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 103
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->makeExtensionsImmutable()V

    .line 104
    throw p1

    .line 102
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 103
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/User$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/User;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 264
    iput-byte p1, p0, Lcom/appodeal/ads/api/User;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/User$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/User;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

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
    invoke-static {p0}, Lcom/appodeal/ads/api/User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

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
    invoke-static {p0}, Lcom/appodeal/ads/api/User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/User;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/User;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/User;->consent_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/User;Lcom/appodeal/ads/api/UserSettings;)Lcom/appodeal/ads/api/UserSettings;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/User;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    return-object p1
.end method

.method static synthetic access$600(Lcom/appodeal/ads/api/User;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/appodeal/ads/api/User;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/appodeal/ads/api/User;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/User;
    .locals 1

    .line 1047
    sget-object v0, Lcom/appodeal/ads/api/User;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/User;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 108
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 439
    sget-object v0, Lcom/appodeal/ads/api/User;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/User;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/User;->toBuilder()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 442
    sget-object v0, Lcom/appodeal/ads/api/User;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/User;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/User;->toBuilder()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 413
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 420
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 426
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 433
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 401
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 408
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/User;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/User;",
            ">;"
        }
    .end annotation

    .line 1062
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 323
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/User;

    if-nez v1, :cond_1

    .line 324
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 326
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/User;

    .line 328
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getConsent()Z

    move-result v1

    .line 329
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getConsent()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->hasUserSettings()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->hasUserSettings()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 331
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->hasUserSettings()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getUserSettings()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v1

    .line 333
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getUserSettings()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/UserSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 337
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getIabConsentData()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Lcom/appodeal/ads/api/User;->getIabConsentData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 339
    :cond_6
    iget-object v1, p0, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method public getConsent()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/appodeal/ads/api/User;->consent_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/User;
    .locals 1

    .line 1072
    sget-object v0, Lcom/appodeal/ads/api/User;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/User;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getDefaultInstanceForType()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getDefaultInstanceForType()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public getIabConsentData()Ljava/lang/String;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    .line 231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 234
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 236
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 237
    iput-object v0, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIabConsentDataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    .line 253
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Ljava/lang/String;

    .line 255
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 257
    iput-object v0, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    return-object v0

    .line 260
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    .line 185
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 188
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 190
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    .line 207
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 208
    check-cast v0, Ljava/lang/String;

    .line 209
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 211
    iput-object v0, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    return-object v0

    .line 214
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
            "Lcom/appodeal/ads/api/User;",
            ">;"
        }
    .end annotation

    .line 1067
    sget-object v0, Lcom/appodeal/ads/api/User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 295
    iget v0, p0, Lcom/appodeal/ads/api/User;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/api/User;->consent_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 301
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/api/User;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 305
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getUserSettings()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 308
    iget-object v2, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getIabConsentDataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 311
    iget-object v2, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    iput v0, p0, Lcom/appodeal/ads/api/User;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserSettings()Lcom/appodeal/ads/api/UserSettings;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/UserSettings;->getDefaultInstance()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserSettingsOrBuilder()Lcom/appodeal/ads/api/UserSettingsOrBuilder;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getUserSettings()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public hasUserSettings()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 345
    iget v0, p0, Lcom/appodeal/ads/api/User;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 346
    iget v0, p0, Lcom/appodeal/ads/api/User;->memoizedHashCode:I

    return v0

    .line 349
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/User;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 352
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getConsent()Z

    move-result v0

    .line 351
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 353
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->hasUserSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 355
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getUserSettings()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/UserSettings;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 358
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 360
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getIabConsentData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 361
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 362
    iput v1, p0, Lcom/appodeal/ads/api/User;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 114
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/User;

    const-class v2, Lcom/appodeal/ads/api/User$Builder;

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 267
    iget-byte v0, p0, Lcom/appodeal/ads/api/User;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 271
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/User;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/User$Builder;
    .locals 1

    .line 437
    invoke-static {}, Lcom/appodeal/ads/api/User;->newBuilder()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/User$Builder;
    .locals 2

    .line 453
    new-instance v0, Lcom/appodeal/ads/api/User$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/User$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/User$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->newBuilderForType()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/User;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->newBuilderForType()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 31
    new-instance p1, Lcom/appodeal/ads/api/User;

    invoke-direct {p1}, Lcom/appodeal/ads/api/User;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/User$Builder;
    .locals 2

    .line 446
    sget-object v0, Lcom/appodeal/ads/api/User;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/User;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 447
    new-instance v0, Lcom/appodeal/ads/api/User$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/User$Builder;-><init>(Lcom/appodeal/ads/api/User$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/User$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/User$Builder;-><init>(Lcom/appodeal/ads/api/User$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->toBuilder()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->toBuilder()Lcom/appodeal/ads/api/User$Builder;

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

    .line 278
    iget-boolean v0, p0, Lcom/appodeal/ads/api/User;->consent_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 279
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->userSettings_:Lcom/appodeal/ads/api/UserSettings;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 282
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getUserSettings()Lcom/appodeal/ads/api/UserSettings;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 285
    iget-object v1, p0, Lcom/appodeal/ads/api/User;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/User;->getIabConsentDataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 288
    iget-object v1, p0, Lcom/appodeal/ads/api/User;->iabConsentData_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/api/User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
