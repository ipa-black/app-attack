.class Lorg/apache/regexp/RECompiler$RERange;
.super Ljava/lang/Object;
.source "RECompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/regexp/RECompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RERange"
.end annotation


# instance fields
.field maxRange:[I

.field minRange:[I

.field num:I

.field size:I

.field private final synthetic this$0:Lorg/apache/regexp/RECompiler;


# direct methods
.method constructor <init>(Lorg/apache/regexp/RECompiler;)V
    .locals 1

    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/regexp/RECompiler$RERange;->this$0:Lorg/apache/regexp/RECompiler;

    const/16 p1, 0x10

    .line 1304
    iput p1, p0, Lorg/apache/regexp/RECompiler$RERange;->size:I

    .line 1305
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    .line 1306
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    const/4 p1, 0x0

    .line 1307
    iput p1, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    return-void
.end method


# virtual methods
.method delete(I)V
    .locals 3

    .line 1316
    iget v0, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    if-eqz v0, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 1322
    iget v1, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    if-lt p1, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 1332
    iput v1, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    return-void

    :cond_1
    if-ltz p1, :cond_2

    .line 1326
    iget-object v1, p0, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    aget v2, v1, v0

    aput v2, v1, p1

    .line 1327
    iget-object v1, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v2, v1, v0

    aput v2, v1, p1

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method include(CZ)V
    .locals 0

    .line 1470
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/regexp/RECompiler$RERange;->include(IIZ)V

    return-void
.end method

.method include(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1455
    invoke-virtual {p0, p1, p2}, Lorg/apache/regexp/RECompiler$RERange;->merge(II)V

    goto :goto_0

    .line 1459
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/regexp/RECompiler$RERange;->remove(II)V

    :goto_0
    return-void
.end method

.method merge(II)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1343
    :goto_0
    iget v2, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    if-lt v1, v2, :cond_1

    .line 1379
    iget v1, p0, Lorg/apache/regexp/RECompiler$RERange;->size:I

    if-lt v2, v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 1381
    iput v1, p0, Lorg/apache/regexp/RECompiler$RERange;->size:I

    .line 1382
    new-array v3, v1, [I

    .line 1383
    new-array v1, v1, [I

    .line 1384
    iget-object v4, p0, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    invoke-static {v4, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1385
    iget-object v2, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    iget v4, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    invoke-static {v2, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1386
    iput-object v3, p0, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    .line 1387
    iput-object v1, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    .line 1389
    :cond_0
    iget-object v0, p0, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    iget v1, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    aput p1, v0, v1

    .line 1390
    iget-object p1, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 1391
    iput v1, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    return-void

    .line 1346
    :cond_1
    iget-object v2, p0, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_2

    iget-object v3, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_2

    return-void

    :cond_2
    if-gt p1, v2, :cond_3

    .line 1352
    iget-object v3, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v1

    if-lt p2, v3, :cond_3

    .line 1354
    invoke-virtual {p0, v1}, Lorg/apache/regexp/RECompiler$RERange;->delete(I)V

    .line 1355
    invoke-virtual {p0, p1, p2}, Lorg/apache/regexp/RECompiler$RERange;->merge(II)V

    return-void

    :cond_3
    if-lt p1, v2, :cond_4

    .line 1360
    iget-object v3, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v1

    if-gt p1, v3, :cond_4

    .line 1362
    invoke-virtual {p0, v1}, Lorg/apache/regexp/RECompiler$RERange;->delete(I)V

    .line 1363
    iget-object p1, p0, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    aget p1, p1, v1

    .line 1364
    invoke-virtual {p0, p1, p2}, Lorg/apache/regexp/RECompiler$RERange;->merge(II)V

    return-void

    :cond_4
    if-lt p2, v2, :cond_5

    .line 1369
    iget-object v2, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v2, v2, v1

    if-gt p2, v2, :cond_5

    .line 1371
    invoke-virtual {p0, v1}, Lorg/apache/regexp/RECompiler$RERange;->delete(I)V

    .line 1372
    iget-object p2, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget p2, p2, v1

    .line 1373
    invoke-virtual {p0, p1, p2}, Lorg/apache/regexp/RECompiler$RERange;->merge(II)V

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method remove(II)V
    .locals 4

    const/4 v0, 0x0

    .line 1402
    :goto_0
    iget v1, p0, Lorg/apache/regexp/RECompiler$RERange;->num:I

    if-lt v0, v1, :cond_0

    return-void

    .line 1405
    :cond_0
    iget-object v1, p0, Lorg/apache/regexp/RECompiler$RERange;->minRange:[I

    aget v2, v1, v0

    if-lt v2, p1, :cond_1

    iget-object v3, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v0

    if-gt v3, p2, :cond_1

    .line 1407
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler$RERange;->delete(I)V

    return-void

    :cond_1
    if-lt p1, v2, :cond_4

    .line 1413
    iget-object v3, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v0

    if-gt p2, v3, :cond_4

    .line 1417
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RECompiler$RERange;->delete(I)V

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_2

    .line 1420
    invoke-virtual {p0, v2, p1}, Lorg/apache/regexp/RECompiler$RERange;->merge(II)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v3, :cond_3

    .line 1424
    invoke-virtual {p0, p2, v3}, Lorg/apache/regexp/RECompiler$RERange;->merge(II)V

    :cond_3
    return-void

    :cond_4
    if-lt v2, p1, :cond_5

    if-gt v2, p2, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 1432
    aput p2, v1, v0

    return-void

    .line 1437
    :cond_5
    iget-object v1, p0, Lorg/apache/regexp/RECompiler$RERange;->maxRange:[I

    aget v2, v1, v0

    if-lt v2, p1, :cond_6

    if-gt v2, p2, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 1439
    aput p1, v1, v0

    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
