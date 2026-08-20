.class Lorg/apache/commons/collections/FastArrayList$ListIter;
.super Ljava/lang/Object;
.source "FastArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListIter"
.end annotation


# instance fields
.field private expected:Ljava/util/List;

.field private iter:Ljava/util/ListIterator;

.field private lastReturnedIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/FastArrayList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastArrayList;I)V
    .locals 1

    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->this$0:Lorg/apache/commons/collections/FastArrayList;

    const/4 v0, -0x1

    .line 1261
    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    .line 1265
    iget-object p1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    .line 1266
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    return-void
.end method

.method private checkMod()V
    .locals 2

    .line 1270
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    if-ne v0, v1, :cond_0

    return-void

    .line 1271
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .line 1333
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1334
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->nextIndex()I

    move-result v0

    .line 1335
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1336
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    const/4 p1, -0x1

    .line 1337
    iput p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    return-void
.end method

.method get()Ljava/util/List;
    .locals 1

    .line 1276
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1280
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1281
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1291
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1292
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1285
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1286
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    .line 1287
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1307
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1308
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 1296
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1297
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    .line 1298
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1302
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1303
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 1312
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1313
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    if-ltz v0, :cond_0

    .line 1316
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1317
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    .line 1318
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->previousIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    const/4 v0, -0x1

    .line 1319
    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    return-void

    .line 1314
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 1323
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1324
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    if-ltz v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1328
    iget-object p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object p1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    .line 1329
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->previousIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    return-void

    .line 1325
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
