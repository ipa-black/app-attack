.class Ljdbm/recman/RecordHeader;
.super Ljava/lang/Object;
.source "RecordHeader.java"


# static fields
.field private static final O_AVAILABLESIZE:S = 0x4s

.field private static final O_CURRENTSIZE:S = 0x0s

.field static final SIZE:I = 0x8


# instance fields
.field private block:Ljdbm/recman/BlockIo;

.field private pos:S


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;S)V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ljdbm/recman/RecordHeader;->block:Ljdbm/recman/BlockIo;

    .line 73
    iput-short p2, p0, Ljdbm/recman/RecordHeader;->pos:S

    const/16 v0, 0x1ff8

    if-gt p2, v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Offset too large for record header ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getAvailableSize()I
    .locals 2

    .line 92
    iget-object v0, p0, Ljdbm/recman/RecordHeader;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/RecordHeader;->pos:S

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readInt(I)I

    move-result v0

    return v0
.end method

.method getCurrentSize()I
    .locals 2

    .line 82
    iget-object v0, p0, Ljdbm/recman/RecordHeader;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/RecordHeader;->pos:S

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readInt(I)I

    move-result v0

    return v0
.end method

.method setAvailableSize(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Ljdbm/recman/RecordHeader;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/RecordHeader;->pos:S

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljdbm/recman/BlockIo;->writeInt(II)V

    return-void
.end method

.method setCurrentSize(I)V
    .locals 2

    .line 87
    iget-object v0, p0, Ljdbm/recman/RecordHeader;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/RecordHeader;->pos:S

    invoke-virtual {v0, v1, p1}, Ljdbm/recman/BlockIo;->writeInt(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RH("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljdbm/recman/RecordHeader;->block:Ljdbm/recman/BlockIo;

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Ljdbm/recman/RecordHeader;->pos:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", avl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljdbm/recman/RecordHeader;->getCurrentSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
