.class public Lorg/apache/asn1/ber/DefaultMutableTupleNode;
.super Ljava/lang/Object;
.source "DefaultMutableTupleNode.java"

# interfaces
.implements Lorg/apache/asn1/ber/MutableTupleNode;


# instance fields
.field private children:Ljava/util/ArrayList;

.field private parent:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

.field private tuple:Lorg/apache/asn1/ber/Tuple;

.field private valueChunks:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/Tuple;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    .line 68
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/ber/Tuple;Ljava/util/List;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    .line 82
    iput-object p1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    .line 83
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static equals(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/DefaultMutableTupleNode;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 473
    :cond_1
    invoke-virtual {p0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildCount()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    .line 480
    :goto_0
    invoke-virtual {p0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 482
    invoke-virtual {p0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildTupleNodeAt(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v3

    check-cast v3, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 484
    invoke-virtual {p1, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getChildTupleNodeAt(I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v4

    check-cast v4, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 487
    invoke-static {v3, v4}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->equals(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/DefaultMutableTupleNode;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private getHex(I)Ljava/lang/String;
    .locals 5

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v3, 0x4

    .line 395
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p1, v3, v0

    .line 397
    new-instance p1, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/asn1/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public accept(Lorg/apache/asn1/ber/TupleNodeVisitor;)V
    .locals 3

    .line 505
    invoke-interface {p1, p0}, Lorg/apache/asn1/ber/TupleNodeVisitor;->canVisit(Lorg/apache/asn1/ber/TupleNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    invoke-interface {p1}, Lorg/apache/asn1/ber/TupleNodeVisitor;->isPrefix()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lorg/apache/asn1/ber/TupleNodeVisitor;->getOrder(Lorg/apache/asn1/ber/TupleNode;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 511
    invoke-interface {p1, p0}, Lorg/apache/asn1/ber/TupleNodeVisitor;->canVisit(Lorg/apache/asn1/ber/TupleNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    invoke-interface {p1, p0}, Lorg/apache/asn1/ber/TupleNodeVisitor;->visit(Lorg/apache/asn1/ber/TupleNode;)V

    .line 516
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 518
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/TupleNode;

    invoke-interface {v2, p1}, Lorg/apache/asn1/ber/TupleNode;->accept(Lorg/apache/asn1/ber/TupleNodeVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lorg/apache/asn1/ber/TupleNodeVisitor;->getOrder(Lorg/apache/asn1/ber/TupleNode;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 525
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 527
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/TupleNode;

    invoke-interface {v2, p1}, Lorg/apache/asn1/ber/TupleNode;->accept(Lorg/apache/asn1/ber/TupleNodeVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    :cond_2
    invoke-interface {p1, p0}, Lorg/apache/asn1/ber/TupleNodeVisitor;->canVisit(Lorg/apache/asn1/ber/TupleNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    invoke-interface {p1, p0}, Lorg/apache/asn1/ber/TupleNodeVisitor;->visit(Lorg/apache/asn1/ber/TupleNode;)V

    :cond_3
    return-void
.end method

.method public addFront(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addValueChunk(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public encode(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 317
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/Tuple;->toEncodedBuffer(Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 319
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 325
    :goto_0
    iget-object v3, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 327
    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/TupleNode;

    .line 328
    invoke-interface {v1, p1}, Lorg/apache/asn1/ber/TupleNode;->encode(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 333
    invoke-interface {v1}, Lorg/apache/asn1/ber/TupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Lorg/apache/asn1/ber/Tuple;->isIndefiniteTerminator()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 340
    :cond_2
    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/Tuple;->isIndefinite()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 344
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 442
    instance-of v0, p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    if-eqz v0, :cond_0

    .line 444
    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-static {p0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->equals(Lorg/apache/asn1/ber/DefaultMutableTupleNode;Lorg/apache/asn1/ber/DefaultMutableTupleNode;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChildCount()I
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildTupleNodeAt(I)Lorg/apache/asn1/ber/TupleNode;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/TupleNode;

    return-object p1
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getIndex(Lorg/apache/asn1/ber/TupleNode;)I
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getParentTupleNode()Lorg/apache/asn1/ber/TupleNode;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->parent:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    return-object v0
.end method

.method public getTuple()Lorg/apache/asn1/ber/Tuple;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    return-object v0
.end method

.method public getValueChunks()Ljava/util/List;
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    return-object v0
.end method

.method public insert(Lorg/apache/asn1/ber/MutableTupleNode;I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public printDepthFirst(Ljava/lang/StringBuffer;I)V
    .locals 3

    .line 410
    const-string v0, "\t"

    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 414
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/Tuple;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 418
    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->getRawPrimitiveTag()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x5d

    .line 420
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    .line 421
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    iget v2, v2, Lorg/apache/asn1/ber/Tuple;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 422
    :goto_0
    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    add-int/lit8 v2, p2, 0x1

    .line 425
    invoke-virtual {v1, p1, v2}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->printDepthFirst(Ljava/lang/StringBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public remove(Lorg/apache/asn1/ber/MutableTupleNode;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFromParent()V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->parent:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->remove(Lorg/apache/asn1/ber/MutableTupleNode;)V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->parent:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    return-void
.end method

.method public setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->parent:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->remove(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 166
    :cond_0
    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    iput-object p1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->parent:Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    return-void
.end method

.method public setTuple(Lorg/apache/asn1/ber/Tuple;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    .line 272
    iget-object p1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setTuple(Lorg/apache/asn1/ber/Tuple;Ljava/util/List;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    .line 284
    iget-object p1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 285
    iget-object p1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->valueChunks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public size()I
    .locals 4

    .line 221
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->size()I

    move-result v0

    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->size()I

    move-result v0

    .line 229
    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/Tuple;->isIndefinite()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 232
    :goto_0
    iget-object v3, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 234
    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/TupleNode;

    .line 235
    invoke-interface {v1}, Lorg/apache/asn1/ber/TupleNode;->size()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 240
    invoke-interface {v1}, Lorg/apache/asn1/ber/TupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/asn1/ber/Tuple;->isIndefiniteTerminator()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x2

    :cond_3
    return v0
.end method

.method public toDepthFirstString()Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0, v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->printDepthFirst(Ljava/lang/StringBuffer;I)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    iget-object v1, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/Tuple;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    iget-object v2, v2, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    iget v2, v2, Lorg/apache/asn1/ber/Tuple;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->tuple:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
