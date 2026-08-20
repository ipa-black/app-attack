.class final Ljdbm/recman/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field private block:J

.field private offset:S


# direct methods
.method constructor <init>(J)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    int-to-short v0, v0

    .line 74
    iput-short v0, p0, Ljdbm/recman/Location;->offset:S

    const/16 v0, 0x10

    shr-long/2addr p1, v0

    .line 75
    iput-wide p1, p0, Ljdbm/recman/Location;->block:J

    return-void
.end method

.method constructor <init>(JS)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Ljdbm/recman/Location;->block:J

    .line 64
    iput-short p3, p0, Ljdbm/recman/Location;->offset:S

    return-void
.end method

.method constructor <init>(Ljdbm/recman/PhysicalRowId;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljdbm/recman/PhysicalRowId;->getBlock()J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/recman/Location;->block:J

    .line 83
    invoke-virtual {p1}, Ljdbm/recman/PhysicalRowId;->getOffset()S

    move-result p1

    iput-short p1, p0, Ljdbm/recman/Location;->offset:S

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 112
    instance-of v1, p1, Ljdbm/recman/Location;

    if-nez v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    check-cast p1, Ljdbm/recman/Location;

    .line 115
    iget-wide v1, p1, Ljdbm/recman/Location;->block:J

    iget-wide v3, p0, Ljdbm/recman/Location;->block:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-short p1, p1, Ljdbm/recman/Location;->offset:S

    iget-short v1, p0, Ljdbm/recman/Location;->offset:S

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method getBlock()J
    .locals 2

    .line 90
    iget-wide v0, p0, Ljdbm/recman/Location;->block:J

    return-wide v0
.end method

.method getOffset()S
    .locals 1

    .line 97
    iget-short v0, p0, Ljdbm/recman/Location;->offset:S

    return v0
.end method

.method toLong()J
    .locals 4

    .line 106
    iget-wide v0, p0, Ljdbm/recman/Location;->block:J

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    iget-short v2, p0, Ljdbm/recman/Location;->offset:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PL("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ljdbm/recman/Location;->block:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Ljdbm/recman/Location;->offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
