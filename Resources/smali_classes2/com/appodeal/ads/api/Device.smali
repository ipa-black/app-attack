.class public final Lcom/appodeal/ads/api/Device;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Device.java"

# interfaces
.implements Lcom/appodeal/ads/api/DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Device$Builder;,
        Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;,
        Lcom/appodeal/ads/api/Device$DeviceType;,
        Lcom/appodeal/ads/api/Device$ConnectionType;
    }
.end annotation


# static fields
.field public static final ADIDG_FIELD_NUMBER:I = 0x12

.field public static final BATTERY_FIELD_NUMBER:I = 0xc

.field public static final CONNECTIONTYPE_FIELD_NUMBER:I = 0xf

.field public static final CPU_USAGE_FIELD_NUMBER:I = 0x1b

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Device;

.field public static final DEVICETYPE_FIELD_NUMBER:I = 0x7

.field public static final H_FIELD_NUMBER:I = 0x5

.field public static final IDFV_FIELD_NUMBER:I = 0x14

.field public static final IFA_FIELD_NUMBER:I = 0x10

.field public static final LMT_FIELD_NUMBER:I = 0x11

.field public static final LOCALE_FIELD_NUMBER:I = 0xe

.field public static final MAKE_FIELD_NUMBER:I = 0x8

.field public static final MCCMNC_FIELD_NUMBER:I = 0xd

.field public static final MODEL_FIELD_NUMBER:I = 0x9

.field public static final OSV_FIELD_NUMBER:I = 0x2

.field public static final OS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final PXRATIO_FIELD_NUMBER:I = 0x6

.field public static final RAM_FREE_FIELD_NUMBER:I = 0x19

.field public static final RAM_SIZE_FIELD_NUMBER:I = 0x18

.field public static final RAM_USED_FIELD_NUMBER:I = 0x1a

.field public static final ROOTED_FIELD_NUMBER:I = 0xa

.field public static final SECURE_ANDROID_ID_FIELD_NUMBER:I = 0x1c

.field public static final STORAGE_FREE_FIELD_NUMBER:I = 0x16

.field public static final STORAGE_SIZE_FIELD_NUMBER:I = 0x15

.field public static final STORAGE_USED_FIELD_NUMBER:I = 0x17

.field public static final TRACKING_STATUS_FIELD_NUMBER:I = 0x13

.field public static final UA_FIELD_NUMBER:I = 0x1

.field public static final WEBVIEW_VERSION_FIELD_NUMBER:I = 0xb

.field public static final W_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private adidg_:Z

.field private battery_:I

.field private connectiontype_:I

.field private cpuUsage_:F

.field private devicetype_:I

.field private h_:I

.field private volatile idfv_:Ljava/lang/Object;

.field private volatile ifa_:Ljava/lang/Object;

.field private lmt_:I

.field private volatile locale_:Ljava/lang/Object;

.field private volatile make_:Ljava/lang/Object;

.field private volatile mccmnc_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private volatile os_:Ljava/lang/Object;

.field private volatile osv_:Ljava/lang/Object;

.field private pxratio_:F

.field private ramFree_:J

.field private ramSize_:J

.field private ramUsed_:J

.field private rooted_:Z

.field private volatile secureAndroidId_:Ljava/lang/Object;

.field private storageFree_:J

.field private storageSize_:J

.field private storageUsed_:J

.field private trackingStatus_:I

.field private volatile ua_:Ljava/lang/Object;

.field private w_:I

.field private volatile webviewVersion_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4120
    new-instance v0, Lcom/appodeal/ads/api/Device;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Device;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Device;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Device;

    .line 4128
    new-instance v0, Lcom/appodeal/ads/api/Device$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Device$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1448
    iput-byte v0, p0, Lcom/appodeal/ads/api/Device;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    .line 27
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    .line 32
    iput v1, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    .line 33
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    .line 34
    iput v1, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    .line 35
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    .line 36
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/appodeal/ads/api/Device;-><init>()V

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 224
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Device;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 218
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 220
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    goto :goto_0

    .line 214
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Device;->cpuUsage_:F

    goto :goto_0

    .line 209
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Device;->ramUsed_:J

    goto :goto_0

    .line 204
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Device;->ramFree_:J

    goto :goto_0

    .line 199
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Device;->ramSize_:J

    goto :goto_0

    .line 194
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Device;->storageUsed_:J

    goto :goto_0

    .line 189
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Device;->storageFree_:J

    goto :goto_0

    .line 184
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Device;->storageSize_:J

    goto :goto_0

    .line 177
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 179
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    goto :goto_0

    .line 171
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 173
    iput v2, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    goto :goto_0

    .line 167
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appodeal/ads/api/Device;->adidg_:Z

    goto :goto_0

    .line 162
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Device;->lmt_:I

    goto :goto_0

    .line 155
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 157
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    goto :goto_0

    .line 149
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 151
    iput v2, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    goto :goto_0

    .line 143
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 145
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    goto :goto_0

    .line 137
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 139
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    goto :goto_0

    .line 133
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Device;->battery_:I

    goto/16 :goto_0

    .line 126
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 128
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appodeal/ads/api/Device;->rooted_:Z

    goto/16 :goto_0

    .line 115
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 117
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 109
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 111
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 103
    :sswitch_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 105
    iput v2, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    goto/16 :goto_0

    .line 99
    :sswitch_16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Device;->pxratio_:F

    goto/16 :goto_0

    .line 94
    :sswitch_17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Device;->h_:I

    goto/16 :goto_0

    .line 89
    :sswitch_18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/Device;->w_:I

    goto/16 :goto_0

    .line 82
    :sswitch_19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 84
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 76
    :sswitch_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 78
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :sswitch_1b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 72
    iput-object v2, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1c
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 235
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 236
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 233
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 239
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->makeExtensionsImmutable()V

    .line 240
    throw p1

    .line 238
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 239
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1c
        0xa -> :sswitch_1b
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_19
        0x20 -> :sswitch_18
        0x28 -> :sswitch_17
        0x35 -> :sswitch_16
        0x38 -> :sswitch_15
        0x42 -> :sswitch_14
        0x4a -> :sswitch_13
        0x50 -> :sswitch_12
        0x5a -> :sswitch_11
        0x60 -> :sswitch_10
        0x6a -> :sswitch_f
        0x72 -> :sswitch_e
        0x78 -> :sswitch_d
        0x82 -> :sswitch_c
        0x88 -> :sswitch_b
        0x90 -> :sswitch_a
        0x98 -> :sswitch_9
        0xa2 -> :sswitch_8
        0xa8 -> :sswitch_7
        0xb0 -> :sswitch_6
        0xb8 -> :sswitch_5
        0xc0 -> :sswitch_4
        0xc8 -> :sswitch_3
        0xd0 -> :sswitch_2
        0xdd -> :sswitch_1
        0xe2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Device$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Device;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1448
    iput-byte p1, p0, Lcom/appodeal/ads/api/Device;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Device$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Device;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/appodeal/ads/api/Device;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    return p0
.end method

.method static synthetic access$1002(Lcom/appodeal/ads/api/Device;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    return p1
.end method

.method static synthetic access$1100(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/appodeal/ads/api/Device;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Device;->rooted_:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/appodeal/ads/api/Device;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->battery_:I

    return p1
.end method

.method static synthetic access$1600(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/appodeal/ads/api/Device;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    return p0
.end method

.method static synthetic access$1802(Lcom/appodeal/ads/api/Device;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    return p1
.end method

.method static synthetic access$1900(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Device;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/appodeal/ads/api/Device;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->lmt_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/appodeal/ads/api/Device;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Device;->adidg_:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/appodeal/ads/api/Device;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    return p0
.end method

.method static synthetic access$2202(Lcom/appodeal/ads/api/Device;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    return p1
.end method

.method static synthetic access$2300(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/appodeal/ads/api/Device;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device;->storageSize_:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/appodeal/ads/api/Device;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device;->storageFree_:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/appodeal/ads/api/Device;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device;->storageUsed_:J

    return-wide p1
.end method

.method static synthetic access$2702(Lcom/appodeal/ads/api/Device;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device;->ramSize_:J

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/appodeal/ads/api/Device;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device;->ramFree_:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/appodeal/ads/api/Device;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device;->ramUsed_:J

    return-wide p1
.end method

.method static synthetic access$3002(Lcom/appodeal/ads/api/Device;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->cpuUsage_:F

    return p1
.end method

.method static synthetic access$3100(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/appodeal/ads/api/Device;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3300()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/Device;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->w_:I

    return p1
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/Device;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->h_:I

    return p1
.end method

.method static synthetic access$902(Lcom/appodeal/ads/api/Device;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/Device;->pxratio_:F

    return p1
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Device;
    .locals 1

    .line 4124
    sget-object v0, Lcom/appodeal/ads/api/Device;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Device;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 244
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 1881
    sget-object v0, Lcom/appodeal/ads/api/Device;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Device;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->toBuilder()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 1884
    sget-object v0, Lcom/appodeal/ads/api/Device;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Device;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->toBuilder()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1854
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1855
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1861
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1862
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1822
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1828
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1868
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1874
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1875
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1842
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1843
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1849
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1850
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1811
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1817
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1832
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1838
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Device;",
            ">;"
        }
    .end annotation

    .line 4139
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1666
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Device;

    if-nez v1, :cond_1

    .line 1667
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1669
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Device;

    .line 1671
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getUa()Ljava/lang/String;

    move-result-object v1

    .line 1672
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getUa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1673
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getOsv()Ljava/lang/String;

    move-result-object v1

    .line 1674
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getOsv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1675
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getOs()Ljava/lang/String;

    move-result-object v1

    .line 1676
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getOs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1677
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getW()I

    move-result v1

    .line 1678
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getW()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 1679
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getH()I

    move-result v1

    .line 1680
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getH()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 1681
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getPxratio()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1683
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getPxratio()F

    move-result v3

    .line 1682
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 1684
    :cond_7
    iget v1, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    iget v3, p1, Lcom/appodeal/ads/api/Device;->devicetype_:I

    if-eq v1, v3, :cond_8

    return v2

    .line 1685
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getMake()Ljava/lang/String;

    move-result-object v1

    .line 1686
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getMake()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 1687
    :cond_9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 1688
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 1689
    :cond_a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getRooted()Z

    move-result v1

    .line 1690
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRooted()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 1691
    :cond_b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getWebviewVersion()Ljava/lang/String;

    move-result-object v1

    .line 1692
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getWebviewVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 1693
    :cond_c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getBattery()I

    move-result v1

    .line 1694
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getBattery()I

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 1695
    :cond_d
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getMccmnc()Ljava/lang/String;

    move-result-object v1

    .line 1696
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getMccmnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 1697
    :cond_e
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 1698
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 1699
    :cond_f
    iget v1, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    iget v3, p1, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    if-eq v1, v3, :cond_10

    return v2

    .line 1700
    :cond_10
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getIfa()Ljava/lang/String;

    move-result-object v1

    .line 1701
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getIfa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 1702
    :cond_11
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getLmt()I

    move-result v1

    .line 1703
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getLmt()I

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 1704
    :cond_12
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getAdidg()Z

    move-result v1

    .line 1705
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getAdidg()Z

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    .line 1706
    :cond_13
    iget v1, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    iget v3, p1, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    if-eq v1, v3, :cond_14

    return v2

    .line 1707
    :cond_14
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getIdfv()Ljava/lang/String;

    move-result-object v1

    .line 1708
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getIdfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 1709
    :cond_15
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getStorageSize()J

    move-result-wide v3

    .line 1710
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    .line 1711
    :cond_16
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getStorageFree()J

    move-result-wide v3

    .line 1712
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageFree()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17

    return v2

    .line 1713
    :cond_17
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getStorageUsed()J

    move-result-wide v3

    .line 1714
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageUsed()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_18

    return v2

    .line 1715
    :cond_18
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getRamSize()J

    move-result-wide v3

    .line 1716
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_19

    return v2

    .line 1717
    :cond_19
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getRamFree()J

    move-result-wide v3

    .line 1718
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamFree()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1a

    return v2

    .line 1719
    :cond_1a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getRamUsed()J

    move-result-wide v3

    .line 1720
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamUsed()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1b

    return v2

    .line 1721
    :cond_1b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getCpuUsage()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1723
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getCpuUsage()F

    move-result v3

    .line 1722
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1c

    return v2

    .line 1724
    :cond_1c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getSecureAndroidId()Ljava/lang/String;

    move-result-object v1

    .line 1725
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getSecureAndroidId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    .line 1726
    :cond_1d
    iget-object v1, p0, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public getAdidg()Z
    .locals 1

    .line 1221
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Device;->adidg_:Z

    return v0
.end method

.method public getBattery()I
    .locals 1

    .line 1026
    iget v0, p0, Lcom/appodeal/ads/api/Device;->battery_:I

    return v0
.end method

.method public getConnectiontype()Lcom/appodeal/ads/api/Device$ConnectionType;
    .locals 1

    .line 1144
    iget v0, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Device$ConnectionType;->valueOf(I)Lcom/appodeal/ads/api/Device$ConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1145
    sget-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$ConnectionType;

    :cond_0
    return-object v0
.end method

.method public getConnectiontypeValue()I
    .locals 1

    .line 1132
    iget v0, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    return v0
.end method

.method public getCpuUsage()F
    .locals 1

    .line 1399
    iget v0, p0, Lcom/appodeal/ads/api/Device;->cpuUsage_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Device;
    .locals 1

    .line 4149
    sget-object v0, Lcom/appodeal/ads/api/Device;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Device;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDevicetype()Lcom/appodeal/ads/api/Device$DeviceType;
    .locals 1

    .line 857
    iget v0, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Device$DeviceType;->valueOf(I)Lcom/appodeal/ads/api/Device$DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 858
    sget-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$DeviceType;

    :cond_0
    return-object v0
.end method

.method public getDevicetypeValue()I
    .locals 1

    .line 845
    iget v0, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    return v0
.end method

.method public getH()I
    .locals 1

    .line 816
    iget v0, p0, Lcom/appodeal/ads/api/Device;->h_:I

    return v0
.end method

.method public getIdfv()Ljava/lang/String;
    .locals 2

    .line 1263
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    .line 1264
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1265
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1267
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1269
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1270
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    .line 1286
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1287
    check-cast v0, Ljava/lang/String;

    .line 1288
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1290
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    return-object v0

    .line 1293
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    .line 1161
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1162
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1164
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1167
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    .line 1183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1184
    check-cast v0, Ljava/lang/String;

    .line 1185
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1187
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 1190
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getLmt()I
    .locals 1

    .line 1206
    iget v0, p0, Lcom/appodeal/ads/api/Device;->lmt_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    .line 1088
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1089
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1091
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1093
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1094
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocaleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    .line 1110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1111
    check-cast v0, Ljava/lang/String;

    .line 1112
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1114
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    return-object v0

    .line 1117
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    .line 874
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 875
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 877
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 879
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 880
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    .line 896
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 897
    check-cast v0, Ljava/lang/String;

    .line 898
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 900
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    return-object v0

    .line 903
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMccmnc()Ljava/lang/String;
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    .line 1042
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1043
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1045
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1047
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1048
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMccmncBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    .line 1064
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1065
    check-cast v0, Ljava/lang/String;

    .line 1066
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1068
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    return-object v0

    .line 1071
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 919
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    .line 920
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 921
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 923
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 925
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 926
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    return-object v0
.end method

.method public getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    .line 942
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 943
    check-cast v0, Ljava/lang/String;

    .line 944
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 946
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    return-object v0

    .line 949
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    .line 756
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 757
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 759
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 761
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 762
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    .line 778
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 779
    check-cast v0, Ljava/lang/String;

    .line 780
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 782
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    return-object v0

    .line 785
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    .line 710
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 711
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 713
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 715
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 716
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    .line 732
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 733
    check-cast v0, Ljava/lang/String;

    .line 734
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 736
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    return-object v0

    .line 739
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
            "Lcom/appodeal/ads/api/Device;",
            ">;"
        }
    .end annotation

    .line 4144
    sget-object v0, Lcom/appodeal/ads/api/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPxratio()F
    .locals 1

    .line 831
    iget v0, p0, Lcom/appodeal/ads/api/Device;->pxratio_:F

    return v0
.end method

.method public getRamFree()J
    .locals 2

    .line 1369
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device;->ramFree_:J

    return-wide v0
.end method

.method public getRamSize()J
    .locals 2

    .line 1354
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device;->ramSize_:J

    return-wide v0
.end method

.method public getRamUsed()J
    .locals 2

    .line 1384
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device;->ramUsed_:J

    return-wide v0
.end method

.method public getRooted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 965
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Device;->rooted_:Z

    return v0
.end method

.method public getSecureAndroidId()Ljava/lang/String;
    .locals 2

    .line 1414
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    .line 1415
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1416
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1418
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1420
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1421
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecureAndroidIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1436
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    .line 1437
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1438
    check-cast v0, Ljava/lang/String;

    .line 1439
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1441
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    return-object v0

    .line 1444
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1551
    iget v0, p0, Lcom/appodeal/ads/api/Device;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1555
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getUaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1556
    iget-object v1, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1558
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 1559
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1561
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getOsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 1562
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1564
    :cond_3
    iget v1, p0, Lcom/appodeal/ads/api/Device;->w_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 1566
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1568
    :cond_4
    iget v1, p0, Lcom/appodeal/ads/api/Device;->h_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 1570
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1572
    :cond_5
    iget v1, p0, Lcom/appodeal/ads/api/Device;->pxratio_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    .line 1574
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1576
    :cond_6
    iget v1, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    sget-object v3, Lcom/appodeal/ads/api/Device$DeviceType;->DEVICETYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$DeviceType;

    invoke-virtual {v3}, Lcom/appodeal/ads/api/Device$DeviceType;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_7

    const/4 v1, 0x7

    .line 1577
    iget v3, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    .line 1578
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1580
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 1581
    iget-object v3, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1583
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 1584
    iget-object v3, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1586
    :cond_9
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Device;->rooted_:Z

    if-eqz v1, :cond_a

    const/16 v3, 0xa

    .line 1588
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1590
    :cond_a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getWebviewVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 1591
    iget-object v3, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1593
    :cond_b
    iget v1, p0, Lcom/appodeal/ads/api/Device;->battery_:I

    if-eqz v1, :cond_c

    const/16 v3, 0xc

    .line 1595
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1597
    :cond_c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getMccmncBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xd

    .line 1598
    iget-object v3, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1600
    :cond_d
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getLocaleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 1601
    iget-object v3, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    :cond_e
    iget v1, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    sget-object v3, Lcom/appodeal/ads/api/Device$ConnectionType;->CONNECTIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

    invoke-virtual {v3}, Lcom/appodeal/ads/api/Device$ConnectionType;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_f

    const/16 v1, 0xf

    .line 1604
    iget v3, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    .line 1605
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1607
    :cond_f
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x10

    .line 1608
    iget-object v3, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1610
    :cond_10
    iget v1, p0, Lcom/appodeal/ads/api/Device;->lmt_:I

    if-eqz v1, :cond_11

    const/16 v3, 0x11

    .line 1612
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1614
    :cond_11
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Device;->adidg_:Z

    if-eqz v1, :cond_12

    const/16 v3, 0x12

    .line 1616
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1618
    :cond_12
    iget v1, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    sget-object v3, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->NOT_DETERMINED:Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;

    invoke-virtual {v3}, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_13

    const/16 v1, 0x13

    .line 1619
    iget v3, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    .line 1620
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1622
    :cond_13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getIdfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0x14

    .line 1623
    iget-object v3, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1625
    :cond_14
    iget-wide v3, p0, Lcom/appodeal/ads/api/Device;->storageSize_:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    const/16 v1, 0x15

    .line 1627
    invoke-static {v1, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1629
    :cond_15
    iget-wide v3, p0, Lcom/appodeal/ads/api/Device;->storageFree_:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    const/16 v1, 0x16

    .line 1631
    invoke-static {v1, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1633
    :cond_16
    iget-wide v3, p0, Lcom/appodeal/ads/api/Device;->storageUsed_:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17

    const/16 v1, 0x17

    .line 1635
    invoke-static {v1, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1637
    :cond_17
    iget-wide v3, p0, Lcom/appodeal/ads/api/Device;->ramSize_:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_18

    const/16 v1, 0x18

    .line 1639
    invoke-static {v1, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1641
    :cond_18
    iget-wide v3, p0, Lcom/appodeal/ads/api/Device;->ramFree_:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_19

    const/16 v1, 0x19

    .line 1643
    invoke-static {v1, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1645
    :cond_19
    iget-wide v3, p0, Lcom/appodeal/ads/api/Device;->ramUsed_:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1a

    const/16 v1, 0x1a

    .line 1647
    invoke-static {v1, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1649
    :cond_1a
    iget v1, p0, Lcom/appodeal/ads/api/Device;->cpuUsage_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1b

    const/16 v2, 0x1b

    .line 1651
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1653
    :cond_1b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getSecureAndroidIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const/16 v1, 0x1c

    .line 1654
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1656
    :cond_1c
    iget-object v1, p0, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1657
    iput v0, p0, Lcom/appodeal/ads/api/Device;->memoizedSize:I

    return v0
.end method

.method public getStorageFree()J
    .locals 2

    .line 1324
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device;->storageFree_:J

    return-wide v0
.end method

.method public getStorageSize()J
    .locals 2

    .line 1309
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device;->storageSize_:J

    return-wide v0
.end method

.method public getStorageUsed()J
    .locals 2

    .line 1339
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device;->storageUsed_:J

    return-wide v0
.end method

.method public getTrackingStatus()Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;
    .locals 1

    .line 1247
    iget v0, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->valueOf(I)Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1248
    sget-object v0, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;

    :cond_0
    return-object v0
.end method

.method public getTrackingStatusValue()I
    .locals 1

    .line 1235
    iget v0, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    return v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    .line 664
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 665
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 667
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 669
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 670
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    .line 686
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 687
    check-cast v0, Ljava/lang/String;

    .line 688
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 690
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    return-object v0

    .line 693
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/appodeal/ads/api/Device;->w_:I

    return v0
.end method

.method public getWebviewVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    .line 981
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 982
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 984
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 986
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 987
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getWebviewVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1002
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    .line 1003
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1004
    check-cast v0, Ljava/lang/String;

    .line 1005
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1007
    iput-object v0, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    return-object v0

    .line 1010
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1732
    iget v0, p0, Lcom/appodeal/ads/api/Device;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1733
    iget v0, p0, Lcom/appodeal/ads/api/Device;->memoizedHashCode:I

    return v0

    .line 1736
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1738
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getUa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1740
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1742
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getOs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1744
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getW()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1746
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getH()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1749
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getPxratio()F

    move-result v0

    .line 1748
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1751
    iget v0, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1753
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getMake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1755
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1758
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getRooted()Z

    move-result v0

    .line 1757
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1760
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getWebviewVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 1762
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getBattery()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1764
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getMccmnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1766
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1768
    iget v0, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 1770
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 1772
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getLmt()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 1775
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getAdidg()Z

    move-result v0

    .line 1774
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    .line 1777
    iget v0, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    .line 1779
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getIdfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    .line 1782
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getStorageSize()J

    move-result-wide v2

    .line 1781
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    .line 1785
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getStorageFree()J

    move-result-wide v2

    .line 1784
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    .line 1788
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getStorageUsed()J

    move-result-wide v2

    .line 1787
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x35

    .line 1791
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getRamSize()J

    move-result-wide v2

    .line 1790
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x19

    mul-int/lit8 v1, v1, 0x35

    .line 1794
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getRamFree()J

    move-result-wide v2

    .line 1793
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1a

    mul-int/lit8 v1, v1, 0x35

    .line 1797
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getRamUsed()J

    move-result-wide v2

    .line 1796
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1b

    mul-int/lit8 v1, v1, 0x35

    .line 1800
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getCpuUsage()F

    move-result v0

    .line 1799
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1c

    mul-int/lit8 v1, v1, 0x35

    .line 1802
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getSecureAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1803
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1804
    iput v1, p0, Lcom/appodeal/ads/api/Device;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 250
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Device;

    const-class v2, Lcom/appodeal/ads/api/Device$Builder;

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1451
    iget-byte v0, p0, Lcom/appodeal/ads/api/Device;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1455
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Device;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 1879
    invoke-static {}, Lcom/appodeal/ads/api/Device;->newBuilder()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 2

    .line 1895
    new-instance v0, Lcom/appodeal/ads/api/Device$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Device$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Device$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->newBuilderForType()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->newBuilderForType()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 43
    new-instance p1, Lcom/appodeal/ads/api/Device;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Device;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Device$Builder;
    .locals 2

    .line 1888
    sget-object v0, Lcom/appodeal/ads/api/Device;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Device;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1889
    new-instance v0, Lcom/appodeal/ads/api/Device$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Device$Builder;-><init>(Lcom/appodeal/ads/api/Device$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Device$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Device$Builder;-><init>(Lcom/appodeal/ads/api/Device$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->toBuilder()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->toBuilder()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getUaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1463
    iget-object v1, p0, Lcom/appodeal/ads/api/Device;->ua_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1466
    iget-object v1, p0, Lcom/appodeal/ads/api/Device;->osv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1468
    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getOsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 1469
    iget-object v1, p0, Lcom/appodeal/ads/api/Device;->os_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1471
    :cond_2
    iget v0, p0, Lcom/appodeal/ads/api/Device;->w_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1472
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1474
    :cond_3
    iget v0, p0, Lcom/appodeal/ads/api/Device;->h_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 1475
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1477
    :cond_4
    iget v0, p0, Lcom/appodeal/ads/api/Device;->pxratio_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    .line 1478
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1480
    :cond_5
    iget v0, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    sget-object v2, Lcom/appodeal/ads/api/Device$DeviceType;->DEVICETYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$DeviceType;

    invoke-virtual {v2}, Lcom/appodeal/ads/api/Device$DeviceType;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_6

    const/4 v0, 0x7

    .line 1481
    iget v2, p0, Lcom/appodeal/ads/api/Device;->devicetype_:I

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1483
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 1484
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->make_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1486
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 1487
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->model_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1489
    :cond_8
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Device;->rooted_:Z

    if-eqz v0, :cond_9

    const/16 v2, 0xa

    .line 1490
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1492
    :cond_9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getWebviewVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 1493
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->webviewVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1495
    :cond_a
    iget v0, p0, Lcom/appodeal/ads/api/Device;->battery_:I

    if-eqz v0, :cond_b

    const/16 v2, 0xc

    .line 1496
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1498
    :cond_b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getMccmncBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    .line 1499
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->mccmnc_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1501
    :cond_c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getLocaleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 1502
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->locale_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1504
    :cond_d
    iget v0, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    sget-object v2, Lcom/appodeal/ads/api/Device$ConnectionType;->CONNECTIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

    invoke-virtual {v2}, Lcom/appodeal/ads/api/Device$ConnectionType;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_e

    const/16 v0, 0xf

    .line 1505
    iget v2, p0, Lcom/appodeal/ads/api/Device;->connectiontype_:I

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1507
    :cond_e
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x10

    .line 1508
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->ifa_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1510
    :cond_f
    iget v0, p0, Lcom/appodeal/ads/api/Device;->lmt_:I

    if-eqz v0, :cond_10

    const/16 v2, 0x11

    .line 1511
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1513
    :cond_10
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Device;->adidg_:Z

    if-eqz v0, :cond_11

    const/16 v2, 0x12

    .line 1514
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1516
    :cond_11
    iget v0, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    sget-object v2, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->NOT_DETERMINED:Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;

    invoke-virtual {v2}, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_12

    const/16 v0, 0x13

    .line 1517
    iget v2, p0, Lcom/appodeal/ads/api/Device;->trackingStatus_:I

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1519
    :cond_12
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getIdfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x14

    .line 1520
    iget-object v2, p0, Lcom/appodeal/ads/api/Device;->idfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1522
    :cond_13
    iget-wide v2, p0, Lcom/appodeal/ads/api/Device;->storageSize_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    .line 1523
    invoke-virtual {p1, v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1525
    :cond_14
    iget-wide v2, p0, Lcom/appodeal/ads/api/Device;->storageFree_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_15

    const/16 v0, 0x16

    .line 1526
    invoke-virtual {p1, v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1528
    :cond_15
    iget-wide v2, p0, Lcom/appodeal/ads/api/Device;->storageUsed_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_16

    const/16 v0, 0x17

    .line 1529
    invoke-virtual {p1, v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1531
    :cond_16
    iget-wide v2, p0, Lcom/appodeal/ads/api/Device;->ramSize_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    const/16 v0, 0x18

    .line 1532
    invoke-virtual {p1, v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1534
    :cond_17
    iget-wide v2, p0, Lcom/appodeal/ads/api/Device;->ramFree_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    const/16 v0, 0x19

    .line 1535
    invoke-virtual {p1, v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1537
    :cond_18
    iget-wide v2, p0, Lcom/appodeal/ads/api/Device;->ramUsed_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    const/16 v0, 0x1a

    .line 1538
    invoke-virtual {p1, v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1540
    :cond_19
    iget v0, p0, Lcom/appodeal/ads/api/Device;->cpuUsage_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x1b

    .line 1541
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1543
    :cond_1a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device;->getSecureAndroidIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x1c

    .line 1544
    iget-object v1, p0, Lcom/appodeal/ads/api/Device;->secureAndroidId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1546
    :cond_1b
    iget-object v0, p0, Lcom/appodeal/ads/api/Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
