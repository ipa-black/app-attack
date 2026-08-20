.class public final Lcom/explorestack/protobuf/adcom/Ad$Audit;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Ad.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    }
.end annotation


# static fields
.field public static final CORR_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Audit;

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field public static final FEEDBACK_FIELD_NUMBER:I = 0x2

.field public static final INIT_FIELD_NUMBER:I = 0x3

.field public static final LASTMOD_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private corr_:Lcom/explorestack/protobuf/adcom/Ad;

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

.field private feedback_:Lcom/explorestack/protobuf/LazyStringList;

.field private volatile init_:Ljava/lang/Object;

.field private volatile lastmod_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25792
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 25800
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Audit$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23784
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 24236
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 23785
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    .line 23786
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23787
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    .line 23788
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    .line 23789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23808
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;-><init>()V

    .line 23810
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23814
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 23818
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    const/16 v5, 0x8

    if-eq v3, v5, :cond_b

    const/16 v5, 0x12

    if-eq v3, v5, :cond_9

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_8

    const/16 v5, 0x22

    if-eq v3, v5, :cond_7

    const/16 v5, 0x2a

    const/4 v6, 0x0

    if-eq v3, v5, :cond_5

    const/16 v5, 0x32

    if-eq v3, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    .line 23886
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 23874
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_2

    .line 23875
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v6

    .line 23877
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v6, :cond_0

    .line 23879
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 23880
    invoke-virtual {v6}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_4

    .line 23865
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 23868
    :cond_4
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    .line 23869
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 23868
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23852
    :cond_5
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v3, :cond_6

    .line 23853
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Ad;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v6

    .line 23855
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Ad;

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v6, :cond_0

    .line 23857
    invoke-virtual {v6, v3}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 23858
    invoke-virtual {v6}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    goto/16 :goto_0

    .line 23845
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 23847
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 23839
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 23841
    iput-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 23830
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_a

    .line 23832
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 23835
    :cond_a
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23824
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 23826
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 23897
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 23898
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 23895
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_d

    .line 23901
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_e

    .line 23904
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    .line 23906
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 23907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->makeExtensionsImmutable()V

    .line 23908
    throw p1

    :cond_f
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_10

    .line 23901
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_10
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_11

    .line 23904
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    .line 23906
    :cond_11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 23907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23775
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 23782
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 24236
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 23775
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$18400()Z
    .locals 1

    .line 23775
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18600(Lcom/explorestack/protobuf/adcom/Ad$Audit;)I
    .locals 0

    .line 23775
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    return p0
.end method

.method static synthetic access$18602(Lcom/explorestack/protobuf/adcom/Ad$Audit;I)I
    .locals 0

    .line 23775
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    return p1
.end method

.method static synthetic access$18700(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 23775
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$18702(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 23775
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$18800(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/lang/Object;
    .locals 0

    .line 23775
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18802(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23775
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18900(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/lang/Object;
    .locals 0

    .line 23775
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18902(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23775
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19002(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;
    .locals 0

    .line 23775
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 23775
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;
    .locals 0

    .line 23775
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$19202(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 23775
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19300()Z
    .locals 1

    .line 23775
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$19400(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 23775
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$19500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 23775
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$19600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 23775
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 23775
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 23775
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1

    .line 25796
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 23912
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Audit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24455
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24458
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24428
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 24429
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24435
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 24436
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24396
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24402
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24441
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 24442
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24448
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 24449
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24416
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 24417
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24423
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 24424
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24385
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24391
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24406
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24412
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit;",
            ">;"
        }
    .end annotation

    .line 25811
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 24320
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-nez v1, :cond_1

    .line 24321
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 24323
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 24325
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 24326
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 24327
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 24328
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInit()Ljava/lang/String;

    move-result-object v1

    .line 24329
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 24330
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmod()Ljava/lang/String;

    move-result-object v1

    .line 24331
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 24332
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasCorr()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasCorr()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 24333
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasCorr()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v1

    .line 24335
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 24337
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 24338
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 24340
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 24342
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 24343
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 24344
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public getCorr()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 24123
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCorrOrBuilder()Lcom/explorestack/protobuf/adcom/AdOrBuilder;
    .locals 1

    .line 24135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 23775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 23775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1

    .line 25821
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 24162
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 24173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 24221
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 24210
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

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

    .line 24187
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 24233
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

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

    .line 24199
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public getFeedback(I)Ljava/lang/String;
    .locals 1

    .line 23988
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFeedbackBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 24002
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getFeedbackCount()I
    .locals 1

    .line 23975
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 23963
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getFeedbackList()Ljava/util/List;
    .locals 1

    .line 23775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getInit()Ljava/lang/String;
    .locals 2

    .line 24017
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    .line 24018
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24019
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 24021
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24023
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 24024
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    return-object v0
.end method

.method public getInitBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24039
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    .line 24040
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24041
    check-cast v0, Ljava/lang/String;

    .line 24042
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24044
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    return-object v0

    .line 24047
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getLastmod()Ljava/lang/String;
    .locals 2

    .line 24063
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    .line 24064
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24065
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 24067
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24069
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 24070
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastmodBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24085
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    .line 24086
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24087
    check-cast v0, Ljava/lang/String;

    .line 24088
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24090
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 24093
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
            "Lcom/explorestack/protobuf/adcom/Ad$Audit;",
            ">;"
        }
    .end annotation

    .line 25816
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 24276
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 24280
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_INVALID:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 24281
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    const/4 v1, 0x1

    .line 24282
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    move v3, v1

    .line 24286
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 24287
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 24290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 24292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInitBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 24293
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24295
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmodBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 24296
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24298
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 24300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24302
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 24303
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    .line 24304
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24306
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 24308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24310
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 24311
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedSize:I

    return v0
.end method

.method public getStatus()Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 1

    .line 23946
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->valueOf(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23947
    sget-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    :cond_0
    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 23934
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 23802
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCorr()Z
    .locals 1

    .line 24110
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

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

    .line 24150
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 24350
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 24351
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedHashCode:I

    return v0

    .line 24354
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 24356
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    add-int/2addr v1, v0

    .line 24357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getFeedbackCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 24359
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 24362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 24364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 24365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasCorr()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 24367
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 24369
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 24371
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 24373
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExtProtoCount()I

    move-result v0

    if-lez v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 24375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 24377
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 24378
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 23918
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Audit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 23919
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 24239
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 24243
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 23775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23775
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 23775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24453
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 24469
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 23796
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 23775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 23775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 24462
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 24463
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

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

    .line 24250
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_INVALID:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 24251
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->status_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 24253
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 24254
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24256
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInitBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 24257
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->init_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 24259
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmodBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    .line 24260
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->lastmod_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 24262
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 24263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 24265
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 24266
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->extProto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24268
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 24269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 24271
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
