.class public final Lcom/facebook/ads/redexgen/X/Cf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ce;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/Ce;

.field public A07:Lcom/facebook/ads/redexgen/X/Ce;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:[B

.field public final A0C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/HW;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/HX;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/Bh;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Hd;

.field public final A0G:Z

.field public final A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 26350
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "F0jWKjQTCy62z5RMZ8LXaJxAHVXVw03"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jefijzmMiLSAGWVfBYlCHQnNu7WiK65"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5NKy3uod9nHosUme2DvPYxtYVEy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OBCuuRHFU9olC8zTnYpCIYDmocSOdWsL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GchpYIdYbHeAJ5Ou"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h9yGOulo4c92iX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0WO8HWLEfGPVrZyS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YTVxkuYMC8IrkJuZM8HCcFhUbHlAsN8p"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bh;ZZ)V
    .locals 3

    .line 26351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26352
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0E:Lcom/facebook/ads/redexgen/X/Bh;

    .line 26353
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0G:Z

    .line 26354
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0H:Z

    .line 26355
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0D:Landroid/util/SparseArray;

    .line 26356
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0C:Landroid/util/SparseArray;

    .line 26357
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ce;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ce;-><init>(Lcom/facebook/ads/redexgen/X/Cd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A06:Lcom/facebook/ads/redexgen/X/Ce;

    .line 26358
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ce;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ce;-><init>(Lcom/facebook/ads/redexgen/X/Cd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    .line 26359
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0B:[B

    .line 26360
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0B:[B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hd;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/Hd;-><init>([BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    .line 26361
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cf;->A01()V

    .line 26362
    return-void
.end method

.method private A00(I)V
    .locals 8

    .line 26363
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0A:Z

    .line 26364
    .local v3, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A04:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 26365
    .local v7, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0E:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Cf;->A05:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 26366
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 26367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A08:Z

    .line 26368
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A09:Z

    .line 26369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ce;->A02()V

    .line 26370
    return-void
.end method

.method public final A02(JI)V
    .locals 6

    .line 26371
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0H:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A06:Lcom/facebook/ads/redexgen/X/Ce;

    .line 26372
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ce;->A01(Lcom/facebook/ads/redexgen/X/Ce;Lcom/facebook/ads/redexgen/X/Ce;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26373
    :cond_0
    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Cf;->A09:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const-string v1, "rg9RD6QhDdRr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 26374
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 26375
    .local v0, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Cf;->A00(I)V

    .line 26376
    .end local v0    # "nalUnitLength":I
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A04:J

    .line 26377
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A05:J

    .line 26378
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0A:Z

    .line 26379
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Cf;->A09:Z

    .line 26380
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0A:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0G:Z

    if-eqz v0, :cond_5

    if-ne v1, v4, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    .line 26381
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ce;->A05()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0A:Z

    .line 26382
    return-void
.end method

.method public final A03(JIJ)V
    .locals 3

    .line 26383
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    .line 26384
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Cf;->A03:J

    .line 26385
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:J

    .line 26386
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0G:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0H:Z

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 26387
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A06:Lcom/facebook/ads/redexgen/X/Ce;

    .line 26388
    .local v0, "newSliceHeader":Lcom/facebook/ads/redexgen/X/Ce;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A06:Lcom/facebook/ads/redexgen/X/Ce;

    .line 26389
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    .line 26390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ce;->A02()V

    .line 26391
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    .line 26392
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Cf;->A08:Z

    .line 26393
    .end local v0    # "newSliceHeader":Lcom/facebook/ads/redexgen/X/Ce;
    :cond_2
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/HW;)V
    .locals 2

    .line 26394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0C:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/HW;->A00:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26395
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/HX;)V
    .locals 2

    .line 26396
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0D:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/HX;->A05:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26397
    return-void
.end method

.method public final A06([BII)V
    .locals 22

    .line 26398
    move/from16 v4, p3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A08:Z

    if-nez v1, :cond_0

    .line 26399
    return-void

    .line 26400
    :cond_0
    move/from16 v5, p2

    sub-int/2addr v4, v5

    .line 26401
    .local v2, "readLength":I
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0B:[B

    array-length v3, v8

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    add-int v1, v2, v4

    const/4 v7, 0x2

    if-ge v3, v1, :cond_3

    .line 26402
    add-int/2addr v2, v4

    mul-int/lit8 v6, v2, 0x2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const-string v2, "I85ez55UKF4vR6ktlfwpENhqyCssmG4"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "5okjmZY1XRxLGurOWaApunPnJUdAZAM"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0B:[B

    .line 26403
    :cond_3
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    move-object/from16 v3, p1

    invoke-static {v3, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26404
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    .line 26405
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    const/4 v2, 0x0

    invoke-virtual {v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Hd;->A08([BII)V

    .line 26406
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Hd;->A0B(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 26407
    return-void

    .line 26408
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 26409
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v9

    .line 26410
    .local v3, "nalRefIdc":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 26411
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A09()Z

    move-result v1

    if-nez v1, :cond_5

    .line 26412
    return-void

    .line 26413
    :cond_5
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 26414
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A09()Z

    move-result v1

    if-nez v1, :cond_6

    .line 26415
    return-void

    .line 26416
    :cond_6
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v10

    .line 26417
    .local v4, "sliceType":I
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0H:Z

    if-nez v1, :cond_7

    .line 26418
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/Cf;->A08:Z

    .line 26419
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/Ce;->A03(I)V

    .line 26420
    return-void

    .line 26421
    :cond_7
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A09()Z

    move-result v1

    if-nez v1, :cond_8

    .line 26422
    return-void

    .line 26423
    :cond_8
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v12

    .line 26424
    .local v15, "picParameterSetId":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_9

    .line 26425
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/Cf;->A08:Z

    .line 26426
    return-void

    .line 26427
    :cond_9
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/HW;

    .line 26428
    .local v14, "ppsData":Lcom/facebook/ads/redexgen/X/HW;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0D:Landroid/util/SparseArray;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/HW;->A01:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/HX;

    .line 26429
    .local v13, "spsData":Lcom/facebook/ads/redexgen/X/HX;
    iget-boolean v2, v8, Lcom/facebook/ads/redexgen/X/HX;->A09:Z

    if-eqz v2, :cond_b

    .line 26430
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v2, v7}, Lcom/facebook/ads/redexgen/X/Hd;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 26431
    return-void

    .line 26432
    :cond_a
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x12

    if-eq v3, v2, :cond_1

    sget-object v4, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const-string v3, "BDS58Myee4yHYxTG8mu"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 26433
    :cond_b
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/HX;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 26434
    return-void

    .line 26435
    :cond_c
    const/4 v13, 0x0

    .line 26436
    .local v7, "fieldPicFlag":Z
    const/4 v14, 0x0

    .line 26437
    .local v9, "bottomFieldFlagPresent":Z
    const/4 v15, 0x0

    .line 26438
    .local v10, "bottomFieldFlag":Z
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/HX;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v11

    .line 26439
    .local p2, "frameNum":I
    iget-boolean v3, v8, Lcom/facebook/ads/redexgen/X/HX;->A08:Z

    const/4 v2, 0x1

    if-nez v3, :cond_f

    .line 26440
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0B(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 26441
    return-void

    .line 26442
    :cond_d
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v13

    .line 26443
    if-eqz v13, :cond_10

    .line 26444
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0B(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 26445
    return-void

    .line 26446
    :cond_e
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v15

    .line 26447
    const/4 v14, 0x1

    goto :goto_0

    .line 26448
    :cond_f
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x7

    if-eq v4, v3, :cond_12

    sget-object v5, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const-string v4, "E8pM94a91AlwBow9"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    const-string v4, "HP5p1w370WRNIPZM"

    const/4 v3, 0x4

    aput-object v4, v5, v3

    .line 26449
    .end local v9    # "bottomFieldFlagPresent":Z
    .end local v10    # "bottomFieldFlag":Z
    .local p3, "bottomFieldFlagPresent":Z
    .local p4, "bottomFieldFlag":Z
    :cond_10
    :goto_0
    iget v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    if-ne v3, v6, :cond_11

    const/16 v16, 0x1

    .line 26450
    .local v6, "idrPicFlag":Z
    :goto_1
    const/16 v17, 0x0

    .line 26451
    .local v9, "idrPicId":I
    if-eqz v16, :cond_14

    .line 26452
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hd;->A09()Z

    move-result v3

    if-nez v3, :cond_13

    .line 26453
    return-void

    .line 26454
    :cond_11
    const/16 v16, 0x0

    goto :goto_1

    .line 26455
    :cond_12
    sget-object v5, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const-string v4, "F8tLSSZzAzz"

    const/4 v3, 0x5

    aput-object v4, v5, v3

    goto :goto_0

    .line 26456
    :cond_13
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v17

    .line 26457
    .end local v9    # "idrPicId":I
    .local p5, "idrPicId":I
    :cond_14
    const/16 v18, 0x0

    .line 26458
    .local v9, "picOrderCntLsb":I
    const/16 v19, 0x0

    .line 26459
    .local v10, "deltaPicOrderCntBottom":I
    const/16 v20, 0x0

    .line 26460
    .local v11, "deltaPicOrderCnt0":I
    const/16 v21, 0x0

    .line 26461
    .local v16, "deltaPicOrderCnt1":I
    iget v3, v8, Lcom/facebook/ads/redexgen/X/HX;->A04:I

    if-nez v3, :cond_18

    .line 26462
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/HX;->A03:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 26463
    return-void

    .line 26464
    :cond_15
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/HX;->A03:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v18

    .line 26465
    .end local v9    # "picOrderCntLsb":I
    .local v8, "picOrderCntLsb":I
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/HW;->A02:Z

    if-eqz v1, :cond_1b

    if-nez v13, :cond_1b

    .line 26466
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A09()Z

    move-result v1

    if-nez v1, :cond_16

    .line 26467
    return-void

    .line 26468
    :cond_16
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A03()I

    move-result v19

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x12

    if-eq v2, v1, :cond_17

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cf;->A0I:[Ljava/lang/String;

    const-string v2, "g2bkZ9ezj0cNTkJE1UxkspvpJWxpUaF"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "QpgHFNMopSkcTctyPNXRqEd3z8gySmi"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .end local v10    # "deltaPicOrderCntBottom":I
    .local v9, "deltaPicOrderCntBottom":I
    goto :goto_2

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26469
    .end local v8    # "picOrderCntLsb":I
    .local v9, "picOrderCntLsb":I
    :cond_18
    iget v3, v8, Lcom/facebook/ads/redexgen/X/HX;->A04:I

    if-ne v3, v2, :cond_1b

    iget-boolean v2, v8, Lcom/facebook/ads/redexgen/X/HX;->A07:Z

    if-nez v2, :cond_1b

    .line 26470
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A09()Z

    move-result v2

    if-nez v2, :cond_19

    .line 26471
    return-void

    .line 26472
    :cond_19
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A03()I

    move-result v20

    .line 26473
    .end local v11    # "deltaPicOrderCnt0":I
    .local v8, "deltaPicOrderCnt0":I
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/HW;->A02:Z

    if-eqz v1, :cond_1b

    if-nez v13, :cond_1b

    .line 26474
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A09()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 26475
    return-void

    .line 26476
    :cond_1a
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A03()I

    move-result v21

    .line 26477
    .end local v16    # "deltaPicOrderCnt1":I
    .local v11, "deltaPicOrderCnt1":I
    .end local v9    # "picOrderCntLsb":I
    .end local v10
    .end local v11    # "deltaPicOrderCnt1":I
    .end local v16
    .local v8, "picOrderCntLsb":I
    .local p6, "deltaPicOrderCntBottom":I
    .local p7, "deltaPicOrderCnt0":I
    .local p8, "deltaPicOrderCnt1":I
    :cond_1b
    :goto_2
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Cf;->A07:Lcom/facebook/ads/redexgen/X/Ce;

    .end local v13    # "spsData":Lcom/facebook/ads/redexgen/X/HX;
    .local p9, "spsData":Lcom/facebook/ads/redexgen/X/HX;
    .end local v14    # "ppsData":Lcom/facebook/ads/redexgen/X/HW;
    .local p10, "ppsData":Lcom/facebook/ads/redexgen/X/HW;
    .end local v15    # "picParameterSetId":I
    .local p11, "picParameterSetId":I
    invoke-virtual/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/Ce;->A04(Lcom/facebook/ads/redexgen/X/HX;IIIIZZZZIIIII)V

    .line 26478
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Cf;->A08:Z

    .line 26479
    return-void
.end method

.method public final A07()Z
    .locals 1

    .line 26480
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A0H:Z

    return v0
.end method
