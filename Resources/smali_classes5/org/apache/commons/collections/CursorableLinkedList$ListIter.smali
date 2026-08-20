.class Lorg/apache/commons/collections/CursorableLinkedList$ListIter;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListIter"
.end annotation


# instance fields
.field _cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field _expectedModCount:I

.field _lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field _nextIndex:I

.field private final synthetic this$0:Lorg/apache/commons/collections/CursorableLinkedList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V
    .locals 3

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    const/4 v0, 0x0

    .line 1033
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1034
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1035
    iget v1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    const/4 v1, 0x0

    .line 1036
    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    if-nez p2, :cond_0

    .line 1040
    new-instance p2, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object p1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-direct {p2, v0, p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1041
    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_0

    .line 1042
    :cond_0
    iget v1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ne p2, v1, :cond_1

    .line 1043
    new-instance p2, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-direct {p2, v1, v0, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1044
    iget p1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_0

    .line 1046
    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    .line 1047
    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1048
    iput p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4

    .line 1130
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1131
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    const/4 p1, 0x0

    .line 1132
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1133
    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1134
    iget p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    return-void
.end method

.method protected checkForComod()V
    .locals 2

    .line 1138
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1139
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1067
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1068
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 1094
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1095
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1072
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1073
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 1077
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1078
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1079
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1080
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    return-object v0

    .line 1074
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1108
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1109
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    return v0

    .line 1112
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3

    .line 1053
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1054
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 1058
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1059
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1060
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1061
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    return-object v0

    .line 1055
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1086
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1087
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1090
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 4

    .line 1116
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1117
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-eqz v0, :cond_2

    .line 1120
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v2, v2, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1121
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v2, v2, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-ne v1, v2, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1122
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1123
    iput-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1124
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1125
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    return-void

    .line 1118
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 1099
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1101
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1103
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
