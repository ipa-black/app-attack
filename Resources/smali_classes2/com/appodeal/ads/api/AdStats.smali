.class public final Lcom/appodeal/ads/api/AdStats;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdStats.java"

# interfaces
.implements Lcom/appodeal/ads/api/AdStatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/AdStats$Builder;
    }
.end annotation


# static fields
.field public static final BANNER_320_CLICK_FIELD_NUMBER:I = 0xd

.field public static final BANNER_320_SHOW_FIELD_NUMBER:I = 0xc

.field public static final BANNER_CLICK_FIELD_NUMBER:I = 0x5

.field public static final BANNER_MREC_CLICK_FIELD_NUMBER:I = 0xf

.field public static final BANNER_MREC_SHOW_FIELD_NUMBER:I = 0xe

.field public static final BANNER_SHOW_FIELD_NUMBER:I = 0x4

.field public static final CLICK_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/AdStats;

.field public static final FINISH_FIELD_NUMBER:I = 0x3

.field public static final NATIVE_CLICK_FIELD_NUMBER:I = 0x11

.field public static final NATIVE_SHOW_FIELD_NUMBER:I = 0x10

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/AdStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final REWARDED_VIDEO_CLICK_FIELD_NUMBER:I = 0xa

.field public static final REWARDED_VIDEO_FINISH_FIELD_NUMBER:I = 0xb

.field public static final REWARDED_VIDEO_SHOW_FIELD_NUMBER:I = 0x9

.field public static final SHOW_FIELD_NUMBER:I = 0x1

.field public static final VIDEO_CLICK_FIELD_NUMBER:I = 0x7

.field public static final VIDEO_FINISH_FIELD_NUMBER:I = 0x8

.field public static final VIDEO_SHOW_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private banner320Click_:I

.field private banner320Show_:I

.field private bannerClick_:I

.field private bannerMrecClick_:I

.field private bannerMrecShow_:I

.field private bannerShow_:I

.field private click_:I

.field private finish_:I

.field private memoizedIsInitialized:B

.field private nativeClick_:I

.field private nativeShow_:I

.field private rewardedVideoClick_:I

.field private rewardedVideoFinish_:I

.field private rewardedVideoShow_:I

.field private show_:I

.field private videoClick_:I

.field private videoFinish_:I

.field private videoShow_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1482
    new-instance v0, Lcom/appodeal/ads/api/AdStats;

    invoke-direct {v0}, Lcom/appodeal/ads/api/AdStats;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/AdStats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/AdStats;

    .line 1490
    new-instance v0, Lcom/appodeal/ads/api/AdStats$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/AdStats$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 359
    iput-byte v0, p0, Lcom/appodeal/ads/api/AdStats;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/appodeal/ads/api/AdStats;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 141
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/AdStats;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 137
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->nativeClick_:I

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->nativeShow_:I

    goto :goto_0

    .line 127
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecClick_:I

    goto :goto_0

    .line 122
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecShow_:I

    goto :goto_0

    .line 117
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->banner320Click_:I

    goto :goto_0

    .line 112
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->banner320Show_:I

    goto :goto_0

    .line 107
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoFinish_:I

    goto :goto_0

    .line 102
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoClick_:I

    goto :goto_0

    .line 97
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoShow_:I

    goto :goto_0

    .line 92
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->videoFinish_:I

    goto :goto_0

    .line 87
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->videoClick_:I

    goto :goto_0

    .line 82
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->videoShow_:I

    goto :goto_0

    .line 77
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->bannerClick_:I

    goto :goto_0

    .line 72
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->bannerShow_:I

    goto :goto_0

    .line 67
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->finish_:I

    goto :goto_0

    .line 62
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->click_:I

    goto :goto_0

    .line 57
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/appodeal/ads/api/AdStats;->show_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_11
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

    .line 152
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 153
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 150
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 156
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->makeExtensionsImmutable()V

    .line 157
    throw p1

    .line 155
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 156
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x18 -> :sswitch_e
        0x20 -> :sswitch_d
        0x28 -> :sswitch_c
        0x30 -> :sswitch_b
        0x38 -> :sswitch_a
        0x40 -> :sswitch_9
        0x48 -> :sswitch_8
        0x50 -> :sswitch_7
        0x58 -> :sswitch_6
        0x60 -> :sswitch_5
        0x68 -> :sswitch_4
        0x70 -> :sswitch_3
        0x78 -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/AdStats$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 359
    iput-byte p1, p0, Lcom/appodeal/ads/api/AdStats;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/AdStats$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/AdStats;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->videoClick_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->videoFinish_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoShow_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoClick_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoFinish_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->banner320Show_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->banner320Click_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecShow_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecClick_:I

    return p1
.end method

.method static synthetic access$1902(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->nativeShow_:I

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/AdStats;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->nativeClick_:I

    return p1
.end method

.method static synthetic access$2100(Lcom/appodeal/ads/api/AdStats;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->show_:I

    return p1
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->click_:I

    return p1
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->finish_:I

    return p1
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->bannerShow_:I

    return p1
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->bannerClick_:I

    return p1
.end method

.method static synthetic access$902(Lcom/appodeal/ads/api/AdStats;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/appodeal/ads/api/AdStats;->videoShow_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/AdStats;
    .locals 1

    .line 1486
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/AdStats;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 161
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_AdStats_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    .line 673
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/AdStats;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/AdStats;->toBuilder()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    .line 676
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/AdStats;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/AdStats;->toBuilder()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 647
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 654
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 614
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 620
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 660
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 667
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 635
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 642
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 603
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 609
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 624
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/AdStats;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/AdStats;",
            ">;"
        }
    .end annotation

    .line 1501
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 511
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/AdStats;

    if-nez v1, :cond_1

    .line 512
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 514
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/AdStats;

    .line 516
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getShow()I

    move-result v1

    .line 517
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getShow()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 518
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getClick()I

    move-result v1

    .line 519
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getClick()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 520
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getFinish()I

    move-result v1

    .line 521
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getFinish()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 522
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBannerShow()I

    move-result v1

    .line 523
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerShow()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 524
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBannerClick()I

    move-result v1

    .line 525
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerClick()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 526
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getVideoShow()I

    move-result v1

    .line 527
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoShow()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 528
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getVideoClick()I

    move-result v1

    .line 529
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoClick()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 530
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getVideoFinish()I

    move-result v1

    .line 531
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoFinish()I

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 532
    :cond_9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoShow()I

    move-result v1

    .line 533
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoShow()I

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 534
    :cond_a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoClick()I

    move-result v1

    .line 535
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoClick()I

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 536
    :cond_b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoFinish()I

    move-result v1

    .line 537
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoFinish()I

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 538
    :cond_c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBanner320Show()I

    move-result v1

    .line 539
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBanner320Show()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 540
    :cond_d
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBanner320Click()I

    move-result v1

    .line 541
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBanner320Click()I

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 542
    :cond_e
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecShow()I

    move-result v1

    .line 543
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecShow()I

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 544
    :cond_f
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecClick()I

    move-result v1

    .line 545
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecClick()I

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 546
    :cond_10
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getNativeShow()I

    move-result v1

    .line 547
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getNativeShow()I

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 548
    :cond_11
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getNativeClick()I

    move-result v1

    .line 549
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getNativeClick()I

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 550
    :cond_12
    iget-object v1, p0, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v3

    :cond_13
    return v0
.end method

.method public getBanner320Click()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->banner320Click_:I

    return v0
.end method

.method public getBanner320Show()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->banner320Show_:I

    return v0
.end method

.method public getBannerClick()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->bannerClick_:I

    return v0
.end method

.method public getBannerMrecClick()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecClick_:I

    return v0
.end method

.method public getBannerMrecShow()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecShow_:I

    return v0
.end method

.method public getBannerShow()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->bannerShow_:I

    return v0
.end method

.method public getClick()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->click_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/AdStats;
    .locals 1

    .line 1511
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/AdStats;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getDefaultInstanceForType()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getDefaultInstanceForType()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public getFinish()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->finish_:I

    return v0
.end method

.method public getNativeClick()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->nativeClick_:I

    return v0
.end method

.method public getNativeShow()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->nativeShow_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/AdStats;",
            ">;"
        }
    .end annotation

    .line 1506
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRewardedVideoClick()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoClick_:I

    return v0
.end method

.method public getRewardedVideoFinish()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoFinish_:I

    return v0
.end method

.method public getRewardedVideoShow()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoShow_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 429
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 433
    :cond_0
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->show_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 435
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 437
    :goto_0
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->click_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 439
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_2
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->finish_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 443
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_3
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->bannerShow_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 447
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_4
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->bannerClick_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 451
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_5
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->videoShow_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 455
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    :cond_6
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->videoClick_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 459
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_7
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->videoFinish_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 463
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    :cond_8
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoShow_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 467
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 469
    :cond_9
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoClick_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 471
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_a
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoFinish_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 475
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :cond_b
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->banner320Show_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 479
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    :cond_c
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->banner320Click_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 483
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    :cond_d
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecShow_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 487
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_e
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecClick_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 491
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    :cond_f
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->nativeShow_:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 495
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    :cond_10
    iget v1, p0, Lcom/appodeal/ads/api/AdStats;->nativeClick_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 499
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_11
    iget-object v1, p0, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    iput v0, p0, Lcom/appodeal/ads/api/AdStats;->memoizedSize:I

    return v0
.end method

.method public getShow()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->show_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVideoClick()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->videoClick_:I

    return v0
.end method

.method public getVideoFinish()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->videoFinish_:I

    return v0
.end method

.method public getVideoShow()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->videoShow_:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 556
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 557
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->memoizedHashCode:I

    return v0

    .line 560
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 562
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getShow()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 564
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getClick()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 566
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getFinish()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 568
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBannerShow()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 570
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBannerClick()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 572
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getVideoShow()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 574
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getVideoClick()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 576
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getVideoFinish()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 578
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoShow()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 580
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoClick()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 582
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoFinish()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 584
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBanner320Show()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 586
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBanner320Click()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 588
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecShow()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 590
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecClick()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 592
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getNativeShow()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 594
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->getNativeClick()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 595
    iget-object v0, p0, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 596
    iput v1, p0, Lcom/appodeal/ads/api/AdStats;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 167
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_AdStats_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/AdStats;

    const-class v2, Lcom/appodeal/ads/api/AdStats$Builder;

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 362
    iget-byte v0, p0, Lcom/appodeal/ads/api/AdStats;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 366
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/AdStats;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    .line 671
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->newBuilder()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 2

    .line 687
    new-instance v0, Lcom/appodeal/ads/api/AdStats$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/AdStats$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/AdStats$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->newBuilderForType()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->newBuilderForType()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 29
    new-instance p1, Lcom/appodeal/ads/api/AdStats;

    invoke-direct {p1}, Lcom/appodeal/ads/api/AdStats;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 2

    .line 680
    sget-object v0, Lcom/appodeal/ads/api/AdStats;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/AdStats;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 681
    new-instance v0, Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/AdStats$Builder;-><init>(Lcom/appodeal/ads/api/AdStats$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/AdStats$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/AdStats$Builder;-><init>(Lcom/appodeal/ads/api/AdStats$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->toBuilder()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats;->toBuilder()Lcom/appodeal/ads/api/AdStats$Builder;

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

    .line 373
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->show_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 374
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 376
    :cond_0
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->click_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 377
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 379
    :cond_1
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->finish_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 380
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 382
    :cond_2
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->bannerShow_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 383
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 385
    :cond_3
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->bannerClick_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 386
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 388
    :cond_4
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->videoShow_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 389
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 391
    :cond_5
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->videoClick_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 392
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 394
    :cond_6
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->videoFinish_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 395
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 397
    :cond_7
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoShow_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 398
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 400
    :cond_8
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoClick_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 401
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 403
    :cond_9
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->rewardedVideoFinish_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 404
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 406
    :cond_a
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->banner320Show_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 407
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 409
    :cond_b
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->banner320Click_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 410
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 412
    :cond_c
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecShow_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 413
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 415
    :cond_d
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->bannerMrecClick_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 416
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 418
    :cond_e
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->nativeShow_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 419
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 421
    :cond_f
    iget v0, p0, Lcom/appodeal/ads/api/AdStats;->nativeClick_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 422
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 424
    :cond_10
    iget-object v0, p0, Lcom/appodeal/ads/api/AdStats;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
