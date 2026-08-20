.class public final Lcom/explorestack/protobuf/adcom/Ad;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Ad.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/AdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Builder;,
        Lcom/explorestack/protobuf/adcom/Ad$Audit;,
        Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Ad$Video;,
        Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display;,
        Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Ad$Event;,
        Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    }
.end annotation


# static fields
.field public static final ADOMAIN_FIELD_NUMBER:I = 0x2

.field public static final AUDIT_FIELD_NUMBER:I = 0x10

.field public static final BUNDLE_FIELD_NUMBER:I = 0x3

.field public static final CATTAX_FIELD_NUMBER:I = 0x6

.field public static final CAT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad;

.field public static final DISPLAY_FIELD_NUMBER:I = 0xd

.field public static final EXT_FIELD_NUMBER:I = 0x12

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x11

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final INIT_FIELD_NUMBER:I = 0xb

.field public static final IURL_FIELD_NUMBER:I = 0x4

.field public static final LANG_FIELD_NUMBER:I = 0x7

.field public static final LASTMOD_FIELD_NUMBER:I = 0xc

.field public static final MRATING_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURE_FIELD_NUMBER:I = 0x9

.field public static final VIDEO_FIELD_NUMBER:I = 0xe

.field private static final serialVersionUID:J


# instance fields
.field private adomain_:Lcom/explorestack/protobuf/LazyStringList;

.field private audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

.field private bundle_:Lcom/explorestack/protobuf/LazyStringList;

.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

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

.field private volatile id_:Ljava/lang/Object;

.field private volatile init_:Ljava/lang/Object;

.field private volatile iurl_:Ljava/lang/Object;

.field private volatile lang_:Ljava/lang/Object;

.field private volatile lastmod_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private mrating_:I

.field private secure_:Z

.field private video_:Lcom/explorestack/protobuf/adcom/Ad$Video;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29220
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad;

    .line 29228
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 26484
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 21
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    .line 25
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    .line 26
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    .line 27
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad;-><init>()V

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 199
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/adcom/Ad;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 187
    :sswitch_0
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 190
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 192
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 193
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_2

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 181
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    .line 182
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 181
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :sswitch_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v4

    .line 168
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 171
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    goto :goto_0

    .line 152
    :sswitch_3
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-eqz v3, :cond_4

    .line 153
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v4

    .line 155
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Ad$Video;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    .line 158
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    goto/16 :goto_0

    .line 139
    :sswitch_4
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v3, :cond_5

    .line 140
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Ad$Display;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v4

    .line 142
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Ad$Display;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 145
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    goto/16 :goto_0

    .line 132
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 134
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 128
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 120
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 122
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    goto/16 :goto_0

    .line 116
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->secure_:Z

    goto/16 :goto_0

    .line 109
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 111
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 103
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 105
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    goto/16 :goto_0

    .line 94
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_6

    .line 96
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x4

    .line 99
    :cond_6
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 88
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 90
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 79
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_7

    .line 81
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 84
    :cond_7
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 70
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_8

    .line 72
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 75
    :cond_8
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 66
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_10
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

    .line 210
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 211
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 208
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_9

    .line 214
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_9
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_a

    .line 217
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_a
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_b

    .line 220
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_b
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_c

    .line 223
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    .line 225
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->makeExtensionsImmutable()V

    .line 227
    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_e

    .line 214
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_f

    .line 217
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_10

    .line 220
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_10
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_11

    .line 223
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    .line 225
    :cond_11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x30 -> :sswitch_a
        0x3a -> :sswitch_9
        0x48 -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x6a -> :sswitch_4
        0x72 -> :sswitch_3
        0x82 -> :sswitch_2
        0x8a -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 26484
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$20200()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$20400(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20402(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20500(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$20502(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20600(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$20602(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20700(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20702(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20800(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$20802(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20900(Lcom/explorestack/protobuf/adcom/Ad;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    return p0
.end method

.method static synthetic access$20902(Lcom/explorestack/protobuf/adcom/Ad;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    return p1
.end method

.method static synthetic access$21000(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$21002(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21102(Lcom/explorestack/protobuf/adcom/Ad;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->secure_:Z

    return p1
.end method

.method static synthetic access$21200(Lcom/explorestack/protobuf/adcom/Ad;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    return p0
.end method

.method static synthetic access$21202(Lcom/explorestack/protobuf/adcom/Ad;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    return p1
.end method

.method static synthetic access$21300(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$21302(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21400(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$21402(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21502(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p1
.end method

.method static synthetic access$21602(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p1
.end method

.method static synthetic access$21702(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p1
.end method

.method static synthetic access$21802(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$21902(Lcom/explorestack/protobuf/adcom/Ad;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$22000()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$22100(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$22200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$22300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$23000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 29224
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 231
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26821
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26824
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26794
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26795
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26801
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26802
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26762
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26768
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26807
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26808
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26814
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26815
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26782
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26783
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26789
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26790
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26751
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26757
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26772
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26778
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            ">;"
        }
    .end annotation

    .line 29239
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 26636
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v1, :cond_1

    .line 26637
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 26639
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad;

    .line 26641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v1

    .line 26642
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 26643
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 26644
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 26645
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 26646
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 26647
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getIurl()Ljava/lang/String;

    move-result-object v1

    .line 26648
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getIurl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 26649
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 26650
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 26651
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    iget v3, p1, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    if-eq v1, v3, :cond_7

    return v2

    .line 26652
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getLang()Ljava/lang/String;

    move-result-object v1

    .line 26653
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 26654
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getSecure()Z

    move-result v1

    .line 26655
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getSecure()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 26656
    :cond_9
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    iget v3, p1, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    if-eq v1, v3, :cond_a

    return v2

    .line 26657
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getInit()Ljava/lang/String;

    move-result-object v1

    .line 26658
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getInit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 26659
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmod()Ljava/lang/String;

    move-result-object v1

    .line 26660
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 26661
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 26662
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 26663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v1

    .line 26664
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Ad$Display;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 26666
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 26667
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 26668
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v1

    .line 26669
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Ad$Video;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 26671
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasAudit()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasAudit()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 26672
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasAudit()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 26673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v1

    .line 26674
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 26676
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    .line 26677
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 26678
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 26679
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 26681
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 26682
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 26683
    :cond_15
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public getAdomain(I)Ljava/lang/String;
    .locals 1

    .line 25907
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAdomainBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 25920
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAdomainCount()I
    .locals 1

    .line 25895
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 25884
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getAdomainList()Ljava/util/List;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1

    .line 26376
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAuditOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;
    .locals 1

    .line 26383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public getBundle(I)Ljava/lang/String;
    .locals 1

    .line 25961
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBundleBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 25975
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBundleCount()I
    .locals 1

    .line 25948
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 25936
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getBundleList()Ljava/util/List;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCat(I)Ljava/lang/String;
    .locals 1

    .line 26061
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 26074
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCatCount()I
    .locals 1

    .line 26049
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 26038
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 26100
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26101
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 26088
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 29249
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad;

    return-object v0
.end method

.method public getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1

    .line 26308
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDisplayOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;
    .locals 1

    .line 26319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 26410
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 26421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 26469
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 26458
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

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

    .line 26435
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 26481
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

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

    .line 26447
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 25838
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    .line 25839
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25840
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 25842
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 25844
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 25845
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 25860
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    .line 25861
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25862
    check-cast v0, Ljava/lang/String;

    .line 25863
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 25865
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    return-object v0

    .line 25868
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInit()Ljava/lang/String;
    .locals 2

    .line 26204
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    .line 26205
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26206
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 26208
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26210
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26211
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    return-object v0
.end method

.method public getInitBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26226
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    .line 26227
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26228
    check-cast v0, Ljava/lang/String;

    .line 26229
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26231
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    return-object v0

    .line 26234
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIurl()Ljava/lang/String;
    .locals 2

    .line 25991
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    .line 25992
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25993
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 25995
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 25997
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 25998
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26014
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    .line 26015
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26016
    check-cast v0, Ljava/lang/String;

    .line 26017
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26019
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    return-object v0

    .line 26022
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    .line 26116
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    .line 26117
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26118
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 26120
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26122
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26123
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLangBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26138
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    .line 26139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26140
    check-cast v0, Ljava/lang/String;

    .line 26141
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26143
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    return-object v0

    .line 26146
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getLastmod()Ljava/lang/String;
    .locals 2

    .line 26250
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    .line 26251
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26252
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 26254
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26256
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26257
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastmodBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26272
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    .line 26273
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26274
    check-cast v0, Ljava/lang/String;

    .line 26275
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26277
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 26280
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMrating()Lcom/explorestack/protobuf/adcom/MediaRating;
    .locals 1

    .line 26188
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/MediaRating;->valueOf(I)Lcom/explorestack/protobuf/adcom/MediaRating;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26189
    sget-object v0, Lcom/explorestack/protobuf/adcom/MediaRating;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/MediaRating;

    :cond_0
    return-object v0
.end method

.method public getMratingValue()I
    .locals 1

    .line 26176
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            ">;"
        }
    .end annotation

    .line 29244
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .line 26162
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->secure_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 26551
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 26555
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 26556
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    move v3, v2

    .line 26560
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 26561
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/adcom/Ad;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 26564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v1

    move v3, v2

    .line 26568
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 26569
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/adcom/Ad;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    .line 26572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 26574
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getIurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 26575
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    move v2, v1

    move v3, v2

    .line 26579
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 26580
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/adcom/Ad;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v3

    .line 26583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 26585
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_6

    const/4 v2, 0x6

    .line 26586
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    .line 26587
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 26589
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getLangBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x7

    .line 26590
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26592
    :cond_7
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->secure_:Z

    if-eqz v2, :cond_8

    const/16 v3, 0x9

    .line 26594
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 26596
    :cond_8
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/MediaRating;->MEDIA_RATING_INVALID:Lcom/explorestack/protobuf/adcom/MediaRating;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/MediaRating;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_9

    const/16 v2, 0xa

    .line 26597
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    .line 26598
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 26600
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getInitBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0xb

    .line 26601
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26603
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmodBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0xc

    .line 26604
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26606
    :cond_b
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    .line 26608
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26610
    :cond_c
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    .line 26612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26614
    :cond_d
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v2, :cond_e

    const/16 v2, 0x10

    .line 26616
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26618
    :cond_e
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 26619
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    .line 26620
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0x11

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 26622
    :cond_f
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_10

    const/16 v1, 0x12

    .line 26624
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26626
    :cond_10
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 26627
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1

    .line 26346
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVideoOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;
    .locals 1

    .line 26357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public hasAudit()Z
    .locals 1

    .line 26368
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisplay()Z
    .locals 1

    .line 26296
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExt()Z
    .locals 1

    .line 26398
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .line 26334
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

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

    .line 26689
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 26690
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedHashCode:I

    return v0

    .line 26693
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 26695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 26698
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26700
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getBundleCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 26702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 26705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getIurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26706
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getCatCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 26708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 26711
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 26713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 26716
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getSecure()Z

    move-result v0

    .line 26715
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 26718
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 26720
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getInit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 26722
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26723
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 26725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26727
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 26729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26731
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasAudit()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 26733
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26735
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 26737
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26739
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 26741
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    mul-int/lit8 v1, v1, 0x1d

    .line 26743
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 26744
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 237
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 26487
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 26491
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26819
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 26835
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 36
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 26828
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 26829
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

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

    .line 26498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26499
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 26501
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 26502
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 26504
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 26505
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26507
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getIurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    .line 26508
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->iurl_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    move v1, v0

    .line 26510
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 26511
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26513
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x6

    .line 26514
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->cattax_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 26516
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getLangBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    .line 26517
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->lang_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 26519
    :cond_6
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->secure_:Z

    if-eqz v1, :cond_7

    const/16 v2, 0x9

    .line 26520
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 26522
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/MediaRating;->MEDIA_RATING_INVALID:Lcom/explorestack/protobuf/adcom/MediaRating;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/MediaRating;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_8

    const/16 v1, 0xa

    .line 26523
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->mrating_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 26525
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getInitBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xb

    .line 26526
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->init_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 26528
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmodBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xc

    .line 26529
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad;->lastmod_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 26531
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v1, :cond_b

    const/16 v1, 0xd

    .line 26532
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 26534
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-eqz v1, :cond_c

    const/16 v1, 0xe

    .line 26535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 26537
    :cond_c
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v1, :cond_d

    const/16 v1, 0x10

    .line 26538
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 26540
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 26541
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 26543
    :cond_e
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    .line 26544
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 26546
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
