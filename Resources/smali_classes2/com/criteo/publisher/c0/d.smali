.class public Lcom/criteo/publisher/c0/d;
.super Ljava/lang/Object;
.source "UniqueIdGenerator.java"


# instance fields
.field private final a:Lcom/criteo/publisher/i;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/i;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/criteo/publisher/c0/d;->a:Lcom/criteo/publisher/i;

    return-void
.end method

.method private a(JI)B
    .locals 4

    add-int/lit8 p3, p3, 0x1

    rsub-int/lit8 p3, p3, 0x40

    shl-int/lit8 p3, p3, 0x2

    const-wide/16 v0, 0xf

    shl-long v2, v0, p3

    and-long/2addr p1, v2

    shr-long/2addr p1, p3

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    return p1
.end method

.method private a(JIB)J
    .locals 2

    add-int/lit8 p3, p3, 0x1

    rsub-int/lit8 p3, p3, 0x40

    shl-int/lit8 p3, p3, 0x2

    const-wide/16 v0, 0xf

    shl-long/2addr v0, p3

    not-long v0, v0

    and-long/2addr p1, v0

    int-to-long v0, p4

    shl-long p3, v0, p3

    or-long/2addr p1, p3

    return-wide p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/criteo/publisher/c0/d;->a:Lcom/criteo/publisher/i;

    invoke-interface {v0}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/criteo/publisher/c0/d;->a(Ljava/util/UUID;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/UUID;J)Ljava/lang/String;
    .locals 6

    .line 67
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 68
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/4 p1, 0x0

    .line 72
    invoke-direct {p0, v0, v1, p1}, Lcom/criteo/publisher/c0/d;->a(JI)B

    move-result v4

    const/16 v5, 0xc

    invoke-direct {p0, v0, v1, v5, v4}, Lcom/criteo/publisher/c0/d;->a(JIB)J

    move-result-wide v0

    const/4 v4, 0x1

    .line 73
    invoke-direct {p0, v0, v1, v4}, Lcom/criteo/publisher/c0/d;->a(JI)B

    move-result v4

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/criteo/publisher/c0/d;->a(JIB)J

    move-result-wide v2

    const/16 p1, 0x20

    shl-long p1, p2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr p1, v0

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%016x%016x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
