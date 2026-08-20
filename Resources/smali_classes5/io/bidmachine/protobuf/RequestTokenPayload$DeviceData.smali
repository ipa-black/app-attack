.class public final Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$DeviceDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_FIELD_NUMBER:I = 0x13

.field public static final AIRPLANE_FIELD_NUMBER:I = 0xc

.field public static final ATTS_FIELD_NUMBER:I = 0x16

.field public static final BATTERYLEVEL_FIELD_NUMBER:I = 0x9

.field public static final BATTERYSAVER_FIELD_NUMBER:I = 0xa

.field public static final BM_IFV_FIELD_NUMBER:I = 0x2

.field public static final CHARGING_FIELD_NUMBER:I = 0x7

.field public static final DARKMODE_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

.field public static final DEVICENAME_FIELD_NUMBER:I = 0xe

.field public static final DISKSPACE_FIELD_NUMBER:I = 0x4

.field public static final DND_FIELD_NUMBER:I = 0xd

.field public static final HEADSETNAME_FIELD_NUMBER:I = 0x14

.field public static final HEADSET_FIELD_NUMBER:I = 0x8

.field public static final IFV_FIELD_NUMBER:I = 0x1

.field public static final INPUTLANGUAGE_FIELD_NUMBER:I = 0x3

.field public static final JAILBREAK_FIELD_NUMBER:I = 0x11

.field public static final LASTBOOTUP_FIELD_NUMBER:I = 0x12

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;",
            ">;"
        }
    .end annotation
.end field

.field public static final RINGMUTE_FIELD_NUMBER:I = 0x6

.field public static final SCREENBRIGHT_FIELD_NUMBER:I = 0x10

.field public static final TIME_FIELD_NUMBER:I = 0xf

.field public static final TOTALDISK_FIELD_NUMBER:I = 0x5

.field public static final TOTALMEM_FIELD_NUMBER:I = 0x15

.field private static final serialVersionUID:J


# instance fields
.field private volatile access_:Ljava/lang/Object;

.field private airplane_:Z

.field private atts_:I

.field private batterylevel_:F

.field private batterysaver_:Z

.field private volatile bmIfv_:Ljava/lang/Object;

.field private charging_:Z

.field private darkmode_:Z

.field private volatile devicename_:Ljava/lang/Object;

.field private diskspace_:J

.field private dnd_:Z

.field private headset_:Z

.field private volatile headsetname_:Ljava/lang/Object;

.field private volatile ifv_:Ljava/lang/Object;

.field private inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

.field private jailbreak_:Z

.field private lastbootup_:J

.field private memoizedIsInitialized:B

.field private ringmute_:Z

.field private screenbright_:F

.field private time_:J

.field private totaldisk_:J

.field private totalmem_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6415
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 6423
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3576
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 4317
    iput-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedIsInitialized:B

    .line 3577
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    .line 3578
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    .line 3579
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3580
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    .line 3581
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    .line 3582
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3601
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;-><init>()V

    .line 3603
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3607
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 3611
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 3736
    invoke-virtual {p0, p1, v0, p2, v4}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 3732
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->atts_:I

    goto :goto_0

    .line 3727
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totalmem_:J

    goto :goto_0

    .line 3720
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3722
    iput-object v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    goto :goto_0

    .line 3714
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3716
    iput-object v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    goto :goto_0

    .line 3710
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->lastbootup_:J

    goto :goto_0

    .line 3705
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->jailbreak_:Z

    goto :goto_0

    .line 3700
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->screenbright_:F

    goto :goto_0

    .line 3695
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->time_:J

    goto :goto_0

    .line 3688
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3690
    iput-object v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    goto :goto_0

    .line 3684
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->dnd_:Z

    goto :goto_0

    .line 3679
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->airplane_:Z

    goto :goto_0

    .line 3674
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->darkmode_:Z

    goto :goto_0

    .line 3669
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterysaver_:Z

    goto :goto_0

    .line 3664
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterylevel_:F

    goto :goto_0

    .line 3659
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headset_:Z

    goto :goto_0

    .line 3654
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->charging_:Z

    goto :goto_0

    .line 3649
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ringmute_:Z

    goto/16 :goto_0

    .line 3644
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totaldisk_:J

    goto/16 :goto_0

    .line 3639
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->diskspace_:J

    goto/16 :goto_0

    .line 3629
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    .line 3631
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    move v2, v3

    .line 3634
    :cond_1
    iget-object v5, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3623
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3625
    iput-object v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3617
    :sswitch_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3619
    iput-object v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_16
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3747
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3748
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3745
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_2

    .line 3751
    iget-object p2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3753
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3754
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->makeExtensionsImmutable()V

    .line 3755
    throw p1

    :cond_3
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_4

    .line 3751
    iget-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3753
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3754
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_16
        0xa -> :sswitch_15
        0x12 -> :sswitch_14
        0x1a -> :sswitch_13
        0x20 -> :sswitch_12
        0x28 -> :sswitch_11
        0x30 -> :sswitch_10
        0x38 -> :sswitch_f
        0x40 -> :sswitch_e
        0x4d -> :sswitch_d
        0x50 -> :sswitch_c
        0x58 -> :sswitch_b
        0x60 -> :sswitch_a
        0x68 -> :sswitch_9
        0x72 -> :sswitch_8
        0x78 -> :sswitch_7
        0x85 -> :sswitch_6
        0x88 -> :sswitch_5
        0x90 -> :sswitch_4
        0x9a -> :sswitch_3
        0xa2 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xb0 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3567
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 3574
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4317
    iput-byte p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 3567
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4000()Z
    .locals 1

    .line 3567
    sget-boolean v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4200(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4202(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4300(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4302(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4400(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 3567
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$4402(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 3567
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4502(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J
    .locals 0

    .line 3567
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->diskspace_:J

    return-wide p1
.end method

.method static synthetic access$4602(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J
    .locals 0

    .line 3567
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totaldisk_:J

    return-wide p1
.end method

.method static synthetic access$4702(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z
    .locals 0

    .line 3567
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ringmute_:Z

    return p1
.end method

.method static synthetic access$4802(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z
    .locals 0

    .line 3567
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->charging_:Z

    return p1
.end method

.method static synthetic access$4902(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z
    .locals 0

    .line 3567
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headset_:Z

    return p1
.end method

.method static synthetic access$5002(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;F)F
    .locals 0

    .line 3567
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterylevel_:F

    return p1
.end method

.method static synthetic access$5102(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z
    .locals 0

    .line 3567
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterysaver_:Z

    return p1
.end method

.method static synthetic access$5202(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z
    .locals 0

    .line 3567
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->darkmode_:Z

    return p1
.end method

.method static synthetic access$5302(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z
    .locals 0

    .line 3567
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->airplane_:Z

    return p1
.end method

.method static synthetic access$5402(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z
    .locals 0

    .line 3567
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->dnd_:Z

    return p1
.end method

.method static synthetic access$5500(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5502(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J
    .locals 0

    .line 3567
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->time_:J

    return-wide p1
.end method

.method static synthetic access$5702(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;F)F
    .locals 0

    .line 3567
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->screenbright_:F

    return p1
.end method

.method static synthetic access$5802(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Z)Z
    .locals 0

    .line 3567
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->jailbreak_:Z

    return p1
.end method

.method static synthetic access$5902(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J
    .locals 0

    .line 3567
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->lastbootup_:J

    return-wide p1
.end method

.method static synthetic access$6000(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6002(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6100(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6102(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3567
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6202(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;J)J
    .locals 0

    .line 3567
    iput-wide p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totalmem_:J

    return-wide p1
.end method

.method static synthetic access$6302(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;I)I
    .locals 0

    .line 3567
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->atts_:I

    return p1
.end method

.method static synthetic access$6400(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 3567
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$6500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 3567
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3567
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3567
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3567
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3567
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3567
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3567
    invoke-static {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1

    .line 6419
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3759
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 4704
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 4707
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4677
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4678
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4684
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4685
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4645
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4651
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4690
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4691
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4697
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4698
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4665
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4666
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4672
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4673
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4634
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4640
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4655
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4661
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;",
            ">;"
        }
    .end annotation

    .line 6434
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4503
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    if-nez v1, :cond_1

    .line 4504
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4506
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    .line 4508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getIfv()Ljava/lang/String;

    move-result-object v1

    .line 4509
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getIfv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 4510
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBmIfv()Ljava/lang/String;

    move-result-object v1

    .line 4511
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBmIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4512
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 4513
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 4514
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDiskspace()J

    move-result-wide v3

    .line 4515
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDiskspace()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 4516
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotaldisk()J

    move-result-wide v3

    .line 4517
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotaldisk()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 4518
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getRingmute()Z

    move-result v1

    .line 4519
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getRingmute()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 4520
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getCharging()Z

    move-result v1

    .line 4521
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getCharging()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 4522
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadset()Z

    move-result v1

    .line 4523
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadset()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 4524
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterylevel()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4526
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterylevel()F

    move-result v3

    .line 4525
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    .line 4527
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterysaver()Z

    move-result v1

    .line 4528
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterysaver()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 4529
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDarkmode()Z

    move-result v1

    .line 4530
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDarkmode()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 4531
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAirplane()Z

    move-result v1

    .line 4532
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAirplane()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 4533
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDnd()Z

    move-result v1

    .line 4534
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDnd()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    .line 4535
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDevicename()Ljava/lang/String;

    move-result-object v1

    .line 4536
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDevicename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 4537
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTime()J

    move-result-wide v3

    .line 4538
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    .line 4539
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getScreenbright()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 4541
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getScreenbright()F

    move-result v3

    .line 4540
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 4542
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getJailbreak()Z

    move-result v1

    .line 4543
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getJailbreak()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 4544
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getLastbootup()J

    move-result-wide v3

    .line 4545
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getLastbootup()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_13

    return v2

    .line 4546
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAccess()Ljava/lang/String;

    move-result-object v1

    .line 4547
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAccess()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 4548
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadsetname()Ljava/lang/String;

    move-result-object v1

    .line 4549
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadsetname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 4550
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotalmem()J

    move-result-wide v3

    .line 4551
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotalmem()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    .line 4552
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAtts()I

    move-result v1

    .line 4553
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAtts()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 4554
    :cond_17
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public getAccess()Ljava/lang/String;
    .locals 2

    .line 4200
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    .line 4201
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4202
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4204
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4206
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4207
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAccessBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4223
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    .line 4224
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4225
    check-cast v0, Ljava/lang/String;

    .line 4226
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4228
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    return-object v0

    .line 4231
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAirplane()Z
    .locals 1

    .line 4060
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->airplane_:Z

    return v0
.end method

.method public getAtts()I
    .locals 1

    .line 4314
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->atts_:I

    return v0
.end method

.method public getBatterylevel()F
    .locals 1

    .line 4014
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterylevel_:F

    return v0
.end method

.method public getBatterysaver()Z
    .locals 1

    .line 4029
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterysaver_:Z

    return v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 3828
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    .line 3829
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3830
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3832
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3834
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3835
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3850
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    .line 3851
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3852
    check-cast v0, Ljava/lang/String;

    .line 3853
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3855
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 3858
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCharging()Z
    .locals 1

    .line 3984
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->charging_:Z

    return v0
.end method

.method public getDarkmode()Z
    .locals 1

    .line 4044
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->darkmode_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;
    .locals 1

    .line 6444
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    return-object v0
.end method

.method public getDevicename()Ljava/lang/String;
    .locals 2

    .line 4091
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    .line 4092
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4093
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4095
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4097
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4098
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4113
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    .line 4114
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4115
    check-cast v0, Ljava/lang/String;

    .line 4116
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4118
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    return-object v0

    .line 4121
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDiskspace()J
    .locals 2

    .line 3935
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->diskspace_:J

    return-wide v0
.end method

.method public getDnd()Z
    .locals 1

    .line 4076
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->dnd_:Z

    return v0
.end method

.method public getHeadset()Z
    .locals 1

    .line 3999
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headset_:Z

    return v0
.end method

.method public getHeadsetname()Ljava/lang/String;
    .locals 2

    .line 4247
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    .line 4248
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4249
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4251
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4253
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4254
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4269
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    .line 4270
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4271
    check-cast v0, Ljava/lang/String;

    .line 4272
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4274
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    return-object v0

    .line 4277
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 3782
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    .line 3783
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3784
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3786
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3788
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3789
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3804
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    .line 3805
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3806
    check-cast v0, Ljava/lang/String;

    .line 3807
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3809
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 3812
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInputlanguage(I)Ljava/lang/String;
    .locals 1

    .line 3903
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInputlanguageBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 3918
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputlanguageCount()I
    .locals 1

    .line 3889
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 3876
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getInputlanguageList()Ljava/util/List;
    .locals 1

    .line 3567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getJailbreak()Z
    .locals 1

    .line 4168
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->jailbreak_:Z

    return v0
.end method

.method public getLastbootup()J
    .locals 2

    .line 4184
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->lastbootup_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;",
            ">;"
        }
    .end annotation

    .line 6439
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRingmute()Z
    .locals 1

    .line 3969
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ringmute_:Z

    return v0
.end method

.method public getScreenbright()F
    .locals 1

    .line 4153
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->screenbright_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 4402
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4406
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4407
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4409
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 4410
    iget-object v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    move v2, v1

    .line 4414
    :goto_1
    iget-object v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 4415
    iget-object v3, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v2

    .line 4418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 4420
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->diskspace_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 4422
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4424
    :cond_4
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totaldisk_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 4426
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4428
    :cond_5
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ringmute_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 4430
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4432
    :cond_6
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->charging_:Z

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 4434
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4436
    :cond_7
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headset_:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 4438
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4440
    :cond_8
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterylevel_:F

    const/4 v2, 0x0

    cmpl-float v5, v1, v2

    if-eqz v5, :cond_9

    const/16 v5, 0x9

    .line 4442
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4444
    :cond_9
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterysaver_:Z

    if-eqz v1, :cond_a

    const/16 v5, 0xa

    .line 4446
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4448
    :cond_a
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->darkmode_:Z

    if-eqz v1, :cond_b

    const/16 v5, 0xb

    .line 4450
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4452
    :cond_b
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->airplane_:Z

    if-eqz v1, :cond_c

    const/16 v5, 0xc

    .line 4454
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4456
    :cond_c
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->dnd_:Z

    if-eqz v1, :cond_d

    const/16 v5, 0xd

    .line 4458
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4460
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 4461
    iget-object v5, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4463
    :cond_e
    iget-wide v5, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->time_:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 4465
    invoke-static {v1, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4467
    :cond_f
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->screenbright_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_10

    const/16 v2, 0x10

    .line 4469
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4471
    :cond_10
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->jailbreak_:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 4473
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4475
    :cond_11
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->lastbootup_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    const/16 v5, 0x12

    .line 4477
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4479
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAccessBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0x13

    .line 4480
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4482
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0x14

    .line 4483
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4485
    :cond_14
    iget-wide v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totalmem_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_15

    const/16 v3, 0x15

    .line 4487
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4489
    :cond_15
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->atts_:I

    if-eqz v1, :cond_16

    const/16 v2, 0x16

    .line 4491
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4493
    :cond_16
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4494
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedSize:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 4137
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->time_:J

    return-wide v0
.end method

.method public getTotaldisk()J
    .locals 2

    .line 3952
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totaldisk_:J

    return-wide v0
.end method

.method public getTotalmem()J
    .locals 2

    .line 4293
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totalmem_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 3595
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 4560
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 4561
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedHashCode:I

    return v0

    .line 4564
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 4566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 4568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4569
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getInputlanguageCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 4571
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 4575
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDiskspace()J

    move-result-wide v2

    .line 4574
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 4578
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotaldisk()J

    move-result-wide v2

    .line 4577
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 4581
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getRingmute()Z

    move-result v0

    .line 4580
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 4584
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getCharging()Z

    move-result v0

    .line 4583
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 4587
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadset()Z

    move-result v0

    .line 4586
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 4590
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterylevel()F

    move-result v0

    .line 4589
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 4593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBatterysaver()Z

    move-result v0

    .line 4592
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 4596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDarkmode()Z

    move-result v0

    .line 4595
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 4599
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAirplane()Z

    move-result v0

    .line 4598
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 4602
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDnd()Z

    move-result v0

    .line 4601
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 4604
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDevicename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 4607
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTime()J

    move-result-wide v2

    .line 4606
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 4610
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getScreenbright()F

    move-result v0

    .line 4609
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 4613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getJailbreak()Z

    move-result v0

    .line 4612
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 4616
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getLastbootup()J

    move-result-wide v2

    .line 4615
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    .line 4618
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAccess()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    .line 4620
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadsetname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    .line 4623
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getTotalmem()J

    move-result-wide v2

    .line 4622
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    .line 4625
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAtts()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 4626
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4627
    iput v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3765
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    .line 3766
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4320
    iget-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4324
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3567
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 1

    .line 4702
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2

    .line 4718
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 3589
    new-instance p1, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    invoke-direct {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;
    .locals 2

    .line 4711
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4712
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;)Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4331
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4332
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ifv_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4334
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4335
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->bmIfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 4337
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4338
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4340
    :cond_2
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->diskspace_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 4341
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4343
    :cond_3
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totaldisk_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 4344
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4346
    :cond_4
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->ringmute_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 4347
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4349
    :cond_5
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->charging_:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 4350
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4352
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headset_:Z

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 4353
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4355
    :cond_7
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterylevel_:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    .line 4356
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4358
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->batterysaver_:Z

    if-eqz v0, :cond_9

    const/16 v4, 0xa

    .line 4359
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4361
    :cond_9
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->darkmode_:Z

    if-eqz v0, :cond_a

    const/16 v4, 0xb

    .line 4362
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4364
    :cond_a
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->airplane_:Z

    if-eqz v0, :cond_b

    const/16 v4, 0xc

    .line 4365
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4367
    :cond_b
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->dnd_:Z

    if-eqz v0, :cond_c

    const/16 v4, 0xd

    .line 4368
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4370
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 4371
    iget-object v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->devicename_:Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4373
    :cond_d
    iget-wide v4, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->time_:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 4374
    invoke-virtual {p1, v0, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4376
    :cond_e
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->screenbright_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    .line 4377
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4379
    :cond_f
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->jailbreak_:Z

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 4380
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4382
    :cond_10
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->lastbootup_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    const/16 v4, 0x12

    .line 4383
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4385
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getAccessBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x13

    .line 4386
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->access_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4388
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x14

    .line 4389
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->headsetname_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4391
    :cond_13
    iget-wide v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->totalmem_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    const/16 v2, 0x15

    .line 4392
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4394
    :cond_14
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->atts_:I

    if-eqz v0, :cond_15

    const/16 v1, 0x16

    .line 4395
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 4397
    :cond_15
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$DeviceData;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
