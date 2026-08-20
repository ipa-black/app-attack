.class Lorg/apache/commons/collections/IteratorUtils$EmptyOrderedIterator;
.super Lorg/apache/commons/collections/IteratorUtils$EmptyIterator;
.source "IteratorUtils.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/IteratorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyOrderedIterator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 894
    invoke-direct {p0}, Lorg/apache/commons/collections/IteratorUtils$EmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPrevious()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 902
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
