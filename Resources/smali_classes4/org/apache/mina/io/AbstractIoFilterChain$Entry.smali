.class Lorg/apache/mina/io/AbstractIoFilterChain$Entry;
.super Ljava/lang/Object;
.source "AbstractIoFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/AbstractIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private final filter:Lorg/apache/mina/io/IoFilter;

.field private final name:Ljava/lang/String;

.field private nextEntry:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

.field private final nextFilter:Lorg/apache/mina/io/IoFilter$NextFilter;

.field private prevEntry:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

.field private final prevFilter:Lorg/apache/mina/io/IoFilter$NextFilter;

.field private final synthetic this$0:Lorg/apache/mina/io/AbstractIoFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->this$0:Lorg/apache/mina/io/AbstractIoFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    .line 490
    iput-object p2, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->prevEntry:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 491
    iput-object p3, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->nextEntry:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    .line 492
    iput-object p4, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->name:Ljava/lang/String;

    .line 493
    iput-object p5, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->filter:Lorg/apache/mina/io/IoFilter;

    .line 494
    new-instance p2, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$1;-><init>(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain;)V

    iput-object p2, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->nextFilter:Lorg/apache/mina/io/IoFilter$NextFilter;

    .line 540
    new-instance p2, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$2;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry$2;-><init>(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain;)V

    iput-object p2, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->prevFilter:Lorg/apache/mina/io/IoFilter$NextFilter;

    return-void

    .line 487
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "filter"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;Lorg/apache/mina/io/AbstractIoFilterChain$1;)V
    .locals 0

    .line 464
    invoke-direct/range {p0 .. p5}, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;-><init>(Lorg/apache/mina/io/AbstractIoFilterChain;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;
    .locals 0

    .line 464
    iget-object p0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->nextEntry:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;
    .locals 0

    .line 464
    iput-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->nextEntry:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter;
    .locals 0

    .line 464
    iget-object p0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->filter:Lorg/apache/mina/io/IoFilter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;
    .locals 0

    .line 464
    iget-object p0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->prevEntry:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    return-object p0
.end method

.method static synthetic access$302(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain$Entry;
    .locals 0

    .line 464
    iput-object p1, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->prevEntry:Lorg/apache/mina/io/AbstractIoFilterChain$Entry;

    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;
    .locals 0

    .line 464
    iget-object p0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->nextFilter:Lorg/apache/mina/io/IoFilter$NextFilter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/IoFilter$NextFilter;
    .locals 0

    .line 464
    iget-object p0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->prevFilter:Lorg/apache/mina/io/IoFilter$NextFilter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/io/AbstractIoFilterChain$Entry;)Lorg/apache/mina/io/AbstractIoFilterChain;
    .locals 0

    .line 464
    iget-object p0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->this$0:Lorg/apache/mina/io/AbstractIoFilterChain;

    return-object p0
.end method


# virtual methods
.method public getFilter()Lorg/apache/mina/io/IoFilter;
    .locals 1

    .line 589
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->filter:Lorg/apache/mina/io/IoFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/apache/mina/io/AbstractIoFilterChain$Entry;->name:Ljava/lang/String;

    return-object v0
.end method
