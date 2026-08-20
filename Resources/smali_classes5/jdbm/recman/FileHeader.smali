.class Ljdbm/recman/FileHeader;
.super Ljava/lang/Object;
.source "FileHeader.java"

# interfaces
.implements Ljdbm/recman/BlockView;


# static fields
.field static final NROOTS:I = 0x3f5

.field private static final O_LISTS:S = 0x2s

.field private static final O_MAGIC:S = 0x0s

.field private static final O_ROOTS:I = 0x52


# instance fields
.field private block:Ljdbm/recman/BlockIo;


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;Z)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Ljdbm/recman/FileHeader;->block:Ljdbm/recman/BlockIo;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x1350

    .line 79
    invoke-virtual {p1, v0, p2}, Ljdbm/recman/BlockIo;->writeShort(IS)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0}, Ljdbm/recman/FileHeader;->magicOk()Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance p2, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "CRITICAL: file header magic not OK "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private magicOk()Z
    .locals 3

    .line 87
    iget-object v0, p0, Ljdbm/recman/FileHeader;->block:Ljdbm/recman/BlockIo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    const/16 v2, 0x1350

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private offsetOfFirst(I)S
    .locals 0

    mul-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    return p1
.end method

.method private offsetOfLast(I)S
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Ljdbm/recman/FileHeader;->offsetOfFirst(I)S

    move-result p1

    add-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    return p1
.end method

.method private offsetOfRoot(I)S
    .locals 0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x52

    int-to-short p1, p1

    return p1
.end method


# virtual methods
.method getFirstOf(I)J
    .locals 2

    .line 110
    iget-object v0, p0, Ljdbm/recman/FileHeader;->block:Ljdbm/recman/BlockIo;

    invoke-direct {p0, p1}, Ljdbm/recman/FileHeader;->offsetOfFirst(I)S

    move-result p1

    invoke-virtual {v0, p1}, Ljdbm/recman/BlockIo;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getLastOf(I)J
    .locals 2

    .line 124
    iget-object v0, p0, Ljdbm/recman/FileHeader;->block:Ljdbm/recman/BlockIo;

    invoke-direct {p0, p1}, Ljdbm/recman/FileHeader;->offsetOfLast(I)S

    move-result p1

    invoke-virtual {v0, p1}, Ljdbm/recman/BlockIo;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getRoot(I)J
    .locals 2

    .line 144
    iget-object v0, p0, Ljdbm/recman/FileHeader;->block:Ljdbm/recman/BlockIo;

    invoke-direct {p0, p1}, Ljdbm/recman/FileHeader;->offsetOfRoot(I)S

    move-result p1

    invoke-virtual {v0, p1}, Ljdbm/recman/BlockIo;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method setFirstOf(IJ)V
    .locals 1

    .line 117
    iget-object v0, p0, Ljdbm/recman/FileHeader;->block:Ljdbm/recman/BlockIo;

    invoke-direct {p0, p1}, Ljdbm/recman/FileHeader;->offsetOfFirst(I)S

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Ljdbm/recman/BlockIo;->writeLong(IJ)V

    return-void
.end method

.method setLastOf(IJ)V
    .locals 1

    .line 131
    iget-object v0, p0, Ljdbm/recman/FileHeader;->block:Ljdbm/recman/BlockIo;

    invoke-direct {p0, p1}, Ljdbm/recman/FileHeader;->offsetOfLast(I)S

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Ljdbm/recman/BlockIo;->writeLong(IJ)V

    return-void
.end method

.method setRoot(IJ)V
    .locals 1

    .line 154
    iget-object v0, p0, Ljdbm/recman/FileHeader;->block:Ljdbm/recman/BlockIo;

    invoke-direct {p0, p1}, Ljdbm/recman/FileHeader;->offsetOfRoot(I)S

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Ljdbm/recman/BlockIo;->writeLong(IJ)V

    return-void
.end method
