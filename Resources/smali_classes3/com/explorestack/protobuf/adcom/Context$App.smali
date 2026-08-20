.class public final Lcom/explorestack/protobuf/adcom/Context$App;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Context.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$AppOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "App"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$App$Builder;,
        Lcom/explorestack/protobuf/adcom/Context$App$Content;,
        Lcom/explorestack/protobuf/adcom/Context$App$ContentOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Context$App$Publisher;,
        Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;
    }
.end annotation


# static fields
.field public static final BUNDLE_FIELD_NUMBER:I = 0xc

.field public static final CATTAX_FIELD_NUMBER:I = 0x9

.field public static final CAT_FIELD_NUMBER:I = 0x6

.field public static final CONTENT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App;

.field public static final DOMAIN_FIELD_NUMBER:I = 0x5

.field public static final EXT_FIELD_NUMBER:I = 0x12

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x11

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final KEYWORDS_FIELD_NUMBER:I = 0xb

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final PAGECAT_FIELD_NUMBER:I = 0x8

.field public static final PAID_FIELD_NUMBER:I = 0x10

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVPOLICY_FIELD_NUMBER:I = 0xa

.field public static final PUB_FIELD_NUMBER:I = 0x3

.field public static final SECTCAT_FIELD_NUMBER:I = 0x7

.field public static final STOREID_FIELD_NUMBER:I = 0xd

.field public static final STOREURL_FIELD_NUMBER:I = 0xe

.field public static final VER_FIELD_NUMBER:I = 0xf

.field private static final serialVersionUID:J


# instance fields
.field private volatile bundle_:Ljava/lang/Object;

.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

.field private volatile domain_:Ljava/lang/Object;

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

.field private volatile keywords_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private pagecat_:Lcom/explorestack/protobuf/LazyStringList;

.field private paid_:Z

.field private privpolicy_:Z

.field private pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

.field private sectcat_:Lcom/explorestack/protobuf/LazyStringList;

.field private volatile storeid_:Ljava/lang/Object;

.field private volatile storeurl_:Ljava/lang/Object;

.field private volatile ver_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14410
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$App;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App;

    .line 14418
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$App$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 614
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 11583
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedIsInitialized:B

    .line 615
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    .line 616
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    .line 617
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    .line 618
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 619
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 620
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v1, 0x0

    .line 621
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    .line 622
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    .line 623
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    .line 624
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    .line 625
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    .line 626
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    .line 627
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 646
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App;-><init>()V

    .line 648
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 656
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 801
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/adcom/Context$App;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 789
    :sswitch_0
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_1

    .line 790
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 792
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 794
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 795
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_2

    .line 780
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 783
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    .line 784
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 783
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 775
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->paid_:Z

    goto :goto_0

    .line 768
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 770
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    goto :goto_0

    .line 762
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 764
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    goto :goto_0

    .line 756
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 758
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    goto :goto_0

    .line 750
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 752
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    goto :goto_0

    .line 744
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 746
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    goto :goto_0

    .line 740
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->privpolicy_:Z

    goto :goto_0

    .line 733
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 735
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    goto/16 :goto_0

    .line 724
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_3

    .line 726
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x4

    .line 729
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 715
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_4

    .line 717
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 720
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 706
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_5

    .line 708
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 711
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 700
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 702
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 688
    :sswitch_e
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    if-eqz v3, :cond_6

    .line 689
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$App$Content;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;

    move-result-object v4

    .line 691
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$App$Content;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    if-eqz v4, :cond_0

    .line 693
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;

    .line 694
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    goto/16 :goto_0

    .line 675
    :sswitch_f
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-eqz v3, :cond_7

    .line 676
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v4

    .line 678
    :cond_7
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-eqz v4, :cond_0

    .line 680
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 681
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    goto/16 :goto_0

    .line 668
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 670
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 662
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 664
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_12
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

    .line 812
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 813
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 810
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_8

    .line 816
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_8
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_9

    .line 819
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_9
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_a

    .line 822
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_a
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_b

    .line 825
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    .line 827
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 828
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->makeExtensionsImmutable()V

    .line 829
    throw p1

    :cond_c
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_d

    .line 816
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_e

    .line 819
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_f

    .line 822
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_10

    .line 825
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    .line 827
    :cond_10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 828
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0xa -> :sswitch_11
        0x12 -> :sswitch_10
        0x1a -> :sswitch_f
        0x22 -> :sswitch_e
        0x2a -> :sswitch_d
        0x32 -> :sswitch_c
        0x3a -> :sswitch_b
        0x42 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
        0x62 -> :sswitch_6
        0x6a -> :sswitch_5
        0x72 -> :sswitch_4
        0x7a -> :sswitch_3
        0x80 -> :sswitch_2
        0x8a -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 605
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 612
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 11583
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 605
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/explorestack/protobuf/adcom/Context$App;)I
    .locals 0

    .line 605
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    return p0
.end method

.method static synthetic access$10002(Lcom/explorestack/protobuf/adcom/Context$App;I)I
    .locals 0

    .line 605
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    return p1
.end method

.method static synthetic access$10102(Lcom/explorestack/protobuf/adcom/Context$App;Z)Z
    .locals 0

    .line 605
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->privpolicy_:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10202(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10300(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10302(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10402(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10500(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10502(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10602(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/explorestack/protobuf/adcom/Context$App;Z)Z
    .locals 0

    .line 605
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->paid_:Z

    return p1
.end method

.method static synthetic access$10802(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$10900(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/util/List;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10902(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11000()Z
    .locals 1

    .line 605
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$App;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11100(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$11200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 605
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9000()Z
    .locals 1

    .line 605
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$App;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9202(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9302(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/adcom/Context$App$Content;)Lcom/explorestack/protobuf/adcom/Context$App$Content;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/explorestack/protobuf/adcom/Context$App;)Ljava/lang/Object;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9602(Lcom/explorestack/protobuf/adcom/Context$App;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9700(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$9702(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$9800(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$9802(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$9900(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$9902(Lcom/explorestack/protobuf/adcom/Context$App;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1

    .line 14414
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 833
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 11936
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 11939
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11909
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 11910
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11916
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 11917
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11877
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11883
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11922
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 11923
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11929
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 11930
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11897
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 11898
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11904
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 11905
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11866
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11872
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11887
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11893
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App;",
            ">;"
        }
    .end annotation

    .line 14429
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11746
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$App;

    if-nez v1, :cond_1

    .line 11747
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 11749
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App;

    .line 11751
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getId()Ljava/lang/String;

    move-result-object v1

    .line 11752
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 11753
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getName()Ljava/lang/String;

    move-result-object v1

    .line 11754
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 11755
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasPub()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->hasPub()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 11756
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasPub()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v1

    .line 11758
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 11760
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasContent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->hasContent()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 11761
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v1

    .line 11763
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$App$Content;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 11765
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 11766
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 11767
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 11768
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 11769
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getSectcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 11770
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getSectcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 11771
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPagecatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 11772
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPagecatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 11773
    :cond_b
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    iget v3, p1, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    if-eq v1, v3, :cond_c

    return v2

    .line 11774
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPrivpolicy()Z

    move-result v1

    .line 11775
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPrivpolicy()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 11776
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 11777
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 11778
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getBundle()Ljava/lang/String;

    move-result-object v1

    .line 11779
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getBundle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 11780
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreid()Ljava/lang/String;

    move-result-object v1

    .line 11781
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 11782
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreurl()Ljava/lang/String;

    move-result-object v1

    .line 11783
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreurl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 11784
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getVer()Ljava/lang/String;

    move-result-object v1

    .line 11785
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 11786
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPaid()Z

    move-result v1

    .line 11787
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getPaid()Z

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    .line 11788
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_14

    return v2

    .line 11789
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 11790
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 11791
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 11793
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 11794
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 11795
    :cond_16
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getBundle()Ljava/lang/String;
    .locals 2

    .line 11298
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    .line 11299
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11300
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11302
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11304
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11305
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11320
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    .line 11321
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11322
    check-cast v0, Ljava/lang/String;

    .line 11323
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11325
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 11328
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCat(I)Ljava/lang/String;
    .locals 1

    .line 11104
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 11117
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCatCount()I
    .locals 1

    .line 11092
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 11081
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 11221
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11222
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public getCattaxValue()I
    .locals 1

    .line 11213
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    return v0
.end method

.method public getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;
    .locals 1

    .line 11009
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContentOrBuilder()Lcom/explorestack/protobuf/adcom/Context$App$ContentOrBuilder;
    .locals 1

    .line 11020
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App;
    .locals 1

    .line 14439
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .line 11035
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    .line 11036
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11037
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11039
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11041
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11042
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11057
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    .line 11058
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11059
    check-cast v0, Ljava/lang/String;

    .line 11060
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11062
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    return-object v0

    .line 11065
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 11509
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 11520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 11568
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 11557
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

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

    .line 11534
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 11580
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

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

    .line 11546
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 10867
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    .line 10868
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10869
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10871
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 10873
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10874
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 10889
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    .line 10890
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10891
    check-cast v0, Ljava/lang/String;

    .line 10892
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 10894
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    return-object v0

    .line 10897
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 2

    .line 11252
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    .line 11253
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11254
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11256
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11258
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11259
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    return-object v0
.end method

.method public getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11274
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    .line 11275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11276
    check-cast v0, Ljava/lang/String;

    .line 11277
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11279
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    return-object v0

    .line 11282
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 10913
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    .line 10914
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10915
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10917
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 10919
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10920
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 10935
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    .line 10936
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10937
    check-cast v0, Ljava/lang/String;

    .line 10938
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 10940
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    return-object v0

    .line 10943
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPagecat(I)Ljava/lang/String;
    .locals 1

    .line 11194
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPagecatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 11203
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPagecatCount()I
    .locals 1

    .line 11186
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPagecatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 11179
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getPagecatList()Ljava/util/List;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPagecatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getPaid()Z
    .locals 1

    .line 11482
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->paid_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App;",
            ">;"
        }
    .end annotation

    .line 14434
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPrivpolicy()Z
    .locals 1

    .line 11237
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->privpolicy_:Z

    return v0
.end method

.method public getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1

    .line 10971
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPubOrBuilder()Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;
    .locals 1

    .line 10982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public getSectcat(I)Ljava/lang/String;
    .locals 1

    .line 11155
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSectcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 11168
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSectcatCount()I
    .locals 1

    .line 11143
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSectcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 11132
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getSectcatList()Ljava/util/List;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getSectcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 11656
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 11660
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 11661
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 11663
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 11664
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11666
    :cond_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 11668
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11670
    :cond_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 11672
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11674
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getDomainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 11675
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    move v2, v1

    move v3, v2

    .line 11679
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 11680
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/adcom/Context$App;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v3

    .line 11683
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v1

    move v3, v2

    .line 11687
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 11688
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/adcom/Context$App;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v0, v3

    .line 11691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getSectcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v1

    move v3, v2

    .line 11695
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 11696
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/adcom/Context$App;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/2addr v0, v3

    .line 11699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPagecatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 11701
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_9

    const/16 v2, 0x9

    .line 11702
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    .line 11703
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11705
    :cond_9
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->privpolicy_:Z

    if-eqz v2, :cond_a

    const/16 v3, 0xa

    .line 11707
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11709
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0xb

    .line 11710
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11712
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xc

    .line 11713
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11715
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xd

    .line 11716
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11718
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v2, 0xe

    .line 11719
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11721
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    const/16 v2, 0xf

    .line 11722
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11724
    :cond_f
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->paid_:Z

    if-eqz v2, :cond_10

    const/16 v3, 0x10

    .line 11726
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11728
    :cond_10
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 11729
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    .line 11730
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0x11

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 11732
    :cond_11
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_12

    const/16 v1, 0x12

    .line 11734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11736
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11737
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedSize:I

    return v0
.end method

.method public getStoreid()Ljava/lang/String;
    .locals 2

    .line 11344
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    .line 11345
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11346
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11348
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11350
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11351
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStoreidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11366
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    .line 11367
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11368
    check-cast v0, Ljava/lang/String;

    .line 11369
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11371
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    return-object v0

    .line 11374
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStoreurl()Ljava/lang/String;
    .locals 2

    .line 11390
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    .line 11391
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11392
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11394
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11396
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11397
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStoreurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11412
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    .line 11413
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11414
    check-cast v0, Ljava/lang/String;

    .line 11415
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11417
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    return-object v0

    .line 11420
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .line 11436
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    .line 11437
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11438
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11440
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11442
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11443
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11458
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    .line 11459
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11460
    check-cast v0, Ljava/lang/String;

    .line 11461
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11463
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    return-object v0

    .line 11466
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 10997
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

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

    .line 11497
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPub()Z
    .locals 1

    .line 10959
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

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

    .line 11801
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 11802
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedHashCode:I

    return v0

    .line 11805
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 11807
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 11809
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 11810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasPub()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 11812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 11814
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 11816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 11819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 11820
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getCatCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 11822
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 11824
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getSectcatCount()I

    move-result v0

    if-lez v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 11826
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getSectcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 11828
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPagecatCount()I

    move-result v0

    if-lez v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 11830
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPagecatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 11833
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 11836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPrivpolicy()Z

    move-result v0

    .line 11835
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 11838
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 11840
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 11842
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 11844
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 11846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 11849
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPaid()Z

    move-result v0

    .line 11848
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 11850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 11852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 11854
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 11856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    mul-int/lit8 v1, v1, 0x1d

    .line 11858
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 11859
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 839
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$App;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 840
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 11586
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 11590
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 605
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 1

    .line 11934
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 2

    .line 11950
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 634
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$App;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$App;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;
    .locals 2

    .line 11943
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 11944
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

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

    .line 11597
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11598
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11600
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 11601
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11603
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pub_:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 11604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getPub()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 11606
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->content_:Lcom/explorestack/protobuf/adcom/Context$App$Content;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 11607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getContent()Lcom/explorestack/protobuf/adcom/Context$App$Content;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 11609
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getDomainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 11610
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->domain_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    .line 11612
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 11613
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v0

    .line 11615
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 11616
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->sectcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v1, v0

    .line 11618
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 11619
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->pagecat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11621
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_8

    const/16 v1, 0x9

    .line 11622
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->cattax_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11624
    :cond_8
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->privpolicy_:Z

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 11625
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11627
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    .line 11628
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->keywords_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11630
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xc

    .line 11631
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->bundle_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11633
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    .line 11634
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeid_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11636
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getStoreurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    .line 11637
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->storeurl_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11639
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xf

    .line 11640
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ver_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11642
    :cond_e
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->paid_:Z

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 11643
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11645
    :cond_f
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 11646
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 11648
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_11

    const/16 v0, 0x12

    .line 11649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 11651
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
