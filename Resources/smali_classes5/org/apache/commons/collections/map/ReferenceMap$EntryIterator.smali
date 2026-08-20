.class Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;
.super Ljava/lang/Object;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;

.field currentValue:Ljava/lang/Object;

.field entry:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;

.field nextValue:Ljava/lang/Object;

.field previous:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

.field private final synthetic this$0:Lorg/apache/commons/collections/map/ReferenceMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/ReferenceMap;)V
    .locals 1

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    .line 884
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/ReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/collections/map/ReferenceMap;->access$700(Lorg/apache/commons/collections/map/ReferenceMap;)[Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->index:I

    .line 887
    invoke-static {p1}, Lorg/apache/commons/collections/map/ReferenceMap;->access$800(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->expectedModCount:I

    return-void
.end method

.method private checkMod()V
    .locals 2

    .line 916
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$800(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 917
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private nextNull()Z
    .locals 1

    .line 922
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 891
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->checkMod()V

    .line 892
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 893
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    .line 894
    iget v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->index:I

    :goto_1
    if-nez v0, :cond_3

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 897
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$700(Lorg/apache/commons/collections/map/ReferenceMap;)[Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_1

    .line 899
    :cond_3
    :goto_2
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    .line 900
    iput v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->index:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 902
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 903
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    return v0

    .line 906
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    .line 907
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 908
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 940
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextEntry()Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/map/ReferenceMap$Entry;
    .locals 1

    .line 926
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->checkMod()V

    .line 927
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 930
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    .line 931
    iget-object v0, v0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    .line 932
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 934
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    .line 935
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 936
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 944
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->checkMod()V

    .line 945
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 949
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    .line 950
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 951
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    .line 952
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$800(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->expectedModCount:I

    return-void

    .line 946
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
