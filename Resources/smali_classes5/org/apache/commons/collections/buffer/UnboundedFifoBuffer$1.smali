.class Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;)V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    .line 268
    iget p1, p1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    const/4 p1, -0x1

    .line 269
    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 272
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 281
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-static {v1, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    .line 282
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 5

    .line 286
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 291
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    if-ne v0, v2, :cond_0

    .line 292
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->remove()Ljava/lang/Object;

    .line 293
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    return-void

    .line 298
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 299
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-ne v0, v2, :cond_1

    .line 309
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 310
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 311
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 312
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->index:I

    return-void

    .line 300
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 301
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v3, v3, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    move v0, v4

    goto :goto_1

    .line 304
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v2, v2, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;

    iget-object v4, v4, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    goto :goto_0

    .line 287
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
