.class Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;
.super Ljava/lang/Object;
.source "BaseThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/BaseThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionBuffer"
.end annotation


# instance fields
.field private final eventQueue:Lorg/apache/mina/util/Queue;

.field private final session:Lorg/apache/mina/common/Session;


# direct methods
.method private constructor <init>(Lorg/apache/mina/common/Session;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->eventQueue:Lorg/apache/mina/util/Queue;

    .line 240
    iput-object p1, p0, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->session:Lorg/apache/mina/common/Session;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/common/Session;Lorg/apache/mina/util/BaseThreadPool$1;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;-><init>(Lorg/apache/mina/common/Session;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 232
    iget-object p0, p0, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->eventQueue:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/common/Session;
    .locals 0

    .line 232
    iget-object p0, p0, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->session:Lorg/apache/mina/common/Session;

    return-object p0
.end method
