.class Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;
.super Ljava/lang/Object;
.source "AbstractProtocolFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/protocol/AbstractProtocolFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private final filter:Lorg/apache/mina/protocol/ProtocolFilter;

.field private final name:Ljava/lang/String;

.field private nextEntry:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

.field private final nextFilter:Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;

.field private prevEntry:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

.field private final prevFilter:Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;

.field private final synthetic this$0:Lorg/apache/mina/protocol/AbstractProtocolFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/protocol/AbstractProtocolFilterChain;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->this$0:Lorg/apache/mina/protocol/AbstractProtocolFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    .line 489
    iput-object p2, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->prevEntry:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    .line 490
    iput-object p3, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->nextEntry:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    .line 491
    iput-object p4, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->name:Ljava/lang/String;

    .line 492
    iput-object p5, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->filter:Lorg/apache/mina/protocol/ProtocolFilter;

    .line 493
    new-instance p2, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$1;-><init>(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolFilterChain;)V

    iput-object p2, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->nextFilter:Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;

    .line 539
    new-instance p2, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$2;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry$2;-><init>(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolFilterChain;)V

    iput-object p2, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->prevFilter:Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;

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

.method synthetic constructor <init>(Lorg/apache/mina/protocol/AbstractProtocolFilterChain;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$1;)V
    .locals 0

    .line 463
    invoke-direct/range {p0 .. p5}, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;-><init>(Lorg/apache/mina/protocol/AbstractProtocolFilterChain;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->nextEntry:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->nextEntry:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolFilter;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->filter:Lorg/apache/mina/protocol/ProtocolFilter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->prevEntry:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    return-object p0
.end method

.method static synthetic access$302(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->prevEntry:Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;

    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->nextFilter:Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->prevFilter:Lorg/apache/mina/protocol/ProtocolFilter$NextFilter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;)Lorg/apache/mina/protocol/AbstractProtocolFilterChain;
    .locals 0

    .line 463
    iget-object p0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->this$0:Lorg/apache/mina/protocol/AbstractProtocolFilterChain;

    return-object p0
.end method


# virtual methods
.method public getFilter()Lorg/apache/mina/protocol/ProtocolFilter;
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->filter:Lorg/apache/mina/protocol/ProtocolFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/apache/mina/protocol/AbstractProtocolFilterChain$Entry;->name:Ljava/lang/String;

    return-object v0
.end method
