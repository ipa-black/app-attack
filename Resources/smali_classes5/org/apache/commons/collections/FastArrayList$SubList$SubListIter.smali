.class Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;
.super Ljava/lang/Object;
.source "FastArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastArrayList$SubList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubListIter"
.end annotation


# instance fields
.field private expected:Ljava/util/List;

.field private iter:Ljava/util/ListIterator;

.field private lastReturnedIndex:I

.field private final synthetic this$1:Lorg/apache/commons/collections/FastArrayList$SubList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V
    .locals 1

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    const/4 v0, -0x1

    .line 1169
    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    .line 1173
    invoke-static {p1}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    .line 1174
    invoke-static {p1, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$100(Lorg/apache/commons/collections/FastArrayList$SubList;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    return-void
.end method

.method private checkMod()V
    .locals 2

    .line 1178
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    if-ne v0, v1, :cond_0

    return-void

    .line 1179
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .line 1242
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1243
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->nextIndex()I

    move-result v0

    .line 1244
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1245
    iget-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {p1}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$208(Lorg/apache/commons/collections/FastArrayList$SubList;)I

    .line 1246
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    .line 1247
    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    return-void
.end method

.method get()Ljava/util/List;
    .locals 2

    .line 1184
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$100(Lorg/apache/commons/collections/FastArrayList$SubList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1188
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1189
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1199
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1200
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1193
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1194
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    .line 1195
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1215
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1216
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 1204
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1205
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    .line 1206
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1210
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1211
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 1220
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1221
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    if-ltz v0, :cond_0

    .line 1224
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1225
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$210(Lorg/apache/commons/collections/FastArrayList$SubList;)I

    .line 1226
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    .line 1227
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->previousIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    const/4 v0, -0x1

    .line 1228
    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    return-void

    .line 1222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 1232
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1233
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    if-ltz v0, :cond_0

    .line 1236
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {p1}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    .line 1238
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->previousIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    return-void

    .line 1234
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
