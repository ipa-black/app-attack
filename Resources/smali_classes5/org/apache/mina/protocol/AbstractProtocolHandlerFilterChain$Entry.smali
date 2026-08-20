.class Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;
.super Ljava/lang/Object;
.source "AbstractProtocolHandlerFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private final filter:Lorg/apache/mina/protocol/ProtocolHandlerFilter;

.field private final name:Ljava/lang/String;

.field private nextEntry:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

.field private final nextFilter:Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

.field private prevEntry:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

.field private final prevFilter:Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

.field private final synthetic this$0:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->this$0:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    .line 489
    iput-object p2, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->prevEntry:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 490
    iput-object p3, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->nextEntry:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    .line 491
    iput-object p4, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->name:Ljava/lang/String;

    .line 492
    iput-object p5, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->filter:Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    .line 493
    new-instance p2, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$1;-><init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;)V

    iput-object p2, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->nextFilter:Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    .line 539
    new-instance p2, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$2;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry$2;-><init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;)V

    iput-object p2, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->prevFilter:Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    return-void

    .line 486
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 482
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "filter"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$1;)V
    .locals 0

    .line 463
    invoke-direct/range {p0 .. p5}, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;-><init>(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->nextEntry:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->nextEntry:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->filter:Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->prevEntry:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    return-object p0
.end method

.method static synthetic access$302(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->prevEntry:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;

    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->nextFilter:Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->prevFilter:Lorg/apache/mina/protocol/ProtocolHandlerFilter$NextFilter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->this$0:Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain;

    return-object p0
.end method


# virtual methods
.method public getFilter()Lorg/apache/mina/protocol/ProtocolHandlerFilter;
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->filter:Lorg/apache/mina/protocol/ProtocolHandlerFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolHandlerFilterChain$Entry;->name:Ljava/lang/String;

    return-object v0
.end method
