.class Lorg/apache/commons/collections/IteratorUtils$EmptyListIterator;
.super Lorg/apache/commons/collections/IteratorUtils$EmptyIterator;
.source "IteratorUtils.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/IteratorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyListIterator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 859
    invoke-direct {p0}, Lorg/apache/commons/collections/IteratorUtils$EmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 879
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() not supported for empty Iterator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasPrevious()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 867
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 883
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator contains no elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
