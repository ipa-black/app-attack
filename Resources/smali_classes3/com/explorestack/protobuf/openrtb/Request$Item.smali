.class public final Lcom/explorestack/protobuf/openrtb/Request$Item;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Request.java"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;,
        Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;,
        Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;,
        Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;,
        Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;
    }
.end annotation


# static fields
.field public static final DEAL_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

.field public static final DLVY_FIELD_NUMBER:I = 0x9

.field public static final DT_FIELD_NUMBER:I = 0x8

.field public static final EXP_FIELD_NUMBER:I = 0x7

.field public static final EXT_FIELD_NUMBER:I = 0xf

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0xe

.field public static final FLRCUR_FIELD_NUMBER:I = 0x6

.field public static final FLR_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final METRIC_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_FIELD_NUMBER:I = 0xc

.field public static final QTY_FIELD_NUMBER:I = 0x2

.field public static final SEQ_FIELD_NUMBER:I = 0x3

.field public static final SPEC_FIELD_NUMBER:I = 0xd

.field private static final serialVersionUID:J


# instance fields
.field private deal_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation
.end field

.field private dlvy_:I

.field private volatile dt_:Ljava/lang/Object;

.field private exp_:I

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private flr_:D

.field private volatile flrcur_:Ljava/lang/Object;

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private metric_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation
.end field

.field private private_:Z

.field private qty_:I

.field private seq_:I

.field private spec_:Lcom/explorestack/protobuf/Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10190
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 10198
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2922
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7613
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedIsInitialized:B

    .line 2923
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    .line 2924
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    .line 2925
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    .line 2926
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    .line 2927
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    .line 2928
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2947
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>()V

    .line 2949
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2953
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 2957
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 3064
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/openrtb/Request$Item;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 3052
    :sswitch_0
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_1

    .line 3053
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 3055
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 3057
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 3058
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_2

    .line 3043
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 3046
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    .line 3047
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 3046
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3030
    :sswitch_2
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v3, :cond_3

    .line 3031
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v4

    .line 3033
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Any;

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v4, :cond_0

    .line 3035
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    .line 3036
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 3025
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    goto :goto_0

    :sswitch_4
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_4

    .line 3016
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 3019
    :cond_4
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    .line 3020
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 3019
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_5

    .line 3007
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 3010
    :cond_5
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    .line 3011
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 3010
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3002
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    goto/16 :goto_0

    .line 2995
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2997
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2991
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    goto/16 :goto_0

    .line 2984
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2986
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2980
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    goto/16 :goto_0

    .line 2975
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    goto/16 :goto_0

    .line 2970
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    goto/16 :goto_0

    .line 2963
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2965
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
    move v1, v5

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3075
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3076
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3073
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_6

    .line 3079
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    :cond_6
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_7

    .line 3082
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    :cond_7
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_8

    .line 3085
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    .line 3087
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->makeExtensionsImmutable()V

    .line 3089
    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_a

    .line 3079
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    :cond_a
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_b

    .line 3082
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    :cond_b
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_c

    .line 3085
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    .line 3087
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x10 -> :sswitch_c
        0x18 -> :sswitch_b
        0x21 -> :sswitch_a
        0x32 -> :sswitch_9
        0x38 -> :sswitch_8
        0x42 -> :sswitch_7
        0x48 -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x60 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2913
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2920
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7613
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 2913
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$5800()Z
    .locals 1

    .line 2913
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;
    .locals 0

    .line 2913
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2913
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I
    .locals 0

    .line 2913
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    return p1
.end method

.method static synthetic access$6202(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I
    .locals 0

    .line 2913
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    return p1
.end method

.method static synthetic access$6302(Lcom/explorestack/protobuf/openrtb/Request$Item;D)D
    .locals 0

    .line 2913
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    return-wide p1
.end method

.method static synthetic access$6400(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;
    .locals 0

    .line 2913
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2913
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I
    .locals 0

    .line 2913
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    return p1
.end method

.method static synthetic access$6600(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;
    .locals 0

    .line 2913
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6602(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2913
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I
    .locals 0

    .line 2913
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    return p1
.end method

.method static synthetic access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;
    .locals 0

    .line 2913
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6802(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2913
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;
    .locals 0

    .line 2913
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6902(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2913
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/explorestack/protobuf/openrtb/Request$Item;Z)Z
    .locals 0

    .line 2913
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;
    .locals 0

    .line 2913
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 2913
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;
    .locals 0

    .line 2913
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2913
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7400()Z
    .locals 1

    .line 2913
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7500()Z
    .locals 1

    .line 2913
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7600()Z
    .locals 1

    .line 2913
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 2913
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$7800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 2913
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2913
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2913
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2913
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 10194
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3093
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 7910
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 7913
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7883
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7884
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7890
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7891
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7851
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7857
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7896
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7897
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7903
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7904
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7871
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7872
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7878
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7879
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7840
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7846
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7861
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7867
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation

    .line 10209
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7741
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-nez v1, :cond_1

    .line 7742
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7744
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 7746
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v1

    .line 7747
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 7748
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v1

    .line 7749
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7750
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v1

    .line 7751
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 7752
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 7754
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v5

    .line 7753
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 7755
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v1

    .line 7756
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 7757
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v1

    .line 7758
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 7759
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v1

    .line 7760
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 7761
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v1

    .line 7762
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 7763
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getMetricList()Ljava/util/List;

    move-result-object v1

    .line 7764
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getMetricList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 7765
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDealList()Ljava/util/List;

    move-result-object v1

    .line 7766
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDealList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 7767
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v1

    .line 7768
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 7769
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 7770
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 7771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 7772
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 7774
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 7775
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 7777
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 7779
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 7780
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 7781
    :cond_11
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public getDeal(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1

    .line 7429
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p1
.end method

.method public getDealCount()I
    .locals 1

    .line 7418
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDealList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation

    .line 7395
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    return-object v0
.end method

.method public getDealOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;
    .locals 1

    .line 7441
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;

    return-object p1
.end method

.method public getDealOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7407
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 10219
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object v0
.end method

.method public getDlvy()I
    .locals 1

    .line 7321
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    return v0
.end method

.method public getDt()Ljava/lang/String;
    .locals 2

    .line 7271
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    .line 7272
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7273
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7275
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7277
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7278
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDtBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7294
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    .line 7295
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7296
    check-cast v0, Ljava/lang/String;

    .line 7297
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7299
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    return-object v0

    .line 7302
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .line 7255
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    return v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 7539
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 7550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 7598
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 7587
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 7564
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 7610
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7576
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getFlr()D
    .locals 2

    .line 7189
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    return-wide v0
.end method

.method public getFlrcur()Ljava/lang/String;
    .locals 2

    .line 7206
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    .line 7207
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7208
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7210
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7212
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7213
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7230
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    .line 7231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7232
    check-cast v0, Ljava/lang/String;

    .line 7233
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7235
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 7238
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 7110
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    .line 7111
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7112
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7114
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7116
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7117
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7133
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    .line 7134
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7135
    check-cast v0, Ljava/lang/String;

    .line 7136
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7138
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    return-object v0

    .line 7141
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMetric(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1

    .line 7369
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p1
.end method

.method public getMetricCount()I
    .locals 1

    .line 7358
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetricList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation

    .line 7335
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    return-object v0
.end method

.method public getMetricOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;
    .locals 1

    .line 7381
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;

    return-object p1
.end method

.method public getMetricOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7347
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation

    .line 10214
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPrivate()Z
    .locals 1

    .line 7459
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    return v0
.end method

.method public getQty()I
    .locals 1

    .line 7158
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    return v0
.end method

.method public getSeq()I
    .locals 1

    .line 7174
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 7674
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7678
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7679
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7681
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 7683
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7685
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 7687
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7689
    :cond_3
    iget-wide v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    .line 7691
    invoke-static {v4, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 7693
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    .line 7694
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7696
    :cond_5
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    if-eqz v2, :cond_6

    const/4 v3, 0x7

    .line 7698
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7700
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDtBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    .line 7701
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7703
    :cond_7
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    if-eqz v2, :cond_8

    const/16 v3, 0x9

    .line 7705
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    move v2, v1

    .line 7707
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 7708
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    .line 7709
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/16 v4, 0xa

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    move v2, v1

    .line 7711
    :goto_2
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 7712
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    .line 7713
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7715
    :cond_a
    iget-boolean v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    if-eqz v2, :cond_b

    const/16 v3, 0xc

    .line 7717
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7719
    :cond_b
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    .line 7721
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7723
    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 7724
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    .line 7725
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0xe

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7727
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    .line 7729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7731
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7732
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedSize:I

    return v0
.end method

.method public getSpec()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 7496
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSpecOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 7512
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 2941
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 7527
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpec()Z
    .locals 1

    .line 7479
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 7787
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 7788
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedHashCode:I

    return v0

    .line 7791
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 7793
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 7795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 7797
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 7800
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 7799
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 7802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 7804
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 7806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 7808
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v0

    add-int/2addr v1, v0

    .line 7809
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getMetricCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 7811
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getMetricList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7813
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDealCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 7815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDealList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 7819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v0

    .line 7818
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 7820
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 7822
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Any;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7824
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 7826
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7828
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 7830
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    mul-int/lit8 v1, v1, 0x1d

    .line 7832
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 7833
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3099
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 3100
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7616
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7620
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2913
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 7908
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 7924
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2935
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 7917
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 7918
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7627
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7628
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7630
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 7631
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 7633
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 7634
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 7636
    :cond_2
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 7637
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 7639
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    .line 7640
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7642
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 7643
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 7645
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDtBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    .line 7646
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7648
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    .line 7649
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    .line 7651
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 7652
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    move v1, v0

    .line 7654
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 7655
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7657
    :cond_9
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    if-eqz v1, :cond_a

    const/16 v2, 0xc

    .line 7658
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7660
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v1, :cond_b

    const/16 v1, 0xd

    .line 7661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 7663
    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 7664
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7666
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    .line 7667
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 7669
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
