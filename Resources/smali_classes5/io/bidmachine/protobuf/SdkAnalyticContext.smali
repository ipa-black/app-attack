.class public final Lio/bidmachine/protobuf/SdkAnalyticContext;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SdkAnalyticContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    }
.end annotation


# static fields
.field public static final APP_VER_FIELD_NUMBER:I = 0xd

.field public static final BM_IFV_FIELD_NUMBER:I = 0xc

.field public static final BUNDLE_FIELD_NUMBER:I = 0x2

.field public static final CONTYPE_FIELD_NUMBER:I = 0xa

.field public static final DCID_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x9

.field public static final EXT_FIELD_NUMBER:I = 0x10

.field public static final GEO_FIELD_NUMBER:I = 0x5

.field public static final IFA_FIELD_NUMBER:I = 0x8

.field public static final IFV_FIELD_NUMBER:I = 0xb

.field public static final OSV_FIELD_NUMBER:I = 0x4

.field public static final OS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKVER_FIELD_NUMBER:I = 0x7

.field public static final SDK_FIELD_NUMBER:I = 0x6

.field public static final SELLER_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_ID_FIELD_NUMBER:I = 0xe

.field private static final serialVersionUID:J


# instance fields
.field private volatile appVer_:Ljava/lang/Object;

.field private volatile bmIfv_:Ljava/lang/Object;

.field private volatile bundle_:Ljava/lang/Object;

.field private contype_:I

.field private volatile dcid_:Ljava/lang/Object;

.field private deviceType_:I

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private volatile ifa_:Ljava/lang/Object;

.field private volatile ifv_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private os_:I

.field private volatile osv_:Ljava/lang/Object;

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;

.field private volatile sellerId_:Ljava/lang/Object;

.field private volatile sessionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3064
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 3072
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 874
    iput-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 26
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 32
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 33
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 34
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 35
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 36
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 180
    invoke-virtual {p0, p1, v0, p2, v2}, Lio/bidmachine/protobuf/SdkAnalyticContext;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 168
    :sswitch_0
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v3

    .line 171
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 174
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 161
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 163
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    goto :goto_0

    .line 155
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 157
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 149
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 151
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    goto :goto_0

    .line 143
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 145
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    goto :goto_0

    .line 137
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 139
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    goto :goto_0

    .line 131
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 133
    iput v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    goto :goto_0

    .line 125
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 127
    iput v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    goto :goto_0

    .line 119
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 121
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    goto :goto_0

    .line 113
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 115
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    goto :goto_0

    .line 107
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 109
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    goto :goto_0

    .line 95
    :sswitch_b
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v3

    .line 98
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Context$Geo;

    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 101
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto/16 :goto_0

    .line 88
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 90
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 82
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 84
    iput v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    goto/16 :goto_0

    .line 76
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 78
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 72
    iput-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_10
    move v1, v4

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 191
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 192
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 189
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 195
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->makeExtensionsImmutable()V

    .line 196
    throw p1

    .line 194
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 195
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x18 -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x42 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x5a -> :sswitch_5
        0x62 -> :sswitch_4
        0x6a -> :sswitch_3
        0x72 -> :sswitch_2
        0x7a -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 874
    iput-byte p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .locals 0

    .line 13
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    return p0
.end method

.method static synthetic access$1402(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .locals 0

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    return p1
.end method

.method static synthetic access$1500(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .locals 0

    .line 13
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    return p0
.end method

.method static synthetic access$1502(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .locals 0

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    return p1
.end method

.method static synthetic access$1600(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1802(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

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
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

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
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

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
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

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
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

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
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .locals 0

    .line 13
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    return p0
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .locals 0

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    return p1
.end method

.method static synthetic access$700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p1
.end method

.method static synthetic access$900(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1

    .line 3068
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 200
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1173
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1176
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1147
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1154
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1114
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1120
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1159
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1160
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1167
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1135
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1142
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1103
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1109
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1124
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1130
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation

    .line 3083
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1008
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    if-nez v1, :cond_1

    .line 1009
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1011
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 1013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSellerId()Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSellerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1015
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1017
    :cond_3
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    if-eq v1, v3, :cond_4

    return v2

    .line 1018
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1020
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 1021
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1022
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 1023
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 1025
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 1027
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 1029
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v1

    .line 1030
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 1031
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 1033
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 1035
    :cond_c
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    if-eq v1, v3, :cond_d

    return v2

    .line 1036
    :cond_d
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    if-eq v1, v3, :cond_e

    return v2

    .line 1037
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v1

    .line 1038
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 1039
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 1041
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v1

    .line 1042
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 1043
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 1044
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1045
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 1046
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 1048
    :cond_13
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 2

    .line 710
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 711
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 712
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 714
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 716
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 717
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 732
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 733
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 734
    check-cast v0, Ljava/lang/String;

    .line 735
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 737
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 740
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 610
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 611
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 612
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 614
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 616
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 617
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 632
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 633
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 634
    check-cast v0, Ljava/lang/String;

    .line 635
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 637
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 640
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .locals 2

    .line 269
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 270
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 271
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 273
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 275
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 276
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 291
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 292
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Ljava/lang/String;

    .line 294
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 296
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 299
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 694
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 695
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_0
    return-object v0
.end method

.method public getContypeValue()I
    .locals 1

    .line 682
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    return v0
.end method

.method public getDcid()Ljava/lang/String;
    .locals 2

    .line 802
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 803
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 804
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 806
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 808
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 809
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDcidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 824
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 825
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 826
    check-cast v0, Ljava/lang/String;

    .line 827
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 829
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-object v0

    .line 832
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1

    .line 3093
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object v0
.end method

.method public getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 1

    .line 667
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 668
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_0
    return-object v0
.end method

.method public getDeviceTypeValue()I
    .locals 1

    .line 655
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    return v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 860
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 871
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 400
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 411
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .locals 2

    .line 518
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 519
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 522
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 524
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 525
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 540
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 541
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 542
    check-cast v0, Ljava/lang/String;

    .line 543
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 545
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 548
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 564
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 565
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 566
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 568
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 570
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 571
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 586
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 587
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 588
    check-cast v0, Ljava/lang/String;

    .line 589
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 591
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 594
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOs()Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 326
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_0
    return-object v0
.end method

.method public getOsValue()I
    .locals 1

    .line 314
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    return v0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 2

    .line 342
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 343
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 344
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 346
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 348
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 349
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 364
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 365
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 366
    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 369
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    return-object v0

    .line 372
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
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation

    .line 3088
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 426
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 427
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 428
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 430
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 432
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 433
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 448
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 449
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 450
    check-cast v0, Ljava/lang/String;

    .line 451
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 453
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 456
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .locals 2

    .line 472
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 473
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 474
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 476
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 478
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 479
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 494
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 495
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 496
    check-cast v0, Ljava/lang/String;

    .line 497
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 499
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 502
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .locals 2

    .line 223
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    .line 224
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 225
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 227
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 229
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 230
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 245
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    .line 246
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 247
    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 250
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 253
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 941
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 945
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 946
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 948
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 949
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 951
    :cond_2
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 952
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 953
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 955
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 956
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 958
    :cond_4
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 960
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 962
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 963
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 965
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 966
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 968
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 969
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 971
    :cond_8
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/16 v1, 0x9

    .line 972
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 973
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 975
    :cond_9
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_a

    const/16 v1, 0xa

    .line 976
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 977
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 979
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 980
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xc

    .line 983
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 985
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xd

    .line 986
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 989
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 991
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xf

    .line 992
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 994
    :cond_f
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    .line 996
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 998
    :cond_10
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 999
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedSize:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 756
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 757
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 758
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 760
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 762
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 763
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 778
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 779
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 780
    check-cast v0, Ljava/lang/String;

    .line 781
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 783
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 786
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 848
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGeo()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

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

    .line 1054
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1055
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedHashCode:I

    return v0

    .line 1058
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1060
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1062
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1064
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1066
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1067
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1069
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1072
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1074
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1076
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1078
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 1080
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1082
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1084
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1086
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1088
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1090
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1091
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 1093
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x1d

    .line 1095
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1096
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 206
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 877
    iget-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 881
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1171
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 1187
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 43
    new-instance p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-direct {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 1180
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1181
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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

    .line 888
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 889
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sellerId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 891
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 892
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 894
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 895
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 897
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 898
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 900
    :cond_3
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 901
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 903
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 904
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 906
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 907
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 909
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 910
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 912
    :cond_7
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x9

    .line 913
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 915
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/16 v0, 0xa

    .line 916
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 918
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 919
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 921
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 922
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 924
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    .line 925
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 927
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 928
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 930
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xf

    .line 931
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 933
    :cond_e
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    .line 934
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 936
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
