.class public final Lcom/appodeal/ads/api/App;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "App.java"

# interfaces
.implements Lcom/appodeal/ads/api/AppOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/App$Builder;
    }
.end annotation


# static fields
.field public static final ACTIVE_APP_UPTIME_FIELD_NUMBER:I = 0xe

.field public static final APP_KEY_FIELD_NUMBER:I = 0x7

.field public static final APP_UPTIME_FIELD_NUMBER:I = 0xa

.field public static final BUNDLE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/App;

.field public static final FRAMEWORK_FIELD_NUMBER:I = 0xb

.field public static final FRAMEWORK_VERSION_FIELD_NUMBER:I = 0xc

.field public static final INSTALLER_FIELD_NUMBER:I = 0x5

.field public static final INSTALL_TIME_FIELD_NUMBER:I = 0x3

.field public static final MONOTONIC_APP_UPTIME_FIELD_NUMBER:I = 0xd

.field public static final MULTIDEX_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/App;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLUGIN_VERSION_FIELD_NUMBER:I = 0x4

.field public static final SDK_FIELD_NUMBER:I = 0x8

.field public static final VERSION_CODE_FIELD_NUMBER:I = 0x9

.field public static final VER_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private activeAppUptime_:J

.field private volatile appKey_:Ljava/lang/Object;

.field private appUptime_:J

.field private volatile bundle_:Ljava/lang/Object;

.field private volatile frameworkVersion_:Ljava/lang/Object;

.field private volatile framework_:Ljava/lang/Object;

.field private installTime_:J

.field private volatile installer_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private monotonicAppUptime_:J

.field private multidex_:Z

.field private volatile pluginVersion_:Ljava/lang/Object;

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile ver_:Ljava/lang/Object;

.field private versionCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2207
    new-instance v0, Lcom/appodeal/ads/api/App;

    invoke-direct {v0}, Lcom/appodeal/ads/api/App;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/App;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/App;

    .line 2215
    new-instance v0, Lcom/appodeal/ads/api/App$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/App$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 631
    iput-byte v0, p0, Lcom/appodeal/ads/api/App;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/appodeal/ads/api/App;-><init>()V

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 142
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/App;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 138
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/App;->activeAppUptime_:J

    goto :goto_0

    .line 133
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/App;->monotonicAppUptime_:J

    goto :goto_0

    .line 126
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 128
    iput-object v2, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 120
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 122
    iput-object v2, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    goto :goto_0

    .line 116
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/App;->appUptime_:J

    goto :goto_0

    .line 111
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/App;->versionCode_:I

    goto :goto_0

    .line 104
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 106
    iput-object v2, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    goto :goto_0

    .line 98
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 100
    iput-object v2, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    goto :goto_0

    .line 94
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appodeal/ads/api/App;->multidex_:Z

    goto :goto_0

    .line 87
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 89
    iput-object v2, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    goto :goto_0

    .line 81
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 83
    iput-object v2, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 77
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/App;->installTime_:J

    goto :goto_0

    .line 70
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 72
    iput-object v2, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 66
    iput-object v2, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_e
    move v1, v3

    goto :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 153
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 154
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 151
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 157
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->makeExtensionsImmutable()V

    .line 158
    throw p1

    .line 156
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 157
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x18 -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x30 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x48 -> :sswitch_5
        0x50 -> :sswitch_4
        0x5a -> :sswitch_3
        0x62 -> :sswitch_2
        0x68 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/App$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/App;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 631
    iput-byte p1, p0, Lcom/appodeal/ads/api/App;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/App$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/App;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/appodeal/ads/api/App;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/App;->versionCode_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/appodeal/ads/api/App;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/App;->appUptime_:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/appodeal/ads/api/App;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/App;->monotonicAppUptime_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/appodeal/ads/api/App;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/App;->activeAppUptime_:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/appodeal/ads/api/App;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/App;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/App;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/App;->installTime_:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/appodeal/ads/api/App;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/App;->multidex_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/App;
    .locals 1

    .line 2211
    sget-object v0, Lcom/appodeal/ads/api/App;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/App;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 162
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 909
    sget-object v0, Lcom/appodeal/ads/api/App;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/App;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->toBuilder()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 912
    sget-object v0, Lcom/appodeal/ads/api/App;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/App;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->toBuilder()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 883
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 890
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 850
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 856
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 896
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 903
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 871
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 878
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 839
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 845
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 860
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 866
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/App;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/App;",
            ">;"
        }
    .end annotation

    .line 2226
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 754
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/App;

    if-nez v1, :cond_1

    .line 755
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 757
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/App;

    .line 759
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getBundle()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getBundle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 761
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getVer()Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 763
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getInstallTime()J

    move-result-wide v3

    .line 764
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getInstallTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 765
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getPluginVersion()Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getPluginVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 767
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getInstaller()Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getInstaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 769
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getMultidex()Z

    move-result v1

    .line 770
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getMultidex()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 771
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 773
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getSdk()Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 775
    :cond_9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getVersionCode()I

    move-result v1

    .line 776
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getVersionCode()I

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    .line 777
    :cond_a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getAppUptime()J

    move-result-wide v3

    .line 778
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getAppUptime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    .line 779
    :cond_b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getFramework()Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getFramework()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 781
    :cond_c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    .line 782
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 783
    :cond_d
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getMonotonicAppUptime()J

    move-result-wide v3

    .line 784
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getMonotonicAppUptime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    .line 785
    :cond_e
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getActiveAppUptime()J

    move-result-wide v3

    .line 786
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getActiveAppUptime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    .line 787
    :cond_f
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public getActiveAppUptime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    iget-wide v0, p0, Lcom/appodeal/ads/api/App;->activeAppUptime_:J

    return-wide v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    .line 400
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 403
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 405
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 406
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppKeyBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    .line 422
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 423
    check-cast v0, Ljava/lang/String;

    .line 424
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 426
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    return-object v0

    .line 429
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAppUptime()J
    .locals 2

    .line 506
    iget-wide v0, p0, Lcom/appodeal/ads/api/App;->appUptime_:J

    return-wide v0
.end method

.method public getBundle()Ljava/lang/String;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    .line 186
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 189
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 191
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    .line 208
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 209
    check-cast v0, Ljava/lang/String;

    .line 210
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 215
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/App;
    .locals 1

    .line 2236
    sget-object v0, Lcom/appodeal/ads/api/App;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/App;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getDefaultInstanceForType()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getDefaultInstanceForType()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public getFramework()Ljava/lang/String;
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    .line 522
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 523
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 525
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 527
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 528
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFrameworkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    .line 544
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 545
    check-cast v0, Ljava/lang/String;

    .line 546
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 548
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    return-object v0

    .line 551
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    .line 568
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 569
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 571
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 573
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 574
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFrameworkVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    .line 590
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 591
    check-cast v0, Ljava/lang/String;

    .line 592
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 594
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    return-object v0

    .line 597
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInstallTime()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/appodeal/ads/api/App;->installTime_:J

    return-wide v0
.end method

.method public getInstaller()Ljava/lang/String;
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    .line 339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 340
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 342
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 344
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 345
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    return-object v0
.end method

.method public getInstallerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    .line 361
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 362
    check-cast v0, Ljava/lang/String;

    .line 363
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 365
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    return-object v0

    .line 368
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMonotonicAppUptime()J
    .locals 2

    .line 613
    iget-wide v0, p0, Lcom/appodeal/ads/api/App;->monotonicAppUptime_:J

    return-wide v0
.end method

.method public getMultidex()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    iget-boolean v0, p0, Lcom/appodeal/ads/api/App;->multidex_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/App;",
            ">;"
        }
    .end annotation

    .line 2231
    sget-object v0, Lcom/appodeal/ads/api/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    .line 293
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 294
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 296
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 298
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 299
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPluginVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    .line 315
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 316
    check-cast v0, Ljava/lang/String;

    .line 317
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 319
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    return-object v0

    .line 322
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    .line 446
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 447
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 449
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 451
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 452
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    .line 468
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 469
    check-cast v0, Ljava/lang/String;

    .line 470
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 472
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 475
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 692
    iget v0, p0, Lcom/appodeal/ads/api/App;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 697
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 699
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 700
    iget-object v2, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 702
    :cond_2
    iget-wide v1, p0, Lcom/appodeal/ads/api/App;->installTime_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    .line 704
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 706
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getPluginVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 707
    iget-object v2, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getInstallerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 710
    iget-object v2, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    :cond_5
    iget-boolean v1, p0, Lcom/appodeal/ads/api/App;->multidex_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 714
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 716
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getAppKeyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 717
    iget-object v2, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 719
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 720
    iget-object v2, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    :cond_8
    iget v1, p0, Lcom/appodeal/ads/api/App;->versionCode_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 724
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    :cond_9
    iget-wide v1, p0, Lcom/appodeal/ads/api/App;->appUptime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 728
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getFrameworkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 731
    iget-object v2, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 733
    :cond_b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getFrameworkVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xc

    .line 734
    iget-object v2, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 736
    :cond_c
    iget-wide v1, p0, Lcom/appodeal/ads/api/App;->monotonicAppUptime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    const/16 v5, 0xd

    .line 738
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 740
    :cond_d
    iget-wide v1, p0, Lcom/appodeal/ads/api/App;->activeAppUptime_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_e

    const/16 v3, 0xe

    .line 742
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 744
    :cond_e
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 745
    iput v0, p0, Lcom/appodeal/ads/api/App;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    .line 232
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 233
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 235
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 237
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 238
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    .line 254
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 255
    check-cast v0, Ljava/lang/String;

    .line 256
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 258
    iput-object v0, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    return-object v0

    .line 261
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/appodeal/ads/api/App;->versionCode_:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 793
    iget v0, p0, Lcom/appodeal/ads/api/App;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 794
    iget v0, p0, Lcom/appodeal/ads/api/App;->memoizedHashCode:I

    return v0

    .line 797
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 799
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 801
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 804
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getInstallTime()J

    move-result-wide v2

    .line 803
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 806
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 808
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getInstaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 811
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getMultidex()Z

    move-result v0

    .line 810
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 813
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 815
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 817
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getVersionCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 820
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getAppUptime()J

    move-result-wide v2

    .line 819
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 822
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getFramework()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 824
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 827
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getMonotonicAppUptime()J

    move-result-wide v2

    .line 826
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 830
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getActiveAppUptime()J

    move-result-wide v2

    .line 829
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 831
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 832
    iput v1, p0, Lcom/appodeal/ads/api/App;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 168
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/App;

    const-class v2, Lcom/appodeal/ads/api/App$Builder;

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 634
    iget-byte v0, p0, Lcom/appodeal/ads/api/App;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 638
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/App;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 907
    invoke-static {}, Lcom/appodeal/ads/api/App;->newBuilder()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/App$Builder;
    .locals 2

    .line 923
    new-instance v0, Lcom/appodeal/ads/api/App$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/App$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/App$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->newBuilderForType()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->newBuilderForType()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 37
    new-instance p1, Lcom/appodeal/ads/api/App;

    invoke-direct {p1}, Lcom/appodeal/ads/api/App;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/App$Builder;
    .locals 2

    .line 916
    sget-object v0, Lcom/appodeal/ads/api/App;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/App;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 917
    new-instance v0, Lcom/appodeal/ads/api/App$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/App$Builder;-><init>(Lcom/appodeal/ads/api/App$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/App$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/App$Builder;-><init>(Lcom/appodeal/ads/api/App$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->toBuilder()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->toBuilder()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 646
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->bundle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 649
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->ver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 651
    :cond_1
    iget-wide v0, p0, Lcom/appodeal/ads/api/App;->installTime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 652
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 654
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getPluginVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 655
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->pluginVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 657
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getInstallerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 658
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->installer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 660
    :cond_4
    iget-boolean v0, p0, Lcom/appodeal/ads/api/App;->multidex_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 661
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 663
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getAppKeyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 664
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->appKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 666
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 667
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->sdk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 669
    :cond_7
    iget v0, p0, Lcom/appodeal/ads/api/App;->versionCode_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 670
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 672
    :cond_8
    iget-wide v0, p0, Lcom/appodeal/ads/api/App;->appUptime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 673
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 675
    :cond_9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getFrameworkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 676
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->framework_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 678
    :cond_a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App;->getFrameworkVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 679
    iget-object v1, p0, Lcom/appodeal/ads/api/App;->frameworkVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 681
    :cond_b
    iget-wide v0, p0, Lcom/appodeal/ads/api/App;->monotonicAppUptime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    .line 682
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 684
    :cond_c
    iget-wide v0, p0, Lcom/appodeal/ads/api/App;->activeAppUptime_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    .line 685
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 687
    :cond_d
    iget-object v0, p0, Lcom/appodeal/ads/api/App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
